
//
//  Team.swift
//  Projet 3 - Créer un jeu vidéo
//
//  Created by Dhayan Bourguignon on 23/10/2021.
//

import Foundation

 //var team = [player]()

public class TeamBuilding {
    //MARK: Var
    static var existingNames = [""]
    
    //MARK: Methodes
    // return the team who created
    static func createTeam() -> [Character] {
        return createCharacts()
    }
    
    //Check if a name is already taken
    private static func createCharactName() -> String {
        var name = ""
        
        print("@@@======= Choose a name for your Character : =======@@@")
        repeat {
            print(" ⚠️ You can't name two characters mine ⚠️ ")
            if let namechoice: String = readLine() {
                name = namechoice
            }
        } while name == "" || existingNames.contains(name) //Check if the name is in the existing name list
            existingNames.append(name) //add names to existing name list
            return name
    }
    
    //Create one character
    private static func createOneCharact() -> Character? {
        let race: Character
        var choice = 0

        repeat {
            print("@@@======= You must choose between: =======@@@")
            print("⚔️ Fighter : 1) Orc 👹       2) Paladin 🤴🏽 ")
            print("🏹 Ranger  : 3) Halflin 🧝🏾   4) Goblin 👺 ")
            print("🔮 Mage    : 5) Drow 🧙🏿      6) Vampire 🧛🏼‍♀️")
            if let menu = readLine() {
                if let loop = Int(menu) {
                    choice = loop
                }
            }
        } while choice != 1 && choice != 2 && choice != 3 && choice != 4 && choice != 5 && choice != 6
            switch choice{ //Choose the race of the character
                case 1:
                race = Orc(name: TeamBuilding.createCharactName())
                return race
                case 2:
                race = Paladin(name: TeamBuilding.createCharactName())
                return race
                case 3:
                race = Halflin(name: TeamBuilding.createCharactName())
                return race
                case 4:
                race = Goblin(name: TeamBuilding.createCharactName())
                return race
                case 5:
                race = Drow(name: TeamBuilding.createCharactName())
                return race
                case 6:
                race = Vampire(name: TeamBuilding.createCharactName())
                return race
                default:
                return nil
            }
    }

    //creation of team characters
    private static func createCharacts() -> [Character] {
        var playercharact = [Character]()
        
        for _ in 0..<3 {
            let charact = createOneCharact()! //Character creation
            playercharact.append(charact) //adding of newly created character
        }
        return playercharact //return the created team
    }  
}//End TeamBuilding class

