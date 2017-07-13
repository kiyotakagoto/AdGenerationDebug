//
//  ADGUtil.swift
//  AdGenerationDebug
//
//  Created by 後藤 清豪 on 2017/07/14.
//  Copyright © 2017年 kiyotakagoto.com. All rights reserved.
//

import Foundation

class ADGUtil {
    enum Id: String {
        case test = "26809"
    }
    
    static func setup (by id: Id, to view: UIView, delegate: AnyObject, rootVC: UIViewController) -> ADGManagerViewController {
        
        FBAdSettings.setLogLevel(FBAdLogLevel.verbose)
        FBAdSettings.addTestDevice("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
        
        
        let params = [
            "locationid": id.rawValue,
            "adtype": kADG_AdType_Free.rawValue,
            "w": view.bounds.width,
            "h": 50,
            ] as [String : Any]
        let adg = ADGManagerViewController(adParams: params, adView: view)!
        adg.rootViewController = rootVC
        adg.delegate = delegate
        adg.setFillerRetry(false)
        adg.loadRequest()
        return adg
    }
}
