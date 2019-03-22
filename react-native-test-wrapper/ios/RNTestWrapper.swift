//
//  RNTestWrapper.swift
//  RNTestWrapper
//
//  Created by John Hamm on 2/27/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation
import NewsAPISwift

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
    
    @objc
    func getSources(
        _ resolve: @escaping RCTPromiseResolveBlock,
        rejecter reject: @escaping RCTPromiseRejectBlock
        ) -> Void {
        let newsAPI = NewsAPI(apiKey: "API_KEY_GOES_HERE")
        newsAPI.getSources(category: .technology, language: .en, country: .us) { result in
            switch result {
            case .success(let sources):
                //do something with sources
                print("sources: \(sources[0])")
                let firstSource : String = sources[0].name
                let secondSource : String = sources[1].name
                print("firstSource: \(firstSource)")
                let sourcesArray : Array = [firstSource, secondSource]
                resolve(sourcesArray)
            case .failure(let error):
                //handle error
                print("nope \(error)")
                reject("nope", "news api err msg", error)
            }
        }
    }
}
