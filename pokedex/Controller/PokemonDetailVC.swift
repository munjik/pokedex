//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by Munji on 6/2/18.
//  Copyright © 2018 Munji. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    var pokemon: Pokemon!
    // IBOutlets for the second view controller known as PokemonDetailVC
    
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var desrcipLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var PokedexID: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var currentEvolvImg: UIImageView!
    @IBOutlet weak var afterEvolvImg: UIImageView!
    @IBOutlet weak var evolveLbl: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = pokemon.name
        
        pokemon.downloadPokemonDetail {
            //whatever we write iwll only be called after the network call is complete
            self.updateUI()
       
        }
     
    }
    func updateUI() {
        defenseLbl.text = pokemon.defense
    
    }
    @IBAction func backBtnPressed(_ sender: UIButton) {
        // will take you back to home view
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
