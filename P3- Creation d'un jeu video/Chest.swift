//
//  Chest.swift
//  Projet 3 - Créer un jeu vidéo
//
//  Created by Dhayan Bourguignon on 23/10/2021.
//

import Foundation

public class Chest{
    //MARK: Var
    let weapon: Weapon
    let lucky: Character
    
    //MARK: Init
    //function to know if the chest appears or not
    init(lucky: Character) { //
        self.lucky = lucky
        weapon = Self.loot(race: lucky.Race)
    }
    
    //MARK: Methode
    //function to know what is the loot
    static private func loot(race: String) -> Weapon {
        let fighter = [GreatAxe.init(), Longsword.init(), GraceOfTrindelia.init()] //table of weapons for fighter
        let ranger = [Crossbow.init(), Longbow.init(), VaultBow.init()] //table of weapons for ranger
        let mage = [HealingStaff.init(), Vampiric.init(), PowerOfArcana.init()] //table of weapons for mage
        
        if race == "Orc 👹" || race == "Paladin 🤴🏽" { //Determine on which table it will be roll
            let loot = Int.random(in: 0...2) //roll over the weapons table to know who weapon is looted
            let weaponloot = fighter[loot] //take the character weapon
            print("☀️☀️☀️======= ✨By the grace of loot !✨ 🌟 You just received \(weaponloot.Name) 🌟 ! =======☀️☀️☀️")
            return weaponloot //if the character don't have the weapon, give him the new weapon
            
        }
        else if race == "Halflin 🧝🏾" || race == "Goblin 👺" {
            let loot = Int.random(in: 0...2)
            let weaponloot = ranger[loot]
            print("☀️☀️☀️======= ✨By the grace of loot !✨ 🌟 You just received \(weaponloot.Name) 🌟 ! =======☀️☀️☀️")
            return weaponloot
        }
        else if race == "Drow 🧙🏿" || race == "Vampire 🧛🏼‍♀️" {
            let loot = Int.random(in: 0...2)
            let weaponloot = mage[loot]
            print("☀️☀️☀️======= ✨By the grace of loot !✨ 🌟 You just received \(weaponloot.Name) 🌟 ! =======☀️☀️☀️")
            return weaponloot
        }
        return loot(race: race)
    }
} //End of Chest class
