//
//  ViewController.swift
//  Pattern_Observer
//
//  Created by imanishi on 2016/05/18.
//  Copyright © 2016年 imanishi. All rights reserved.
//

import UIKit

class  ExViewController: UIViewController, ExViewDelegate {
    private let mModel = ExViewModel()
    
    override func loadView() {
        self.view = ExView(model: mModel)
        let exView = self.view as! ExView
        exView.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(
            self, selector: #selector(self.receiveNotification), name: "messageNotification", object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - ExView Delegate
    func didClickMyButton() {
        mModel.getMessage()
    }
    
    // MARK: - Notification Selector
    func receiveNotification(notification: NSNotification) {
        if let userInfo = notification.userInfo {
            let resultMessage = userInfo["message"] as! String
            print(resultMessage) // "Hello from ExViewModel"
        }
    }

}