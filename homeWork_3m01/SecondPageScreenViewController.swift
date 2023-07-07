//
//  SecondPageScreenViewController.swift
//  homeWork_3m01
//
//  Created by Sultanbai Almaz on 7/7/23.
//

import UIKit
import SnapKit


class SecondPageScreenViewController: UIViewController {
    
    public var dataModel: DataModel? = nil
    
    private lazy var imageOfNews: UIImageView = {
    let view = UIImageView()
        view.contentMode = .scaleAspectFit
    return view
    }()
    
    private lazy var titleOfNews: UILabel = {
        let view = UILabel()
        view.numberOfLines = 0
        view.textAlignment = .center
        return view
    }()
    private lazy  var descriptionOfNews: UILabel = {
        let view = UILabel()
        view.numberOfLines = 0
        view.textAlignment = .center
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    view.backgroundColor = .white
        
    setupUI()
        
      getDataFromFirstPage()
       
    }
    private func setupUI() {
        view.addSubview(imageOfNews)
        imageOfNews.snp.makeConstraints {make in
            make.top.equalToSuperview().offset(100)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(150)
        }
        view.addSubview(titleOfNews)
        titleOfNews.snp.makeConstraints { make in
            make.top.equalTo(imageOfNews.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.horizontalEdges.equalToSuperview().inset(30)
        }
        view.addSubview(descriptionOfNews)
        descriptionOfNews.snp.makeConstraints { make in
            make.top.equalTo(titleOfNews.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.horizontalEdges.equalToSuperview().inset(30)
        }
    }

    func getDataFromFirstPage() {
        imageOfNews.image = dataModel?.image.image ?? UIImage()
        titleOfNews.text = dataModel?.title
        descriptionOfNews.text = dataModel?.descriptiion
    }

}
