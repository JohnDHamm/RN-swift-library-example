//
//  RNTestWrapper.swift
//  RNTestWrapper
//
//  Created by John Hamm on 2/27/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation

@objc(RNTestWrapper)
class RNTestWrapper: NSObject {
    
    @objc
    func callbackMethod(_ callback: RCTResponseSenderBlock) {
        callback(["callback message from swift"])
    }
    
    @objc
    static func requiresMainQueueSetup() -> Bool {
        return true
    }
}
