//
//  ViewController.swift
//  DelegateSample-Swift
//
//  Created by ishimaru on 2015/04/14.
//  Copyright (c) 2015年 shoya140. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SampleObjectdelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let sample = SampleObject()
        sample.delegate = self
        sample.call()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func gotMessage(text: String) {
        println(text)
    }

}

