//
//  TarifViewController.swift
//  BeelineMobile
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 18/02/23.
//

import UIKit
import SnapKit

class TarifViewController: UIViewController {
    
    let tarifTableView = UITableView()
    var beelineModel = ModelBeeline()
    lazy var arrBeeline = beelineModel.beelineArr
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        title = "Tariflar"
        
        tarifTableView.delegate = self
        tarifTableView.dataSource = self
        tarifTableView.register(BeelineCell.self, forCellReuseIdentifier: "Cell")
        
        view.addSubview(tarifTableView)
        
        tarifTableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.left.bottom.right.equalTo(0)
        }
    }
}
extension TarifViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrBeeline.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tarifTableView.dequeueReusableCell(withIdentifier: "Cell") as! BeelineCell
        cell.initData(arrBeeline[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = OneViewController()
        vc.oneItem = arrBeeline[indexPath.row]
        vc.initData(arrBeeline[indexPath.row])
        navigationController?.pushViewController(vc, animated: true)
    }
}
//(arrBeeline[indexPath.row])
