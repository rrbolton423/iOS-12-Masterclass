//
//  StarshipsVC.swift
//  StarTrivia
//
//  Created by Romell Bolton on 10/7/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

import UIKit

class StarshipsVC: UIViewController, PersonProtocol {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var modelLbl: UILabel!
    @IBOutlet weak var classLbl: UILabel!
    @IBOutlet weak var makerLbl: UILabel!
    @IBOutlet weak var hyperdrive: UILabel!
    @IBOutlet weak var costLbl: UILabel!
    @IBOutlet weak var lengthLbl: UILabel!
    @IBOutlet weak var speedLbl: UILabel!
    @IBOutlet weak var crewLbl: UILabel!
    @IBOutlet weak var pxLbl: UILabel!
    @IBOutlet weak var previousBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var person: Person!
    let api = StarshipApi()
    var starships = [String]()
    var currentStarship = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        starships = person.starshipUrls
        nextBtn.isEnabled = starships.count > 1
        previousBtn.isEnabled = false
        guard let firstStarship = starships.first else { return }
        getStarship(url: firstStarship)
    }
    
    func getStarship(url: String) {
        api.getStarship(url: url) { (starship) in
            if let starship = starship {
                self.setupView(starship: starship)
            }
        }
    }
    
    func setupView(starship: Starship) {
        nameLbl.text = starship.name
        modelLbl.text = starship.model
        classLbl.text = starship.starShipClass
        makerLbl.text = starship.manufacturer
        hyperdrive.text = starship.hyperdrive
        costLbl.text = starship.cost
        lengthLbl.text = starship.length
        speedLbl.text = starship.speed
        crewLbl.text = starship.crew
        pxLbl.text = starship.passengers
    }
    
    @IBAction func previousClicked(_ sender: Any) {
        currentStarship -= 1
        setButtonState()
    }
    
    @IBAction func nextClicked(_ sender: Any) {
        currentStarship += 1
        setButtonState()
    }
    
    func setButtonState() {
        
        nextBtn.isEnabled = currentStarship == starships.count - 1 ? false : true
        previousBtn.isEnabled = currentStarship == 0 ? false : true
        
        //        if currentVehicle == 0 {
        //            previousBtn.isEnabled = false
        //        } else {
        //            previousBtn.isEnabled = true
        //        }
        //
        //        if currentVehicle == vehicles.count - 1 {
        //            nextBtn.isEnabled = false
        //        } else {
        //            nextBtn.isEnabled = true
        //        }
        
        getStarship(url: starships[currentStarship])
    }
}
