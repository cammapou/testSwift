//
//  ViewController.swift
//  testTuto
//
//  Created by Camille on 09/08/2019.
//  Copyright © 2019 Camille. All rights reserved.
//

import UIKit

// Fonction permettant de demander à l'utilisateur d'entrer un nombre entier
func input() -> Int {
    if let strData = readLine() {
        return Int(strData)!
    } else {
        return 0
    }
    
        //return Int(strData!)!
        
}

// Variables qui serviront à déterminer les choix des deux joueurs
var choixUtilisateur1: Int
var choixUtilisateur2: Int

// On demande quel type de personnage les joueurs veulent être
repeat {
    print("Classe du personnage 1 :")
    print("1. Archer")
    print("2. Guerrier")
    print("3. Mage")
    choixUtilisateur1 = input()
} while choixUtilisateur1 != 1 && choixUtilisateur1 != 2 && choixUtilisateur1 != 3

print()

repeat {
    print("Classe du personnage 2 :")
    print("1. Archer")
    print("2. Guerrier")
    print("3. Mage")
    choixUtilisateur2 = input()
} while choixUtilisateur2 != 1 && choixUtilisateur2 != 2 && choixUtilisateur2 != 3

// Grâce à l'énumération Classe, on va pouvoir préciser la classe des personnages des joueurs
var classe1: Classe!
switch choixUtilisateur1 {
case 1:
    classe1 = .Archer
case 2:
    classe1 = .Guerrier
case 3:
    classe1 = .Mage
default:
    break
}

var classe2: Classe!
switch choixUtilisateur2 {
case 1:
    classe2 = .Archer
case 2:
    classe2 = .Guerrier
case 3:
    classe2 = .Mage
default:
    break
}

// Création des deux personnages
// Grâce au constructeur, tout est initialisé déjà (vie et arme)
var personnage1 = Personnage(nom: "Personnage 1", classe: classe1)
var personnage2 = Personnage(nom: "Personnage 2", classe: classe2)

// On joue tant que les deux personnages sont en vie
while personnage1.vie > 0 && personnage2.vie > 0 {
    personnage1.jouer(contre: personnage2)
    
    // Cette condition permet de ne pas faire jouer le deuxième personnage s'il est mort
    if personnage2.vie > 0 {
        personnage2.jouer(contre: personnage1)
    }
}

// On trouve le vainqueur
var nomVainqueur: String

if personnage1.vie > 0 {
    nomVainqueur = personnage1.nom
} else {
    nomVainqueur = personnage2.nom
}

// On l'affiche !
print("Le vainqueur est " + nomVainqueur + " !")
