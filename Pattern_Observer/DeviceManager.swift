//
//  DeviceManager.swift
//  Pattern_Observer
//
//  Created by imanishi on 2016/05/19.
//  Copyright © 2016年 BIRDMAN_imanishi. All rights reserved.
//

import Foundation
import UIKit

class DeviceManager: NSObject {
    
    struct screen {
        static let bounds = UIScreen.mainScreen().bounds
        static let width = UIScreen.mainScreen().bounds.width
        static let height = UIScreen.mainScreen().bounds.height
    }
    
    static let frame = CGRectMake(0, 0, screen.width, screen.height)
    static let scale = UIScreen.mainScreen().scale
}