//
//  Contants.swift
//  pokedex
//
//  Created by Munji on 6/4/18.
//  Copyright © 2018 Munji. All rights reserved.
//

import Foundation

let URL_BASE =  "https://pokeapi.co"
let URL_POKEMON = "/api/v1/pokemon/"

typealias DownloadComplete = () -> () // creating closure, run at a specific time and will pass that closure to our downloadpokemon detail funciton
