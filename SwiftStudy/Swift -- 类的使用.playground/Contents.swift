//: Playground - noun: a place where people can play

import UIKit

class Student : NSObject{
 
    // 存储属性
    // 如果类型是结构体或者类，通常定义为可选类型
    var name : String?
    var age = 0
    
    var chineseSocre : Double = 0.0
    var mathSocre : Double = 0.0

    // 计算属性
    var averageScore : Double {
        
        // 如果只有get方法，get{} 可以省略
        //get {
            return (chineseSocre + mathSocre) * 0.5
        //}
//        set {
//            print(newValue)
//        }
    }
    
    // 类属性
    static var courseCount = 0
}

let stu = Student()

Student.courseCount = 2


stu.name = "zyh"
stu.age = 28

stu.chineseSocre = 90
stu.mathSocre = 91

print(stu.averageScore)


class Person : NSObject{
    
    // swift中提供属性监听器，可以监听属性的改变
    var name : String?{
        willSet{
            
        }
        
        didSet{
            
        }
    }
    var age : Int = 0
}

let p = Person()
p.name = "zyh"
p.age = 18






















