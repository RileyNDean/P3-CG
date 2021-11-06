//
//  Longbow.swift
//  Projet 3 - Créer un jeu vidéo
//
//  Created by Dhayan Bourguignon on 23/10/2021.
//

import Foundation

class Longbow: Weapon { //weapon type
    
    //MARK: Init
    init() {
        let dmg: Int = 16 //Weapon Dammage
        let name = "Longbow" //Weapon name
        let heal = 0 //Weapon heal
        
        super.init(Dmg: dmg, Name: name, Heal: heal)
    }
}
