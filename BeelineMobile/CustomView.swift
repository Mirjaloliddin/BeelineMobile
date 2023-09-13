//
//  CustomView.swift
//  BeelineMobile
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 18/02/23.
//

import UIKit
import SnapKit

class CustomView: UIView {
    
    let paketView = UIImageView()
    let tarifLbl = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        paketView.frame = CGRect(x: 10, y: 10, width: 120, height: 120)
        paketView.backgroundColor = .clear
        self.addSubview(paketView)
        
        tarifLbl.frame = CGRect(x: 20, y: 130, width: 100, height: 30)
        tarifLbl.textColor = .black
        tarifLbl.textAlignment = .center
        tarifLbl.font = UIFont.systemFont(ofSize: 24)
    
        self.addSubview(tarifLbl)
      
    }
    func changeContent( iconName:String, text:String ){
        paketView.image = UIImage(named: iconName)?.withRenderingMode(.alwaysOriginal)
        tarifLbl.text = text
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
