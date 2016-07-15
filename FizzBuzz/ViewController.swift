//
//  ViewController.swift
//  FizzBuzz
//
//  Created by William L. Marr III on 7/13/16.
//  Copyright © 2016 William L. Marr III. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game: Game?
    var gameScore: Int? {
        didSet {
            guard let score = gameScore else {
                print("ViewController.gameScore is nil!")
                return
            }
            
            numberButton.setTitle("\(score)", forState: .Normal)
        }
    }

    @IBOutlet weak var numberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        game = Game()
        
        guard let unwrappedGame = game else {
            print("In viewDidLoad(), ViewController.game is nil!")
            return
        }
        
        gameScore = unwrappedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(move: String) {
        guard let unwrappedGame = game else {
            print("In play(move:), ViewController.game is nil!")
            return
        }
        
        let result = unwrappedGame.play(move)
        gameScore = result.score
    }

    @IBAction func numberButtonTapped(sender: UIButton) {
        guard let score = gameScore else {
            print("In numberButtonTapped(sender:), ViewController.gameScore is nil!")
            return
        }

        play("\(score + 1)")
    }
}

