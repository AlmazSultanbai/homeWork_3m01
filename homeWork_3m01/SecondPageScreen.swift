//
//  SecondPageScreen.swift
//  homeWork_3m01
//
//  Created by Sultanbai Almaz on 24/6/23.
//

import UIKit
import SnapKit

class SecondPageScreen: UIViewController {
    
    
    private lazy  var titleLabel: UILabel = {
        let view = UILabel()
        view.textColor = .red
        view.font = .systemFont(ofSize: 30)
        view.text = "Hello World"
        view.backgroundColor = .white
        return view
    }()
    
    
    private lazy  var systemImage: UIImageView = {
        let view = UIImageView()
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
}
