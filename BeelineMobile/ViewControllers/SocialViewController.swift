//
//  SocialViewController.swift
//  BeelineMobile
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 18/02/23.
//

import UIKit

class SocialViewController: UIViewController {
    
    let serviceBtn = UIButton()
    let lblService = UILabel()
    let socialTableView = UITableView()
    var beelineModel = ModelSocial()
    lazy var arrBeelineSoc = beelineModel.socialArr
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Service"
        
        serviceBtn.setImage(UIImage(named: "man"), for: .normal)
        serviceBtn.layer.cornerRadius = 50
        serviceBtn.backgroundColor = .clear
        
        lblService.text = "Ser"
        
        socialTableView.delegate = self
        socialTableView.dataSource = self
        socialTableView.register(SocialCell.self, forCellReuseIdentifier: "Cell")
        
        view.addSubview(socialTableView)
        view.addSubview(serviceBtn)
        
        socialTableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.left.bottom.right.equalTo(0)
        }
        serviceBtn.snp.makeConstraints { make in
            make.right.equalTo(-30)
            make.bottom.equalTo(-80)
            make.width.height.equalTo(100)
        }
    }
}
extension SocialViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrBeelineSoc.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = socialTableView.dequeueReusableCell(withIdentifier: "Cell") as! SocialCell
        cell.initData(arrBeelineSoc[indexPath.row])
        return cell
    }
}
