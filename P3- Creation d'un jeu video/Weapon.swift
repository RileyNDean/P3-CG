//
//  Weapon.swift
//  Projet 3 - Créer un jeu vidéo
//
//  Created by Dhayan Bourguignon on 23/10/2021.
//

import Foundation

class Weapon {
    //MARK: Vars
    var Dmg: Int //Weapon Damage
    var Name: String //Weapon name
    var Heal: Int //Weapon heal
    
    //MARK: Init
    init(Dmg: Int, Name: String, Heal: Int) {
        self.Dmg = Dmg
        self.Name = Name
        self.Heal = Heal
    }
}
