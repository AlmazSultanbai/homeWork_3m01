//
//  ViewController.swift
//  homeWork_3m01
//
//  Created by Sultanbai Almaz on 23/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var titleImage01: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var messageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageButton.tintColor = .white
        titleLabel.textColor = .black
        titleLabel.numberOfLines = 0
        titleLabel.lineBreakMode = .byWordWrapping
        titleLabel.sizeToFit()
        messageButton.setTitle("Register", for: .normal)
    }
    
  
    @IBAction func goToNextPage(_ sender: UIButton) {
        navigationController?.pushViewController(SecondPageGo(), animated: true)
    }
}
   

