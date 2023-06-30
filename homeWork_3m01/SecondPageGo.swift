//
//  SecondPageGo.swift
//  homeWork_3m01
//
//  Created by Sultanbai Almaz on 26/6/23.
//

import UIKit
import SnapKit

class SecondPageGo: UIViewController {
    
    private lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Welcome"
        view.textColor = .black
        view.font = .systemFont(ofSize: 30)
        
        
        return view
        
    }()
    
    private lazy var someImage: UIImageView = {
        
        let view = UIImageView()
        view.image = UIImage(named: "image1")
        
        return view
    }()
    
    private lazy var someImage1: UIImageView = {
        
        let view = UIImageView()
        view.image = UIImage(named: "image1")
        
        return view
    }()
    private lazy var someImage2: UIImageView = {
        
        let view = UIImageView()
        view.image = UIImage(named: "image1")
        
        return view
    }()
    
    private lazy var nextButton: UIButton = {
        
        let view = UIButton(type: .system)
        view.setTitle("next", for: .normal)
        view.tintColor = .white
        view.backgroundColor = .systemBlue
        
        view.layer.cornerRadius = 15
        view.addTarget(self, action: #selector(nextBtnAction(sender: )), for: .touchUpInside)
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        setupUI()
    }
    private func setupUI() {
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(50)
            make.centerX.equalToSuperview()                           }
        
        view.addSubview(someImage)
        someImage.snp.makeConstraints{ make in
            make.top.equalTo(titleLabel.snp.bottom).offset(150)
            make.leading.equalToSuperview().offset(20)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
        
        view.addSubview(someImage1)
        someImage1.snp.makeConstraints{ make in
            make.top.equalTo(titleLabel.snp.bottom).offset(150)
            make.centerX.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
        view.addSubview(someImage2)
        someImage2.snp.makeConstraints{ make in
            make.top.equalTo(titleLabel.snp.bottom).offset(150)
            make.trailing.equalToSuperview().offset(-20)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
        view.addSubview(nextButton)
        nextButton.snp.makeConstraints{make in
            make.bottom.equalToSuperview().offset(-40)
            make.horizontalEdges.equalToSuperview().inset(30)
            make.height.equalTo(50)
            
            make.centerX.equalToSuperview()
            
        }
        
        
        
    }
    @objc func nextBtnAction(sender:UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
