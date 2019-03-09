//
//  ViewController.swift
//  swift-2048
//
//  Created by Austin Zheng on 6/3/14.
//  Copyright (c) 2014 Austin Zheng. Released under the terms of the MIT license.
//

import UIKit

class ViewController: UIViewController {
                            
  override func viewDidLoad(){
    super.viewDidLoad()
    self.view.backgroundColor = UIColor.black
    
  }

  @IBAction func startGameButtonTapped(_ sender : UIButton) {
    let game = NumberTileGameViewController(dimension: 10, threshold: 2048)
    self.present(game, animated: true, completion: nil)
  }
}

