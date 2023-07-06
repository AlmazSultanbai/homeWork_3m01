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
        view.text = "You are registered now!"
        view.textColor = .black
        view.font = .systemFont(ofSize: 30)
        
        
        return view
        
    }()
    
    private lazy var someImage: UIImageView = {
        
        let view = UIImageView()
        view.image = UIImage(named: "driver2")
        
        return view
    }()
    
   
    private lazy var nextButton: UIButton = {
        
        let view = UIButton(type: .system)
        view.setTitle("Latest Driver News", for: .normal)
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
            make.top.equalToSuperview().offset(80)
            make.centerX.equalToSuperview()                           }
        
        view.addSubview(someImage)
        someImage.snp.makeConstraints{ make in
            make.top.equalTo(titleLabel.snp.bottom).offset(150)
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(200)
        }
     
        view.addSubview(nextButton)
        nextButton.snp.makeConstraints{make in
            make.bottom.equalToSuperview().offset(-80)
            make.horizontalEdges.equalToSuperview().inset(30)
            make.height.equalTo(50)
            
            make.centerX.equalToSuperview()
            
        }
        
        
        
    }
    @objc private func nextBtnAction(sender:UIButton) {
        
        let vc = TableViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
