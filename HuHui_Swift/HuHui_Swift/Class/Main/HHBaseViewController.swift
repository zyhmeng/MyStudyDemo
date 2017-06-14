//
//  HHBaseViewController.swift
//  HuHui_Swift
//
//  Created by zyh on 2017/6/13.
//  Copyright © 2017年 zyh. All rights reserved.
//

import UIKit

class HHBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupNavLeftItem()
    }
    
    private func setupNavLeftItem()
    {
        let leftButton = UIButton(type: UIButtonType.custom)
        leftButton.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        leftButton.setImage(UIImage(named:"返回"), for: UIControlState.normal)
        leftButton.addTarget(self, action: #selector(HHBaseViewController.leftButtonClick), for: UIControlEvents.touchUpInside)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftButton)
    }
    
    @objc private func leftButtonClick()
    {
        self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
