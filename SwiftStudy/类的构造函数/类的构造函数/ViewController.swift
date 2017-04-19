//
//  ViewController.swift
//  类的构造函数
//
//  Created by zyh on 2017/4/18.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 懒加载
    lazy var names : [String] = {
        
       return ["zyh","qwe","asf"]
    }()
    
    var httpTool : HttpTool = HttpTool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 添加一个tableView
        let tableView = UITableView()
        tableView.frame = self.view.bounds
        self.view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        let person = Person(name: "zyh", age: 28)
        print(person)
    }
}

// 相当于OC中的category
extension ViewController : UITableViewDelegate,UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let ID = "cell"
        
        var cell = tableView.dequeueReusableCell(withIdentifier: ID)
        
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: ID)
        }
        
        cell?.textLabel?.text = "测试数据\(indexPath.row)"
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("点击了\(indexPath.row)")
    }

}

