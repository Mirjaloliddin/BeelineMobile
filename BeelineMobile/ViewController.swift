//
//  ViewController.swift
//  BeelineMobile
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 18/02/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let tarifView = CustomView()
    let internetView = CustomView()
    let minutView = CustomView()
    let socialView = CustomView()
    
    let tarifBtn = UIButton()
    let internetBtn = UIButton()
    let minutBtn = UIButton()
    let socialBtn = UIButton()
    
    let beelineLbl = UILabel()
    
    let beelineIcon = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemYellow
        
        beelineLbl.text = "BEELINE"
        beelineLbl.font = UIFont.systemFont(ofSize: 72)
        beelineLbl.textAlignment = .center
        
        beelineIcon.image = UIImage(named: "beeline")
        
        tarifView.changeContent(iconName: "tarif", text: "Tariflar")
        internetView.changeContent(iconName: "global", text: "Internet")
        minutView.changeContent(iconName: "clock", text: "Daqiqalar")
        socialView.changeContent(iconName: "service", text: "Xizmatlar")
        
        tarifBtn.addTarget(self, action: #selector(tarifClicked), for: .touchUpInside)
        internetBtn.addTarget(self, action: #selector(internetClicked), for: .touchUpInside)
        minutBtn.addTarget(self, action: #selector(minutClicked), for: .touchUpInside)
        socialBtn.addTarget(self, action: #selector(socialClicked), for: .touchUpInside)
       
        view.addSubview(tarifBtn)
        view.addSubview(internetBtn)
        view.addSubview(minutBtn)
        view.addSubview(socialBtn)
        view.addSubview(tarifView)
        view.addSubview(internetView)
        view.addSubview(minutView)
        view.addSubview(socialView)
        view.addSubview(beelineLbl)
        view.addSubview(beelineIcon)
        
        beelineLbl.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            make.left.equalTo(60)
        }
        beelineIcon.snp.makeConstraints { make in
            make.top.equalTo(beelineLbl.snp.bottom).offset(10)
            make.left.equalTo(130)
            make.width.height.equalTo(120)
        }
        
        tarifView.snp.makeConstraints { make in
            make.top.equalTo(350)
            make.left.equalTo(30)
            
        }
        tarifBtn.snp.makeConstraints { make in
            make.top.equalTo(350)
            make.left.equalTo(30)
            make.width.equalTo(140)
            make.height.equalTo(160)
        }
        internetView.snp.makeConstraints { make in
            make.top.equalTo(350)
            make.right.equalTo(-30)
            make.left.equalTo(tarifView.snp.right).offset(200)
        }
        internetBtn.snp.makeConstraints { make in
            make.top.equalTo(350)
            make.right.equalTo(-30)
            make.left.equalTo(tarifView.snp.right).offset(200)
            make.width.equalTo(140)
            make.height.equalTo(160)
        }
        minutView.snp.makeConstraints { make in
            make.top.equalTo(tarifView.snp.bottom).offset(200)
            make.left.equalTo(30)
        }
        minutBtn.snp.makeConstraints { make in
            make.top.equalTo(tarifView.snp.bottom).offset(200)
            make.left.equalTo(30)
            make.width.equalTo(140)
            make.height.equalTo(160)
        }
        socialView.snp.makeConstraints { make in
            make.top.equalTo(internetView.snp.bottom).offset(200)
            make.left.equalTo(minutView.snp.right).offset(200)
            make.right.equalTo(-30)
        }
        socialBtn.snp.makeConstraints { make in
            make.top.equalTo(internetView.snp.bottom).offset(200)
            make.left.equalTo(minutView.snp.right).offset(200)
            make.right.equalTo(-30)
            make.width.equalTo(140)
            make.height.equalTo(160)
        }
    }
   
    @objc func tarifClicked(_ sender: UIButton){
        navigationController?.pushViewController(TarifViewController(), animated: true)
            print("sasasa")
        }
    @objc func internetClicked(_ sender: UIButton){
        navigationController?.pushViewController(InternetViewController(), animated: true)
            print("sasasa")
        }
    @objc func minutClicked(_ sender: UIButton){
    navigationController?.pushViewController(MinutViewController(), animated: true)
        print("sasasa")
    }
    @objc func socialClicked(_ sender: UIButton){
        navigationController?.pushViewController(SocialViewController(), animated: true)
            print("sasasa")
        }
}

