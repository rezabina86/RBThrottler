//
//  ViewController.swift
//  RBThrottler
//
//  Created by rezabina86 on 07/02/2018.
//  Copyright (c) 2018 rezabina86. All rights reserved.
//

import UIKit
import RBThrottler

class ViewController: UIViewController {
    
    var throttler : Throttler?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.throttler = Throttler(seconds: 3)
        self.throttler?.throttle(block: {
            print("Hello, world!")
        })
    }

}

