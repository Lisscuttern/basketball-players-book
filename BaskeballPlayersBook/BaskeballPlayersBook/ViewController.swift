//
//  ViewController.swift
//  BaskeballPlayersBook
//
//  Created by Ozan İncedayı on 25.01.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var tableView: UITableView!
    
    var playerArray = [Player] ()
    
    var chosenPlayer : Player?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let doncic = Player(name: "Luka Doncic", team: "Dallas Mavericks", image: UIImage(named: "LukaDoncic")!)
        let curry = Player(name: "Stephen Curry", team: "Golden State", image: UIImage(named: "StephenCurry")!)
        let klay = Player(name: "Klay Thompson", team: "Golden State", image: UIImage(named: "KlayThompson")!)
        let lebron = Player(name: "Lebron James", team: "Lakers", image: UIImage(named: "LebronJames")!)
        let markkanen = Player(name: "Lauri Markkanen", team: "Utah Jazz", image: UIImage(named: "LauriMarkkanen")!)
        
        playerArray.append(doncic)
        playerArray.append(curry)
        playerArray.append(klay)
        playerArray.append(lebron)
        playerArray.append(markkanen)
        
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return playerArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell()
        cell.textLabel?.text = playerArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        chosenPlayer = playerArray[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "toDetailsVC"
        {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedPlayer = chosenPlayer
        }
    }
    
}

