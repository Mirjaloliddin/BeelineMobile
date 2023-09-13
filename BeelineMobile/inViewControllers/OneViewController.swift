//
//  OneViewController.swift
//  BeelineMobile
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 01/03/23.
//

import UIKit
import SnapKit
import SDWebImage

class OneViewController: UIViewController {
    
    var oneItem: Beeline?
    let name: UILabel = {
         let label = UILabel()
        label.numberOfLines = 2
         label.textColor = .darkText
         label.font = .systemFont(ofSize: 28, weight: .bold)
         label.textAlignment = .left
         return label
     }()
    let titles: UILabel = {
         let label = UILabel()
         label.textColor = .black
         label.font = .systemFont(ofSize: 18, weight: .bold)
         label.textAlignment = .center
         return label
     }()
    let desc: UILabel = {
         let label = UILabel()
         label.textColor = .black
         label.numberOfLines = 0
         label.font = .systemFont(ofSize: 14, weight: .semibold)
         label.textAlignment = .center
         return label
     }()
    let img: UIImageView = {
        let view = UIImageView ()
        view.clipsToBounds = true
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        
        view.addSubview(name)
        view.addSubview(titles)
        view.addSubview(desc)
        view.addSubview(img)
        
        img.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.right.left.equalTo(0)
            make.height.equalTo(240)
        }
        name.snp.makeConstraints { make in
            make.top.equalTo(img.snp.bottom).offset(20)
            make.left.equalTo(20)
        }
        titles.snp.makeConstraints { make in
            make.top.equalTo(img.snp.bottom).offset(20)
            make.right.equalTo(-20)
        }
        desc.snp.makeConstraints { make in
            make.top.equalTo(name.snp.bottom).offset(20)
            make.left.equalTo(20)
            make.right.equalTo(-20)
        }

    }
    func initData(_ obj: Beeline){
        name.text = obj.name
        desc.text = obj.desc
        titles.text = obj.title
        img.sd_setImage(with: URL(string: obj.imgTarif ?? "placeholder"), placeholderImage: UIImage(named: "placeholder"))
    }

}
