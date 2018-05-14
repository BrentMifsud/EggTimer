//
//  ViewController.swift
//  Egg Timer
//
//  Created by Mifsud, Brent on 2018-05-13.
//  Copyright © 2018 Brent Mifsud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var time = 210
    
    
    @IBOutlet weak var timeLabel: UILabel!
    
    //UI element actions
    @IBAction func playButtonPressed(_ sender: UIBarButtonItem) {
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countdown), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseButtonPressed(_ sender: UIBarButtonItem) {
        timer.invalidate()
    }
    
    @IBAction func plusTenButtonPressed(_ sender: UIBarButtonItem) {
        incrementTime(by: 10)
    }
    
    @IBAction func minusTenButtonPressed(_ sender: UIBarButtonItem) {
        incrementTime(by: -10)
    }
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        time = 210
        updateLabel()
    }
    
    @objc func countdown(){
        if time > 0 {
            incrementTime(by: -1)
        }else{
            timer.invalidate()
        }
    }
    
    func incrementTime(by seconds: Int){
        if time - seconds > 0{
            time += seconds
        }else{
            time = 0
        }
        updateLabel()
    }
    
    func updateLabel(){
        timeLabel.text = String(self.time)
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

