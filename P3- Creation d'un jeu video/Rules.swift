//
//  GameRules.swift
//  Projet 3 - Créer un jeu vidéo
//
//  Created by Dhayan Bourguignon on 23/10/2021.
//

import Foundation

class Rules { //Game rules
    
    //MARK: Methode
    public static func menu() { //Rules Menu
        var choice = 0
        print("📜 ——— what do you want to know ? ——— 📜")
        print("         1) Games Rules  🎲")
        print("         2) Weapon       🗡")
        print("         3) Characters   🧞")
        print("         4) Leave        🚫")
        print("📜 –––––––––––––––––––––––––––––––––— 📜")
        repeat {
            if let menu = readLine() {
                if let boucle = Int(menu) {
                    choice = boucle
                }
            }
        } while choice != 1 && choice != 2 && choice != 3 && choice != 4
            switch choice {
                case 1:
                print("@@@=========================== The game's rules : ====================================@@@")
                print("~ It is a 1 against 1, each player will have to choose 3 characters to compose his team ~")
                print("~as well as to name them (each of them must have a unique name in the team!).           ~")
                print("~ Following this, the game will start.                                                  ~")
                print("~ It is turn by turn, Player 1 chooses the character who attacks OR who heals           ~")
                print("~then selects the character targeted by the attack or the heal.                         ~")
                print("~ If at the end of the turn all the enemies have their life points at 0,                ~")
                print("~the player who still has living characters wins the game!                              ~")
                print("~ From time to time a chest may appear, and inside you may come across a new weapon!    ~")
                Self.menu()
                case 2:
                print("~—————————————————————— Characters of the game : ————————————————————~")
                print("~              ⚔️ Weapon for Orc 👹 & Paladin 🤴🏽                    ~")
                print("~        - GreatAxe     - Longsword       - Grace Of Trindelia       ~")
                print("~          Damages: 15    Damages: 10       Damages: 30              ~")
                print("~              🏹 Weapon for Halflin 🧝🏾 & Goblin 👺                 ~")
                print("~        - Crossbow     - Longbow         - Vault Bow                ~")
                print("~          Damages: 17    Damages: 16       Damages: 25              ~")
                print("~              🔮 Weapon for Vampire 🧛🏼‍♀️ & Drow 🧙🏿                   ~")
                print("~       - HealingStaff     - Vampiric    - Power Of Arcana           ~")
                print("~         Heal: 25           Heal: 30      Heal: 25 & Damages: 24    ~")
                print("~————————————————————————————————————————————————————————————————————~")
                Self.menu()
                case 3:
                print("~————————————————— Characters of the game : —————————————————————————~")
                print("~             Orc 👹 :                   Paladin 🤴🏽 :                ~")
                print("~             Weapon : GreatAxe          Weapon     : Longsword      ~")
                print("~             Life   : 15                Life       : 10             ~")
                print("~             Halflin 🧝🏾 :               Goblin 👺  :                ~")
                print("~             Weapon : Crossbow          Weapon     : Longbow        ~")
                print("~             Life   : 20                Life       : 22             ~")
                print("~             Vampire 🧛🏼‍♀️ :               Drow 🧙🏿 :                   ~")
                print("~             Weapon : Vampiric          Weapon     : HealingStaff   ~")
                print("~             Life   : 20                Life       : 17             ~")
                print("~————————————————————————————————————————————————————————————————————~")
                Self.menu()
                case 4:
                let game = Game()
                game.menu() //return to the main menu
                default:
                print("You have to make a choice.")
                Self.menu() //loop
            }
    }
} //End class Rules
