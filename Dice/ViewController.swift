//
//  ViewController.swift
//  Dice
//
//  Created by Ian Cervone on 9/3/19.
//  Copyright © 2019 Ian Cervone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let diceArr = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
  
  var randomDiceOne: Int = 0
  var randomDiceTwo: Int = 0
  
  
  @IBOutlet weak var diceOne: UIImageView!
  @IBOutlet weak var diceTwo: UIImageView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    updateDiceImage()
    
//    let square = UIView(frame: CGRect(x: self.view.frame.width / 2, y: self.view.frame.height / 2, width: 100, height: 100))
//    square.backgroundColor = UIColor.red
//    self.view.addSubview(square)
  }

  @IBAction func rollDiceButton(_ sender: UIButton) {
    updateDiceImage()
  }
  
  override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
    updateDiceImage()
  }
  
  func updateDiceImage() {
    randomDiceOne = Int.random(in: 0...5)
    randomDiceTwo = Int.random(in: 0...5)
    
    diceOne.image = UIImage(named: diceArr[randomDiceOne])
    diceTwo.image = UIImage(named: diceArr[randomDiceTwo])
  }
  
  
}

