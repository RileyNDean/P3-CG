//
//  HealingStaff.swift
//  Projet 3 - Créer un jeu vidéo
//
//  Created by Dhayan Bourguignon on 23/10/2021.
//

import Foundation

class HealingStaff: Weapon { //weapon type
    
    //MARK: Init
    init() {
        let dmg: Int = 0 //Weapon Dammage
        let name = "HealingStaff" //Weapon name
        let heal = 25 //Weapon heal
        
        super.init(Dmg: dmg, Name: name, Heal: heal)
    }
}
