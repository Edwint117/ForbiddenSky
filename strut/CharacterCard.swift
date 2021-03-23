//
//  CharacterCard.swift
//  strut
//
//  Created by Edwin T on 3/23/21.
//

import Foundation

struct CharacterCard {
    var hearts: Int
    var rope: Int
    var playercharacter: PlayerCharacter
    
  
    
    mutating func modStat(stat: Stat) -> String {
        switch stat {
        case .addRope:
            rope += 1
            return "added a rope"
        case .removeRope:
            rope -= 1
            if rope <= 0 {
                print("The wind took you away like a kite ")
            } else {
                print("You're lucky boy ")
            }
            return "removed a rope"
        case .addHeart:
            hearts += 1
            return "added a heart"
        case .removeHeart:
            hearts -= 1
            if hearts <= 0 {
                print("You are dead")
            } else { print("You are still alive ")
        }
            return "removed a heart"
        }
    }
    
    enum Stat {
        case addHeart, removeHeart, removeRope, addRope
    }
    
    
    
    init(character: PlayerCharacter) {
        self.playercharacter = character
        switch character {
        case .electrican:
            self.hearts = 6
            self.rope = 4
        case .medic:
            self.hearts = 4
            self.rope = 5
        case .surveryor:
            self.hearts = 5
            self.rope = 5
        case .knotSmith:
            self.hearts = 5
            self.rope = 4
        case .navigator:
            self.hearts = 4
            self.rope = 4
        case .climber:
            self.hearts = 4
            self.rope = 6
        }
    }
    
    enum PlayerCharacter {
        case electrican, medic, knotSmith, navigator, climber, surveryor
        
    }
   
}
