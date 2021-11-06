//
//  Character.swift
//  Projet 3 - Créer un jeu vidéo
//
//  Created by Dhayan Bourguignon on 23/10/2021.
//

import Foundation

public class Character {
    //MARK: Vars
    var Hp: Int //Character Life points
    var Race: String //Character Race
    var weapon: Weapon //Character weapon
    let name: String //Character name
    
    //MARK: Init
    init(Hp: Int, Race: String, weapon: Weapon, name: String) {
        self.Hp = Hp
        self.Race = Race
        self.weapon = weapon
        self.name = name
    }  
}
