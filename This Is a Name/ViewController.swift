//
//  ViewController.swift
//  This Is a Name
//
//  Created by user on 9/14/17.
//  Copyright © 2017 Martinia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Player1Char: UIImageView!
    @IBOutlet weak var Player1ScoreLabel: UILabel!
    var player1Score = 0;
    //jsaldfjal;sdjf
    
    @IBOutlet weak var Player2Char: UIImageView!
    @IBOutlet weak var Player2ScoreLabel: UILabel!
    var player2Score = 0;
    
    var characters:[String] = ["Bear","Hunter","Queen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }
    
    
    func player1Win(){
        player1Score += 1
        Player1ScoreLabel.text = String(player1Score)
    }
    
    func player2Win(){
        player2Score += 1
        Player2ScoreLabel.text = String(player2Score)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        //hi
    }
    
    @IBAction func switchCharaters(_ sender: Any) {
        let player1:Int = Int(arc4random_uniform(3))
        print(player1)
        Player1Char.image=UIImage(named: characters[player1])
       
        let player2:Int = Int(arc4random_uniform(3))
        Player2Char.image = UIImage(named: characters[player2])
        
        if((player2 == 2 && player1 == 0)){
            player1Win()
        }else if(player2 == 0 && player1 == 2){
            player2Win()
        }else if(player2 > player1){
            player2Win()
        }else if(player1 == player2){
        }else{
            player1Win()
        }
    }
}
