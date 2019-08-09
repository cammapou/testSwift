//
//  class.swift
//  testTuto
//
//  Created by Camille on 07/08/2019.
//  Copyright © 2019 Camille. All rights reserved.
//

import Foundation


class personnage {
    
    var nom: String
  //  let classe: Classe
    //var arme: Arme
    var vie: Int
    
    init(nom: String, ) {//classe: Classe) {
     
        self.nom = nom
        
        switch self.classe {
        case .Archer:
            self.arme = Arc()
            self.vie = 90
        case .Guerrier:
            self.arme = epee()
            self.vie = 100
        case .Mage:
            self.arme = sceptre()
            self.vie = 150
        default:
            <#code#>
        }
        
    }
}

class road {
    var section = [roadSection]()
}

class roadSection {
    
}
