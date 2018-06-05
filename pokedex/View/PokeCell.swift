//
//  PokeCell.swift
//  pokedex
//
//  Created by Munji on 5/31/18.
//  Copyright © 2018 Munji. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    // fixing the edgey corners to less edgy corners
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    
    func configureCell(pokemon:Pokemon) {
        self.pokemon = pokemon
        nameLbl.text = self.pokemon.name.capitalized
        thumbImg.image = UIImage(named:"\(self.pokemon.pokedexID)")
        
    }
    
}
