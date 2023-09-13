//
//  MinutCell.swift
//  BeelineMobile
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 18/02/23.
//

import UIKit

class MinutCell: UITableViewCell {
    
    let name: UILabel = {
         let label = UILabel()
        label.numberOfLines = 2
         label.textColor = .systemYellow
         label.font = .systemFont(ofSize: 28, weight: .bold)
         label.textAlignment = .center
         return label
     }()
    let title: UILabel = {
         let label = UILabel()
         label.textColor = .black
         label.font = .systemFont(ofSize: 18, weight: .bold)
         label.textAlignment = .center
         return label
     }()
    let desc: UILabel = {
         let label = UILabel()
         label.numberOfLines = 3
         label.textColor = .gray
         label.font = .systemFont(ofSize: 12, weight: .bold)
         label.textAlignment = .center
         return label
     }()
  
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .clear
        
        contentView.addSubview(name)
        contentView.addSubview(title)
        contentView.addSubview(desc)
        
        name.snp.makeConstraints { make in
            make.top.equalTo(40)
            make.left.equalTo(20)

        }
        title.snp.makeConstraints { make in
            make.top.equalTo(20)
            make.left.equalTo(name.snp.right).offset(50)
            make.right.equalTo(-30)
        }
        desc.snp.makeConstraints { make in
            make.top.equalTo(title.snp.bottom).offset(30)
            make.left.equalTo(name.snp.right).offset(20)
            make.bottom.equalTo(-20)
            make.right.equalTo(-15)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initData(_ obj: BeelineMin){
        name.text = obj.name
        title.text = obj.title
        desc.text = obj.desc
    }
}


