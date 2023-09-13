//
//  MinutViewController.swift
//  BeelineMobile
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 18/02/23.
//

import UIKit

class MinutViewController: UIViewController {
    
    let minutTableView = UITableView()
    var beelineModel = ModelMinut()
    lazy var arrBeelineMin = beelineModel.beelineArr
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Daqiqalar"
        
        minutTableView.delegate = self
        minutTableView.dataSource = self
        minutTableView.register(MinutCell.self, forCellReuseIdentifier: "Cell")
        
        view.addSubview(minutTableView)
        
        minutTableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.left.bottom.right.equalTo(0)
        }
    }
}
extension MinutViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrBeelineMin.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = minutTableView.dequeueReusableCell(withIdentifier: "Cell") as! MinutCell
        cell.initData(arrBeelineMin[indexPath.row])
        return cell
    }
}
