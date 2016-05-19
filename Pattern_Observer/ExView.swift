//
//  View.swift
//  Pattern_Observer
//
//  Created by imanishi on 2016/05/19.
//  Copyright © 2016年 BIRDMAN_imanishi. All rights reserved.
//

import Foundation
import UIKit

protocol ExViewDelegate {
    func didClickMyButton()
}

class ExView: UIView {
    let myButton: UIButton
    var delegate: ExViewDelegate?
    
    required init(model: ExViewModel) {
        
        myButton = UIButton(frame: CGRectMake(0, 0, 0, 0))
        myButton.setTitle("TOUCH", forState: UIControlState.Normal)
        
        super.init(frame: CGRectMake(0, 0, 0, 0))
        
        self.addSubview(myButton)
        myButton.addTarget(self, action: #selector(self.onClickMyButton), forControlEvents: .TouchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        myButton.frame = CGRectMake(DeviceManager.screen.width/2 - 100, DeviceManager.screen.height/2 - 50, 200, 100)
    }
    
    @objc private func onClickMyButton(sender: UIButton) {
        delegate?.didClickMyButton()
    }
    
}
