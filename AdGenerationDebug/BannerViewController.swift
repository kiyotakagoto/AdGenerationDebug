//
//  BannerViewController.swift
//  AdGenerationDebug
//
//  Created by 後藤 清豪 on 2017/07/14.
//  Copyright © 2017年 kiyotakagoto.com. All rights reserved.
//

import UIKit

class BannerViewController: UIViewController {
    var adg: ADGManagerViewController?
    @IBOutlet weak var adAreaView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupAd()
    }
    
    func setupAd () {
        if let _ = adg { return }
        
        adg = ADGUtil.setup(by: ADGUtil.Id.test, to: adAreaView, delegate: self, rootVC: self)
    }

}

