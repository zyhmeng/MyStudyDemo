//
//  Person.swift
//  类的构造函数
//
//  Created by zyh on 2017/4/18.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit

class Person: NSObject {

    var name : String?
    var age = 0
    
    override init() {
     
        // 重写之后是否需要调用super.init()，系统默认会调用
    }
    
    // 自定义的构造函数
    init(name : String, age : Int){
        
        self.name = name
        self.age = age
    }
    
    init (dict : [String : AnyObject]){
        
        name = dict["name"] as? String
        age = dict["age"] as! Int
    }
}
