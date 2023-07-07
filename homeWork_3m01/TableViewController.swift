//
//  TableViewController.swift
//  homeWork_3m01
//
//  Created by Sultanbai Almaz on 6/7/23.
//

import UIKit
import SnapKit

class TableViewController: UIViewController {
    
    private var model = SetData()
    
   private lazy var tableView : UITableView = {
        let view = UITableView()
        return view
        }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
     setupUI()
     tableViewConfig()
       
    }
    
    private func setupUI(){
    navigationItem.title = "All News"
    navigationController?.navigationBar.prefersLargeTitles = true
    view.addSubview(tableView)
        tableView.snp.makeConstraints{ make in
            make.edges.equalToSuperview()
        }
        
        }
    
    private func tableViewConfig(){
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell().idCell)
        
    }
    
}
extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    
    // отвечает за количество ячеек (строк)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.data.count
    }
    // отвечает за сому ячейку
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell().idCell) as?CustomTableViewCell
        let value = model.data[indexPath.row]
        
        cell?.imageViewS = value.image
        cell?.titleLabel.text = value.title
        cell?.descriptionLabel.text = value.descriptiion
        return cell!
    }
// отвечает за размер ячейки
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = SecondPageScreenViewController()
        vc.dataModel = model.data[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}
