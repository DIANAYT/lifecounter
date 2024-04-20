//
//  ViewController.swift
//  lifecounter
//
//  Created by Diana Tran on 4/19/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var playerOneLifeLabel: UILabel!
    @IBOutlet weak var playerTwoLifeLabel: UILabel!
    @IBOutlet weak var gameStatusLabel: UILabel!
    
    var playerOneLife = 20
    var playerTwoLife = 20

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateLife()
    }

    func updateLife() {
        playerOneLifeLabel.text = "\(playerOneLife)"
        playerTwoLifeLabel.text = "\(playerTwoLife)"
    }
    
    func checkGame() {
        if playerOneLife <= 0 {
            gameStatusLabel.text = "Player 1 LOSES!"
        } else if playerTwoLife <= 0 {
            gameStatusLabel.text = "Player 2 LOSES!"
        }
    }
    
    @IBAction func playerOneButtonAction(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            playerOneLife += 1
        case 2:
            playerOneLife -= 1
        case 3:
            playerOneLife += 5
        case 4:
            playerOneLife -= 5
        default:
            break
        }
        updateLife()
        checkGame()
    }
    
    @IBAction func playerTwoButtonAction(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            playerTwoLife += 1
        case 2:
            playerTwoLife -= 1
        case 3:
            playerTwoLife += 5
        case 4:
            playerTwoLife -= 5
        default:
            break
        }
        updateLife()
        checkGame()
    }
}

