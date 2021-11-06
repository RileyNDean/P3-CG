//
//  PoweroOfArcana.swift
//  Projet 3 - Créer un jeu vidéo
//
//  Created by Dhayan Bourguignon on 23/10/2021.
//

import Foundation

class PowerOfArcana: Weapon { //weapon type
    
    //MARK: Init
    init() {
        let dmg: Int = 24 //Weapon Dammage
        let name = "PowerOfArcana" //Weapon name
        let heal = 20 //Weapon heal
        
        super.init(Dmg: dmg, Name: name, Heal: heal)
    }
    
}
