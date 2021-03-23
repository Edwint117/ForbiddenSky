//
//  ViewController.swift
//  strut
//
//  Created by Edwin T on 3/23/21.
//

import UIKit

class ViewController: UIViewController {

    var myCharacter = CharacterCard(character: .knotSmith)
    var otherCharacter = CharacterCard(character: .medic)
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        print(myCharacter.modStat(stat: .removeHeart))
        print(myCharacter.modStat(stat: .removeHeart))
        print(myCharacter.modStat(stat: .removeHeart))
        print(myCharacter.modStat(stat: .removeHeart))
        print(myCharacter.modStat(stat: .removeHeart))
        myCharacter.modStat(stat: .removeRope)
        print(myCharacter.hearts)
        print(myCharacter.rope)
       
    }


}

