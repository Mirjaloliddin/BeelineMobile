//
//  ModelSocial.swift
//  BeelineMobile
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 18/02/23.
//

import UIKit

class ModelSocial {
    
    var socialArr = [BeelineSocial]()
    init() {
        pars()
    }
    func pars(){
        guard let path = Bundle.main.path(forResource: "Social", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        if let data = try? Data(contentsOf: url){
            do{
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [[String:AnyObject]]{
                    for item in json {
                        let obj = BeelineSocial(item)
                        socialArr.append(obj)
                    }
                }
            } catch {
                print("Error on parsing!")
            }
        }
    }
}
class BeelineSocial{
    var title: String?
    var icon: String?
    var image: String?

    
    init(_ dict: [ String: AnyObject]){
        self.title = dict["title"] as! String?
        self.icon = dict["icon"] as! String?
        self.image = dict["image"] as! String?
    }
}




