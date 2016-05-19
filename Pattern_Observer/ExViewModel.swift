//
//  Observer.swift
//  Pattern_Observer
//
//  Created by imanishi on 2016/05/18.
//  Copyright © 2016年 BIRDMAN_imanishi. All rights reserved.
//

import Foundation
import UIKit

class ExViewModel: NSObject {
    
    override init() {
        super.init()
    }
    
    // Some processing takes a long time
    func getMessage() {
        
        // Dummy process
        let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(3 * Double(NSEC_PER_SEC)))
        dispatch_after(delayTime, dispatch_get_main_queue()) {
            
            let n = NSNotification(name: "messageNotification", object: self, userInfo: ["message": "Hello from ExViewModel"])
            NSNotificationCenter.defaultCenter().postNotification(n)
            
        }
        
    }
    
}