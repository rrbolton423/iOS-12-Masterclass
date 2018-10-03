//
//  PersonApi.swift
//  StarTrivia
//
//  Created by Romell Bolton on 10/1/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

import Foundation

class PersonApi {
    
    func getRandomPersonUrlSession(id: Int, completion: @escaping PersonResponseCompletion) {
        
        guard let url = URL(string: "\(PERSON_URL)\(id)") else { return }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard error == nil else {
                debugPrint(error.debugDescription)
                completion(nil)
                return
            }
            
            guard let data = data else { return }
            
            do {
                let jsonAny = try JSONSerialization.jsonObject(with: data, options: [])
                guard let json = jsonAny as? [String:Any] else { return }
                let person = self.parsePersonManual(json: json)
                DispatchQueue.main.async {
                    completion(person)
                }
            } catch {
                debugPrint(error.localizedDescription)
                return
            }
        }
        task.resume()
    }
    
    private func parsePersonManual(json: [String: Any]) -> Person {
        let name = json["name"] as? String ?? ""
        let height = json["height"] as? String ?? ""
        let mass = json["mass"] as? String ?? ""
        let hair = json["hair_color"] as? String ?? ""
        let birthYear = json["birth_year"] as? String ?? ""
        let gender = json["gender"] as? String ?? ""
        let homeworldUrl = json["homeworld"] as? String ?? ""
        let filmUrls = json["films"] as? [String] ?? [String]()
        let vehicleUrls = json["vehicles"] as? [String] ?? [String]()
        let starshipUrls = json["starships"] as? [String] ?? [String]()
        
        return Person(name: name, height: height, mass: mass, hair: hair, birthYear: birthYear, gender: gender, homeworldUrl: homeworldUrl, filmUrls: filmUrls, vehicleUrls: vehicleUrls, starshipUrls: starshipUrls)
    }
}
