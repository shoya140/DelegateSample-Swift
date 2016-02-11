//
//  ViewController.swift
//  DelegateSample-Swift
//
//  Created by ishimaru on 2015/04/14.
//  Copyright (c) 2015年 shoya140. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SampleObjectDelegate {
    
    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sample = SampleObject()
        sample.delegate = self
        sample.call()
    }
    
    // MARK: - SampleObjectDelegate
    
    func gotMessage(text: String) {
        print(text)
    }

}

