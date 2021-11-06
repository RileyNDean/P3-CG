//
//  PartyGame.swift
//  Projet 3 - Créer un jeu vidéo
//
//  Created by Dhayan Bourguignon on 23/10/2021.
//

import Foundation

public class PartyGame {
    //MARK: Vars
    private var turn = 2 // Turn count, starts at 2 because will be divided by 2 to have the number of rounds
    private var allyteam: [Character]
    private var enemyteam: [Character]
    private var player = 2 // Which player
    
    //MARK: Init
    init(allyteam: [Character], enemyteam: [Character]) {
        self.allyteam = allyteam
        self.enemyteam = enemyteam
    }
    
    //Start the game
    func start() {
       Startround()
    }
    
    //Start round
    private func Startround() {
        turn += 1 //turn count
        if player == 1 {
            player = 2
        }
        else {
            player = 1
        }
        selectattacker() //start with select the character who attack or heal 
    }
    
    //select charact who attack or heal
    private func selectattacker() {
        print("@@@======= It's player \(player)'s turn ! =======@@@")
        print("@@ Which character do you want to choose ? @@")
        Self.listteam(team: allyteam) //list of player characters whose turn it is
        let attacker = select(in: allyteam) //Character selection
        charactalive(character: attacker) //Check if the character is alive
    }
    
    //what actions can the character do
    private func action(attacker: Character) {
        var aorh = 0 //"Attack or Heal", for the choice loop
        
        if attacker.weapon.Dmg > 0 && attacker.weapon.Heal > 0 { //If the character can Attack & Heal
            print("@@@======== Do you want to attack ⚔️ or heal 🔮 ? =======@@@@")
            repeat {
                if let choice = readLine() {
                    if let loop = Int(choice) {
                        aorh = loop
                    }
                }
            } while aorh != 1 && aorh != 2 //must choose between
            switch aorh {
                    case 1: //attack
                    attack(attacker: attacker)
                    case 2: //heal
                    heal(healer: attacker)
                    default:
                    print("You must choose !")
                    action(attacker: attacker)
            }
        }
        else if attacker.weapon.Dmg > 0 && attacker.weapon.Heal <= 0 { //If the character only can attack
                    attack(attacker: attacker)
        }
        else if attacker.weapon.Heal > 0 && attacker.weapon.Dmg <= 0 { //If the character only can heal
                    heal(healer: attacker)
        }
    }
    
    //Character attack
    private func attack(attacker: Character) {
        print("@@@======= Who do you want to attack ⚔️ ? ========@@@")
        Self.listteam(team: enemyteam) //ennemy list team
        let defender = select(in: enemyteam) //select the character who receive the damage
        if defender.Hp > 0 {
            print("\(defender.name) receive \(attacker.weapon.Dmg) from \(attacker.name)")
            defender.Hp -= attacker.weapon.Dmg //removal of life points according to damage
            print(" \(defender.name) has \(defender.Hp) Life points left 🩸 ")
            checkalldead() //check if all ennemy is dead
        }
        else { //if the character who the player want to attack is already dead
            print("@@@ ⚠️ You can't attack a character who already dead 💀 @@@")
            attack(attacker: attacker)
        }
    }
    
    //Character Heal
    private func heal(healer: Character) {
        Self.listteam(team: allyteam)
        let cared = select(in: allyteam)
        
        print("@@@======= Who do you want to heal 🔮 ? =======@@@")
        if cared.Hp > 0 {
            print("\(cared.name) receive by \(healer.name) : \(healer.weapon.Heal) Life points ❤️‍🔥")
            cared.Hp += healer.weapon.Heal //adding the Heal to the hp points
            print("\(cared.name) has \(cared.Hp) Life points left..")
            changeteam()
            Startround() //new round
        }
        else { //if the character who receive the heal is dead
            print("@@@ ⚠️ You can't heal a character who already dead 💀 @@@")
            heal(healer: healer)
        }
    }
    
    //team list
    static private func listteam(team: [Character]) {
        team.enumerated().forEach { index, character in
            if character.Hp > 0 { //if the character is alive
            print("\(index+1)) \(character.name): \(character.Race) with \(character.Hp) Life points")
            }
            else { //if the character is dead
                print("❌) 💀 \(character.name) is dead 💀")
            }
        }
    }
    
    //Check if the character selected is alive
    private func charactalive(character: Character) {
        if character.Hp <= 0 { //If the character is dead, the player have to choose a another one
            print("⚠️ This character is dead 💀")
            selectattacker()
        }
        else { //If the character is not dead
            let LootChance = Int.random(in: 0..<100) //roll the chance on 100
            if LootChance <= 15 { //15% chance of getting an item
                let chest = Chest(lucky: character)
                character.weapon = chest.weapon
            }
            action(attacker: character) //The character is now doing his action
        }
    }
    
    //character selection
    private func select(in team: [Character]) -> Character {
        var choice = 0
        
        repeat {
            if let charactchoice = readLine() {
                if let loop = Int(charactchoice) {
                    choice = loop
                }
            }
        } while choice != 1 && choice != 2 && choice != 3
        return team[choice-1]
    }
    
    //change of attacking and defending team
    private func changeteam() {
        let currentAllyTeam = self.allyteam
        let currentEnemyTeam = self.enemyteam
        self.enemyteam = currentAllyTeam
        self.allyteam = currentEnemyTeam
    }
    
    //Check if all character is dead
    private func checkalldead() {
        var charactdead = 0
        
        for i in 0..<3 {
            if enemyteam[i].Hp <= 0 { //count dead characters
                charactdead += 1
            }
        }
        if charactdead == 3 { //If all character is dead end the game
            endgame()
        }
        else { //new round if there are any living characters
            changeteam()
            Startround()
        }
    }
    
    //End game
    private func endgame() {
        print("@@@======== ⭐️ Congratulation Player \(player) ! ⭐️ =======@@@@") //Player who win
        print("@@@ You won in  \(turn/2) rounds ! @@@") //Number of rounds
        print("@@@======== Summary of your characters : =======@@@")
        for i in 0..<3 {
            let charact = allyteam[i]
            if charact.Hp > 0 {
                print("\(charact.name): \(charact.Race) who was fighting with \(charact.weapon.Name) and has \(charact.Hp) Life points left")
            }
            else {
                print("💀 \(charact.name): \(charact.Race) who was fighting with \(charact.weapon.Name) who sacrificed himself for his team ! 💀")
            }
        }
        print("@@@======== Summary of loosing team characters : =======@@@")
        for i in 0..<3 {
            let charact = enemyteam[i]
            print("💀 \(charact.name):  \(charact.Race) who was fighting with \(charact.weapon.Name) 💀")
        }
    }
} //End PartyGame Class
