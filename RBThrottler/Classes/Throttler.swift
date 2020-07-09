//
//  Throttler.swift
//
//  Created by iOS Developer on 11/26/17.
//  Copyright © 2017 Reza Bina. All rights reserved.
//

import UIKit

public class Throttler {
    
    private let queue : DispatchQueue = DispatchQueue.global(qos: DispatchQoS.QoSClass.background)
    
    private var job : DispatchWorkItem = DispatchWorkItem {}
    private var previousRun : Date = Date.distantPast
    private var maxInterval : Int
    
    public init(seconds : Int) {
        self.maxInterval = seconds
    }
    
    public func throttle(block : @escaping () -> ()) {
        job.cancel()
        job = DispatchWorkItem(block: {
            self.previousRun = Date()
            block()
        })
        let delay = Date.second(from: previousRun) > maxInterval ? 0 : maxInterval
        queue.asyncAfter(deadline: .now() + Double(delay), execute: job)
    }
    
}

extension Date {
    static func second(from referenceDate : Date) -> Int {
        return Int(Date().timeIntervalSince(referenceDate).rounded())
    }
}
