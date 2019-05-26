//
//  SpaceXAPIClient.swift
//  SpaceXAPI-Swift
//
//  Created by Sami Sharafeddine on 5/26/19.
//  Copyright © 2019 Sami Sharafeddine. All rights reserved.
//

import Foundation
import Alamofire

class SpaceXAPIClient: NSObject {
    
    // MARK: - Declarations
    
    public static let shared = SpaceXAPIClient()
    
    // MARK: - Core methods
    
    private override init() {
        // Just make sure only one instance exists within the entire app.
        super.init()
    }
    
    // MARK: - API Calls
    
    // MARK: - Info
    
    public func getCompanyInfo (completion: @escaping (CompanyInfo?, Error?) -> Void) {
        let url = SXAPIEndpoints.getComapanyInfo()
        SXRequestHandler.requestWithUrl(url: url, responseType: CompanyInfo.self) { (result, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            completion(result, nil)
        }
    }
    
    // MARK: - Capsules
    
    public func getAllCapsules (completion: @escaping ([Capsule]?, Error?) -> Void) {
        let url = SXAPIEndpoints.getAllCapsules()
        SXRequestHandler.requestWithUrl(url: url, responseType: [Capsule].self) { (result, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            completion(result, nil)
        }
    }
    
    public func getCapsule (capsuleSerial: String, completion: @escaping (Capsule?, Error?) -> Void) {
        let url = SXAPIEndpoints.getCapsule(capsuleSerial: capsuleSerial)
        SXRequestHandler.requestWithUrl(url: url, responseType: Capsule.self) { (result, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            completion(result, nil)
        }
    }
    
    public func getAllUpcomingCapsules (completion: @escaping ([Capsule]?, Error?) -> Void) {
        let url = SXAPIEndpoints.getAllUpcomingCapsules()
        SXRequestHandler.requestWithUrl(url: url, responseType: [Capsule].self) { (result, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            completion(result, nil)
        }
    }
    
    public func getPastCapsules (completion: @escaping ([Capsule]?, Error?) -> Void) {
        let url = SXAPIEndpoints.getPastCapsules()
        SXRequestHandler.requestWithUrl(url: url, responseType: [Capsule].self) { (result, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            completion(result, nil)
        }
    }
    
    // MARK: - Cores
    
    public func getAllCores (completion: @escaping ([Core]?, Error?) -> Void) {
        let url = SXAPIEndpoints.getAllCores()
        SXRequestHandler.requestWithUrl(url: url, responseType: [Core].self) { (result, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            completion(result, nil)
        }
    }
    
    public func getCore (coreSerial: String, completion: @escaping (Core?, Error?) -> Void) {
        let url = SXAPIEndpoints.getCore(coreSerial: coreSerial)
        SXRequestHandler.requestWithUrl(url: url, responseType: Core.self) { (result, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            completion(result, nil)
        }
    }
    
    public func getUpcomingCores (completion: @escaping ([Core]?, Error?) -> Void) {
        let url = SXAPIEndpoints.getUpcomingCores()
        SXRequestHandler.requestWithUrl(url: url, responseType: [Core].self) { (result, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            completion(result, nil)
        }
    }
    
    public func getPastCores (completion: @escaping ([Core]?, Error?) -> Void) {
        let url = SXAPIEndpoints.getPastCores()
        SXRequestHandler.requestWithUrl(url: url, responseType: [Core].self) { (result, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            completion(result, nil)
        }
    }
    
    // MARK: - Dragons
    
    public func getAllDragons (completion: @escaping ([Dragon]?, Error?) -> Void) {
        let url = SXAPIEndpoints.getAllDragons()
        SXRequestHandler.requestWithUrl(url: url, responseType: [Dragon].self) { (result, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            completion(result, nil)
        }
    }
    
    public func getDragon (id: String, completion: @escaping (Dragon?, Error?) -> Void) {
        let url = SXAPIEndpoints.getDragon(id: id)
        SXRequestHandler.requestWithUrl(url: url, responseType: Dragon.self) { (result, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            completion(result, nil)
        }
    }
    
    // MARK: - History
    
    public func getAllHistoryEvents (completion: @escaping ([HistoryEvent]?, Error?) -> Void) {
        let url = SXAPIEndpoints.getAllHistoryEvents()
        SXRequestHandler.requestWithUrl(url: url, responseType: [HistoryEvent].self) { (result, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            completion(result, nil)
        }
    }
    
    public func getHistoryEvent (id: Int, completion: @escaping (HistoryEvent?, Error?) -> Void) {
        let url = SXAPIEndpoints.getHistoryEvent(id: id)
        SXRequestHandler.requestWithUrl(url: url, responseType: HistoryEvent.self) { (result, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            completion(result, nil)
        }
    }
    
    // MARK: - Landing Pads
    
    public func getAllLandingPads (completion: @escaping ([LandingPad]?, Error?) -> Void) {
        let url = SXAPIEndpoints.getAllLandingPads()
        SXRequestHandler.requestWithUrl(url: url, responseType: [LandingPad].self) { (result, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            completion(result, nil)
        }
    }
    
    public func getLandingPad (id: String, completion: @escaping (LandingPad?, Error?) -> Void) {
        let url = SXAPIEndpoints.getLandingPad(id: id)
        SXRequestHandler.requestWithUrl(url: url, responseType: LandingPad.self) { (result, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            completion(result, nil)
        }
    }
    
}
