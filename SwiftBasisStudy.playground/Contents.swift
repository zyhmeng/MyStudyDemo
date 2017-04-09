//: Playground - noun: a place where people can play

// 1.导入框架
import UIKit

// 2.定义标识符，必须指定该标识符是变量还是常亮
let age : Int = 2;
// 3.不在需要写分号，一行中如果有多行语句得需要分号，不建议一行中写多条语句
// 4.打印不再使用NSlog()  使用print
print("hello World")

var name = "lisa"


// 注意点：
// 1> 在开发中优先使用let，只有发现需要修改的时候，再let改成var
// 2> 常量的意思：指向的对象不可以修改
let view : UIView = UIView(frame : CGRect(x:0,y:0,width:100,height:100))
view.backgroundColor = UIColor.red

let button: UIButton = UIButton(type: UIButtonType.contactAdd)

button.center = CGPoint(x: view.frame.size.width*0.5, y: view.frame.size.height*0.5)

view.addSubview(button)


// Swift 中的类型推导
// 根据一个标识符的定义时有直接赋值，那么可以根据后面的赋值的类型，进行类型推导
var a : Int = 20
let a1 = 20

// swift 中的基本运算
// 在swift中，进行运算，必须保证类型一致
// 因为：swift中没有隐转换

let b = 1.22

let c = a + Int(b)
let d = Double(a) + b

// if语句
// 判断句可以不加（）
// 判断句结果必须是一个真假

let flag = a < 20

if a < 10 {
    print("ddd")
}else{
    print("ccc")
}

let score = 87

if score < 60 {
    
    print("不及格")
}

// 三目运算符

let result = age >= 18 ? "可以上网" : "回家去"

// guard

func onLine(age : Int) -> Bool{
    
    guard age >= 18 else {
        print("不能上网")
        return false
    }
    
    print("可以上网")
    return true
}

onLine(age: 16)

// switch
let sex = 0

switch sex {
case 0:
    print("sex = 0")
    fallthrough
case 1:
    print("sex = 1")
default:
    print("sex = 其他")
}

switch sex {
case 0,1:
    print("可以判断多个条件")
default:
    print("ddd")
}

// switch的特殊用法
// 可以判断浮点型和字符串
let t = 3.14

switch t {
case 3.14:
    print("switch 可以判断浮点型")
default:
    print("非3.14")
}

// 可以判断区间
// 区间
// 闭区间 【0，10】  swift 0...10
// 开区间 【1，10）    swift 0..<10


// for 循环
// 写法一：

for i in 0..<1 {
    print(i)
}

for _ in 0..<1 {
    
    print("hello world")
}

// while循环
while a < 10{
    a += 1
    print("11")
}

// 字符串
// string 是一个结构体，性能更高

// 遍历字符串
let string = "hello swift"

for s in string.characters {
    
//    print("s")
}

// 字符串的拼接
let str1 = "my name is"
var str2 = " why"
str2 = str1 + str2

// 字符串和其他类型的拼接
let height = 1.88

// 格式：\(变量/常量的名字)
let str3 = "age is \(age), height is \(height)"

// 字符串的格式化
let min = 2
let second = 3


let time = String(format: "%02:%02d", arguments:[min, second])

// 字符串的截取
let urlString = "www.520it.com"

// 提示：不要使用String方法截取，index非常不好创建
//urlString.substring(from: <#T##String.Index#>)
// String 转化成 NSString
let prefixString = (urlString as NSString).substring(to: 3)
let minStr = (urlString as NSString).substring(with: NSRange(location: 4, length: 5))


// 数组的使用
// var 可变数组
// let 不可变数组
let names : Array<String> = ["lisa","zyh"]
//names[0]
let array : [String] = ["aaaa","ssss"]

let arrays = ["zzzz","dddd"]

var array1 = ["qqqq","wwww"]
array1.append("rrrr")

var array2 = [String]()
array2.append("rrrr")

var array3 = Array<Any>()
array3.append("ffff")

array1.removeAll()



// 1> 添加元素
array2.append("rrrr")
array2.append("qwer")
array2.append("mmmmm")
// 2> 删除元素
array2.removeLast()
array2.remove(at: 0)
array2.removeFirst()

// 3> 修改元素
array2[0] = "zxcv"

// 4> 取出元素
array2[0]

// 数组的遍历
for i in 0..<names.count{
    
    print(names[i])
}

for item in names{
    
    print(item)
}

// 数组的合并
let array9 = array2 + array1



