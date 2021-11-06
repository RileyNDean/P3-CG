//
//  Vampiric.swift
//  Projet 3 - Créer un jeu vidéo
//
//  Created by Dhayan Bourguignon on 23/10/2021.
//

import Foundation

class Vampiric: Weapon { //weapon type
    
    //MARK: Init
    init() {
        let dmg: Int = 0 //Weapon Dammage
        let name = "Vampiric" //Weapon name
        let heal = 30 //Weapon heal
        
        super.init(Dmg: dmg, Name: name, Heal: heal)
    }
}
