//
//  Pokemon.swift
//  pokedex
//
//  Created by Munji on 5/31/18.
//  Copyright © 2018 Munji. All rights reserved.
// alamoFire helps with network calls

import Foundation
import Alamofire

class Pokemon {
    private var _name: String!
    private var _pokedexID: Int!
    private var _description: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _attack: String!
    private var _nextEvoText: String!
    private var _pokemonURL: String!
    
    var defense: String {
        if _defense == nil {
            _defense = ""
        }
        return _defense
    }
    
    
    var name: String {
        return _name
    }
    var pokedexID: Int {
        return _pokedexID
    }
    init(name: String, pokedexID: Int) {
        self._name = name
        self._pokedexID = pokedexID
        
        self._pokemonURL = " \(URL_BASE)\(URL_POKEMON)\(self.pokedexID)/"
    }
    
    func downloadPokemonDetail(completed: @escaping DownloadComplete) {
        Alamofire.request(_pokemonURL).responseJSON { (response) in
          if  let dict = response.result.value as? Dictionary <String, Any> {
            
                if let weight = dict["weight"] as? String {
                    self._weight = weight
                }
            if let height = dict["height"] as? String {
                self._height = height
            }
            if let attack = dict ["attack"] as? String {
                self._attack = attack
            }
            if let defense = dict ["defense"] as? String {
                self._defense = defense
            }
            print(self._weight)
            print(self._height)
            print(self._attack)
            print(self._defense)
        
         }
            completed()
       }
    }
}
