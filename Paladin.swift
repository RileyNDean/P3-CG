//
//  Paladin.swift
//  Projet 3 - Créer un jeu vidéo
//
//  Created by Dhayan Bourguignon on 23/10/2021.
//

import Foundation

class Paladin: Character { //Character Type
    //MARK: Vars
    let charactname: String
    
    //MARK: Init
    init (name: String) {
        self.charactname = name //Name of the character given by the player
        let race = "Paladin 🤴🏽" //The character's race
        let hp = 35 //Character Hit Point (Life points)
        let weapon = Longsword.init() //Character Weapon
        
        super.init(Hp: hp, Race: race, weapon: weapon, name: charactname )
   }
}
