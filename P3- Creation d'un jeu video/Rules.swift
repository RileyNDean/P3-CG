//
//  GameRules.swift
//  Projet 3 - CreΜer un jeu videΜo
//
//  Created by Dhayan Bourguignon on 23/10/2021.
//

import Foundation

class Rules { //Game rules
    
    //MARK: Methode
    public static func menu() { //Rules Menu
        var choice = 0
        print("π βββ what do you want to know ? βββ π")
        print("         1) Games Rules  π²")
        print("         2) Weapon       π‘")
        print("         3) Characters   π§")
        print("         4) Leave        π«")
        print("π ββββββββββββββββββββββββββββββββββ π")
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
                print("~ββββββββββββββββββββββ Characters of the game : ββββββββββββββββββββ~")
                print("~              βοΈ Weapon for Orc πΉ & Paladin π€΄π½                    ~")
                print("~        - GreatAxe     - Longsword       - Grace Of Trindelia       ~")
                print("~          Damages: 15    Damages: 10       Damages: 30              ~")
                print("~              πΉ Weapon for Halflin π§πΎ & Goblin πΊ                 ~")
                print("~        - Crossbow     - Longbow         - Vault Bow                ~")
                print("~          Damages: 17    Damages: 16       Damages: 25              ~")
                print("~              π? Weapon for Vampire π§πΌββοΈ & Drow π§πΏ                   ~")
                print("~       - HealingStaff     - Vampiric    - Power Of Arcana           ~")
                print("~         Heal: 25           Heal: 30      Heal: 25 & Damages: 24    ~")
                print("~ββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββ~")
                Self.menu()
                case 3:
                print("~βββββββββββββββββ Characters of the game : βββββββββββββββββββββββββ~")
                print("~             Orc πΉ :                   Paladin π€΄π½ :                ~")
                print("~             Weapon : GreatAxe          Weapon     : Longsword      ~")
                print("~             Life   : 15                Life       : 10             ~")
                print("~             Halflin π§πΎ :               Goblin πΊ  :                ~")
                print("~             Weapon : Crossbow          Weapon     : Longbow        ~")
                print("~             Life   : 20                Life       : 22             ~")
                print("~             Vampire π§πΌββοΈ :               Drow π§πΏ :                   ~")
                print("~             Weapon : Vampiric          Weapon     : HealingStaff   ~")
                print("~             Life   : 20                Life       : 17             ~")
                print("~ββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββββ~")
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
