//
//  ViewController.swift
//  TelDemo
//
//  Created by user on 2015/12/8.
//  Copyright © 2015年 KYO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelTel: UILabel!
    @IBOutlet weak var labelMsg: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func numberClick(sender: UIButton) {
        labelTel.text = labelTel.text! + sender.currentTitle!//取得按鈕上的訊息
        
    }
    @IBAction func sureClick(sender: UIButton) {//按確定紐
        if labelTel.text?.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) == 10 //判斷是否為１０碼
        {
          labelMsg.text = "撥打電話:" + labelTel.text!
        let newButton = UIButton()
            newButton.frame = CGRectMake(120.0, 483.0, 80.0, 80.0)
            newButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)//加入觸發事件後才出現的按鈕的顏色
            
            newButton.setTitle("Call", forState: UIControlState.Normal)//加入觸發事件後才出現的按鈕
            
            newButton.addTarget(self, action: "callMe", forControlEvents: UIControlEvents.TouchUpInside)//加入觸發事件的行為模式
            view.addSubview(newButton)//把設計元件加入放在ViewCtrl上
            
            
        }else{
          labelMsg.text = "必須輸入１０個號碼！"
        }
        
        
    }
    @IBAction func clearClick(sender: UIButton) { //清除按鈕
        labelTel.text = ""
        labelMsg.text = ""
        
        
        
        
    }
   func callMe() //事件觸發
   {
      labelMsg.text = "電話撥打出去了！"
   }

}

