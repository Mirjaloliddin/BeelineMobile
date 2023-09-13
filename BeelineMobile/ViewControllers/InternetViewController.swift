//
//  InternetViewController.swift
//  BeelineMobile
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 18/02/23.
//

import UIKit

class InternetViewController: UIViewController {
    
    let internetTableView = UITableView()
    var beelineModel = Modelinternet()
    lazy var arrBeelineIn = beelineModel.beelineArr
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        title = "Internet Paketlar"
        
        internetTableView.delegate = self
        internetTableView.dataSource = self
        internetTableView.register(InternetCell.self, forCellReuseIdentifier: "Cell")
        
        view.addSubview(internetTableView)
        
        internetTableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.left.bottom.right.equalTo(0)
        }
    }
}
extension InternetViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrBeelineIn.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = internetTableView.dequeueReusableCell(withIdentifier: "Cell") as! InternetCell
        cell.initData(arrBeelineIn[indexPath.row])
        return cell
    }
    
}
