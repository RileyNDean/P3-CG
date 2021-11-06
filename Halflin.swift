//
//  Halflin.swift
//  Projet 3 - Créer un jeu vidéo
//
//  Created by Dhayan Bourguignon on 23/10/2021.
//

import Foundation

class Halflin: Character { //Character Type
    //MARK: Vars
    let charactname: String
    
    //MARK: Init
    init (name: String) {
        self.charactname = name //Name of the character given by the player
        let race = "Halflin 🧝🏾" //The character's race
        let hp = 20 //Character Hit Point (Life points)
        let weapon = Crossbow.init() //Character Weapon
        
        super.init(Hp:  hp, Race: race, weapon: weapon, name: charactname )
   }
}
