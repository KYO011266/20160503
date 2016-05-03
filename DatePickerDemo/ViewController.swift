//
//  ViewController.swift
//  DatePickerDemo
//
//  Created by user on 2015/12/10.
//  Copyright © 2015年 KYO. All rights reserved.
//

import UIKit
var dateFormatter = NSDateFormatter()
class ViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var labelMsg: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.datePickerMode = UIDatePickerMode.DateAndTime //顯示模式
        datePicker.locale = NSLocale(localeIdentifier: "zh_TW") //繁體中文
        datePicker.date = NSDate() //開始時為現在日期及時間
        dateFormatter.dateFormat = "西元y年M月d日hh點mm分ss秒"
        labelMsg.text = dateFormatter.stringFromDate(datePicker.date)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        // Dispose of any resources that can be recreated.
    }
    @IBAction func dateChange(sender: UIDatePicker) {
        labelMsg.text = dateFormatter.stringFromDate(datePicker.date)
    }


}

