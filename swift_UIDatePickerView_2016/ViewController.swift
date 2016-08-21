//
//  ViewController.swift
//  swift_UIDatePickerView_2016
//
//  Created by nanami on 2016/07/31.
//  Copyright © 2016年 nanami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet var Label: UILabel!
    
    // UIDatePicker変更時に呼び出されるメソッド
    @IBAction func selectDate(sender: UIDatePicker) {
    
        // フォーマットを生成
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy/M/dd "
        // 日付をフォーマットに則って取得.
        Label.text = dateFormatter.stringFromDate(sender.date)
        
        let cal = NSCalendar(identifier: NSCalendarIdentifierGregorian)!
        let today = NSDate()
        let targetDate = sender.date
        var days = cal.components([.Day], fromDate: today, toDate: targetDate, options: NSCalendarOptions.MatchFirst).day
    
        //1日ずれるから1足す 
        days = days + 1
        print(days)
     
           }
    
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

