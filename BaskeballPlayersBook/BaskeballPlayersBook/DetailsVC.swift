//
//  DetailsVC.swift
//  BaskeballPlayersBook
//
//  Created by Ozan İncedayı on 25.01.2023.
//

import UIKit

class DetailsVC: UIViewController
{
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var teamLabel: UILabel!
    
    var selectedPlayer : Player?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        nameLabel.text = selectedPlayer?.name
        teamLabel.text = selectedPlayer?.team
        imageView.image = selectedPlayer?.image
        
    }
    

}
