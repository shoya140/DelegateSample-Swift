//
//  SampleObject.swift
//  DelegateSample-Swift
//
//  Created by ishimaru on 2015/04/14.
//  Copyright (c) 2015年 shoya140. All rights reserved.
//

import UIKit

protocol SampleObjectdelegate: class {
    func gotMessage(text: String)
}

class SampleObject: NSObject {
    override init(){
        super.init()
    }
    
    weak var delegate: SampleObjectdelegate? = nil

    func call() {
        self.delegate?.gotMessage("Hello, World")
    }
}
