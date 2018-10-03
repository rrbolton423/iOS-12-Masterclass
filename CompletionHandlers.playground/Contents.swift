import UIKit

struct Person {
    let name: String
}

typealias JonnyString = String

var name: JonnyString = "JonnyB"

typealias PersonResponseCompletion = (Bool, Person) -> ()

class PersonApi {
    
    func getRandomPerson(url: String, completion: @escaping PersonResponseCompletion) {
        
        // Perform time consuming network request.
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            print("network request completed")
            completion(true, Person(name: "JonnyB"))
        }
    }
}

class VC {
    
    let personApi = PersonApi()
    
    func randomButtonPressed() {
        
        print("About to start request")
        
        personApi.getRandomPerson(url: "www.swapi.com") { success, person in
            if success == true {
                print(person.name)
            }
        }

        print("Network request has started")
    }
}

let vc = VC()
vc.randomButtonPressed()
