//
//  File.swift
//  Projet 3 - Creฬer un jeu videฬo
//
//  Created by Dhayan Bourguignon on 23/10/2021.
//

import Foundation

public class Game {
    //MARK: Vars
    private var Team1 = [Character]() //Player 1 Team
    private var Team2 = [Character]() //Player 2 Team
     
    //MARK: Methodes
    //Function for the main menu
    public func menu() {
       var choice = 0
       print("๐ฎ โโโโโโโโWelcomeโโโโโโ โ๏ธ ")
       print("        โ๏ธ 1) Start         ")
       print("        โ๏ธ 2) Rules         ")
       print("        โ๏ธ 3) Exit          ")
       print("โ๏ธ โโโโโโโโโโโโโโโโโโโโโ ๐ฎ ")
       
       repeat {
           if let menu = readLine(),
                let loop = Int(menu) {
               choice = loop
           }
       }
       while choice != 1 && choice != 2 && choice != 3
       
        switch choice {
            case 1: //Choice for start the new game
            print("@@@===================================================@@@")
            print("@@@======= โ๏ธ Creation Of the Number 1 Team ๐ก =======@@@")
            Team1 = TeamBuilding.createTeam() //Create Player 1 Team
            print("@@@===================================================@@@")
            print("@@@======= ๐ฎ Creation Of the Number 2 Team ๐น =======@@@")
            Team2 = TeamBuilding.createTeam() //Create Player 2 Team
            print("@@@@@@ The teams compositions are as follows: @@@@@")
            print("@@@======= โ๏ธ Team Number 1 ๐ก: =======@@@")
            for i in 0..<3 { //Listing Player 1 Team
                let presentation = Team1[i]
                print("~ \(i+1)) \(presentation.name) : \(presentation.Race) with \(presentation.Hp) Life points ")
            }
            print("@@@====== ๐ฎ Team Number 2 ๐น: =======@@@@")
            for i in 0..<3 { //Listing Player 2 Team
                let presentation = Team2[i]
                print("~ \(i+1)) \(presentation.name) : \(presentation.Race) with \(presentation.Hp) Life points ")
            }
            print("@@@@@  The game can begin ! @@@@@")
            print("@@@===========================@@@")
           let newParty = PartyGame(allyteam: Team1, enemyteam: Team2)
           newParty.start()
            case 2: //Choice for go to the rules menu
            Rules.menu()
            case 3: //Choice who break the code for leave
            break
            default:
            print("You have to make a choice.")
        }
       
   }
}//End Game class
