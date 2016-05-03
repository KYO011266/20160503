//
//  ViewController.swift
//  SingleButton
//
//  Created by user on 2015/12/8.
//  Copyright © 2015年 KYO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFieldName: UITextField!//連結姓名輸入欄位
    @IBOutlet weak var labelMsg: UILabel!//連結訊息輸入欄位
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
      //建立按鈕事件
    @IBAction func sureClick(sender: UIButton) {
        if textFieldName.text != ""
        {
          labelMsg.text = textFieldName.text! + ",歡迎光臨！"
        }else{
          labelMsg.text = "必須輸入姓名！"
        }
    }


}

