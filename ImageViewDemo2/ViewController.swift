//
//  ViewController.swift
//  ImageViewDemo2
//
//  Created by user on 2015/12/10.
//  Copyright © 2015年 KYO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageShow: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
         imageShow.image = UIImage(named: "img01.jpg")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //框線紐
    @IBAction func borderClick(sender: UIButton) {
        imageShow.layer.borderColor = UIColor.redColor().CGColor// 框線顏色
        imageShow.layer.borderWidth = 5 //框線 粗細
    }
    //圓角紐
    @IBAction func roundClick(sender: UIButton) {
        imageShow.layer.cornerRadius = 30 //圓角角度
        imageShow.layer.masksToBounds = true
    }
    //陰影紐
    @IBAction func shadowClick(sender: UIButton) {
        imageShow.layer.shadowColor = UIColor.blueColor().CGColor //陰影顏色
        imageShow.layer.shadowOffset = CGSizeMake(10, 10) //陰影位移
        imageShow.layer.shadowOpacity = 0.8 //陰影透明度
        imageShow.layer.shadowRadius = 5 //陰影半徑
    }
    //正常紐
    @IBAction func normalClick(sender: UIButton) {
        imageShow.layer.borderWidth = 0 // 移除框線
        imageShow.layer.cornerRadius = 0 //移除圓角
        imageShow.layer.masksToBounds = false //移除圓角遮罩
        imageShow.layer.shadowOpacity = 0 //移除陰影
        
    }


}

