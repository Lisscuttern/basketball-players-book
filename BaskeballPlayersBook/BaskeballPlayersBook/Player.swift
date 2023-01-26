//
//  Player.swift
//  BaskeballPlayersBook
//
//  Created by Ozan İncedayı on 26.01.2023.
//

import UIKit
import Foundation

class Player
{
    var name : String
    var team : String
    var image : UIImage
    
    init(name: String, team: String, image: UIImage)
    {
        self.name = name
        self.team = team
        self.image = image
    }
}
