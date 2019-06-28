//
//  ViewController.swift
//  swift-2048
//

import UIKit


class ViewController: UIViewController {
                            
  override func viewDidLoad(){
    super.viewDidLoad()
    self.view.backgroundColor = UIColor.black
    
    
  }

    @available(iOS 10.0, *)
    @IBAction func startGameButtonTapped(_ sender : UIButton) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    let game = NumberTileGameViewController(dimension: 5, threshold: 2048)
    self.present(game, animated: true, completion: nil)
    self.modalPresentationStyle = .fullScreen
  }
}

