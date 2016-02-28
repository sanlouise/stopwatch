//
//  ViewController.swift
//  Stopwatch
//
//  Created by Sandra Adams-Hallie on Feb/26/16.
//  Copyright © 2016 Sandra Adams-Hallie. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var time = 0
    
    @IBOutlet var timerLabel: UILabel!
    
    func increaseTimer() {
        
        time++
        
        let hours:Int = time / 3600
        
        let minutes:Int = (time % 3600) / 60
        
        let seconds:Int = time % 60
        
        let sHours = String(format:"%02d", hours)
        
        let sMinutes = String(format:"%02d", minutes)
        
        let sSeconds = String(format:"%02d", seconds)
        
        timerLabel.text = "\(sHours):\(sMinutes):\(sSeconds)"
    }
    
    
    @IBAction func play(sender: AnyObject) {
        
    if !timer.valid {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        }
    
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
        
    }
    
    @IBAction func reset(sender: AnyObject) {
        
        timer.invalidate()
        
        time = 0
        
        timerLabel.text = "0"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

