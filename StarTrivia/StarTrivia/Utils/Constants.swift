//
//  Constants.swift
//  StarTrivia
//
//  Created by Romell Bolton on 9/30/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

import UIKit

let BLACK_BG = UIColor.black.withAlphaComponent(0.6).cgColor

let URL_BASE = "https://swapi.co/api/"
let PERSON_URL = URL_BASE + "people/"

typealias PersonResponseCompletion = (Person?) -> Void
typealias HomeworldResponseCompletion = (Homeworld?) -> Void
typealias VehicleResponseCompletion = (Vehicle?) -> Void
typealias StarshipResponseCompletion = (Starship?) -> Void



