//
//  ViewController.swift
//  xx
//
//  Created by Morgan Williams on 7/24/16.
//  Copyright © 2016 Morgan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clockLabel: UILabel!
    
    var timer: Timer!
    var dateString: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        moveTime()
        
        
    }
    
    func moveTime() {
        // todo: separate startClock and runClock?
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.moveTime), userInfo: nil, repeats: false)
        
        let date: Date = Date()
        
        let dateFormatter: DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm a"
        
        dateString = dateFormatter.string(from: date)
        
        // get seconds
        let calendar = Calendar.current
        let seconds = calendar.component(.second, from: date)
        
        if seconds == 0 {
           print("⏲\(dateString)")
        }
        
        clockLabel.text = dateString as String
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

