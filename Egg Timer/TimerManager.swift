//
//  TimerManager.swift
//  Egg Timer
//
//  Created by Mifsud, Brent on 2018-05-13.
//  Copyright © 2018 Brent Mifsud. All rights reserved.
//

import Foundation

class EggTimerManager: NSObject {
    @objc var eggTimer: EggTimer
    var context: String
    
    init(_ timer: EggTimer, _ context: String){
        self.eggTimer = timer
        self.context = context
        super.init()
        
        self.eggTimer.addObserver(self, forKeyPath: #keyPath(eggTimer.time), options: .new, context: &self.context)
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        
        if context == &self.context{
            
        }
    }
}
