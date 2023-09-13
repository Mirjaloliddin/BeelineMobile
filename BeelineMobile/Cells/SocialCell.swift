//
//  SocialCell.swift
//  BeelineMobile
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 18/02/23.
//

import UIKit

class SocialCell: UITableViewCell{
    
    let title: UILabel = {
         let label = UILabel()
         label.textColor = .black
         label.font = .systemFont(ofSize: 18, weight: .bold)
         label.textAlignment = .center
         return label
     }()
    let icon: UIImageView = {
        let icon = UIImageView()
        
        return icon
    }()
    let image: UIImageView = {
        let image = UIImageView()
        
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .clear
        
        contentView.addSubview(title)
        contentView.addSubview(icon)
        contentView.addSubview(image)
        
        icon.snp.makeConstraints { make in
            make.top.equalTo(10)
            make.left.equalTo(20)
            make.width.height.equalTo(30)
    
          
        }
        
        title.snp.makeConstraints { make in
            make.top.equalTo(10)
            make.centerY.equalTo(icon.snp.centerY)
            make.left.equalTo(icon.snp.right).offset(10)
        }
        image.snp.makeConstraints { make in
            make.right.equalTo(-10)
            make.centerY.equalTo(icon.snp.centerY)
            make.width.height.equalTo(20)
            make.bottom.equalTo(-15)
            
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initData(_  obj: BeelineSocial){
        icon.image = UIImage(named: obj.icon ?? "")
        image.image = UIImage(named: "right" )
        title.text = obj.title
    }
}
//obj.image ?? ""
