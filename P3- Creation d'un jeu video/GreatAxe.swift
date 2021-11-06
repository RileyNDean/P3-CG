//
//  GreatAxe.swift
//  Projet 3 - Créer un jeu vidéo
//
//  Created by Dhayan Bourguignon on 23/10/2021.
//

import Foundation

class GreatAxe: Weapon { //weapon type
    
    //MARK: Init
    init() {
        let dmg: Int = 15 //Weapon Dammage
        let name = "Great Axe" //Weapon name
        let heal = 0 //Weapon heal
        
        super.init(Dmg: dmg, Name: name, Heal: heal)        
    }
}
