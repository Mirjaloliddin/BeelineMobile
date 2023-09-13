//
//  ModelBeeline.swift
//  BeelineMobile
//
//  Created by Murtazaev Mirjaloliddin Kamolovich on 18/02/23.
//

import UIKit

class ModelBeeline {
    
    var beelineArr = [Beeline]()
    init() {
        pars()
    }
    func pars(){
        guard let path = Bundle.main.path(forResource: "Beeline", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        if let data = try? Data(contentsOf: url){
            do{
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [[String:AnyObject]]{
                    for item in json {
                        let obj = Beeline(item)
                        beelineArr.append(obj)
                    }
                }
            } catch {
                print("Error on parsing!")
            }
        }
    }
}

class Beeline{
    var name: String?
    var title: String?
    var desc: String?
    var imgTarif: String?
    
    init(_ dict: [ String: AnyObject]){
        self.name = dict["name"] as! String?
        self.title = dict["title"] as! String?
        self.desc = dict["desc"] as! String?
        self.imgTarif = dict["imgTarif"] as! String?
    }
}


//class Setting{
//    var inSetArr = [Beeline]()
//    
//    init( inArr: [Beeline]){
//        for item in inArr {
//            self.inSetArr.append(item)
//        }
//    }
//}
