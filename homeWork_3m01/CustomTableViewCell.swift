//
//  CustomTableViewCell.swift
//  homeWork_3m01
//
//  Created by Sultanbai Almaz on 6/7/23.
//

import UIKit
import SnapKit


class CustomTableViewCell: UITableViewCell {
    
    let idCell = "CustomTableCell"
     lazy var imageViewS: UIImageView = {
        let view = UIImageView()
         view.contentMode = .scaleAspectFit
        return view
        
    }()
     lazy var titleLabel: UILabel = {
        let view = UILabel()
         view.font = .systemFont(ofSize: 20, weight: .bold)
        return view
        
    }()
     lazy var descriptionLabel: UILabel = {
        let view = UILabel()
         view.font = .systemFont(ofSize: 15, weight: .medium)
         view.numberOfLines = 6
        return view
        
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.addSubview(imageViewS)
        imageViewS.snp.makeConstraints{make in
            make.top.leading.bottom.equalToSuperview().inset(10)
            make.width.equalTo(130)
        }
        self.addSubview(titleLabel)
        titleLabel.snp.makeConstraints {make in
            make.top.equalToSuperview()
            make.leading.equalTo(imageViewS.snp.trailing).offset(10)
            make.trailing.equalToSuperview().offset(-10)
        }
        self.addSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints {make in
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.leading.equalTo(imageViewS.snp.trailing).offset(10)
            make.trailing.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview()
        }
    }
}
