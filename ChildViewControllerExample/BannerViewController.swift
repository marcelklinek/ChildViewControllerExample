//
//  BannerViewController.swift
//  AdIntegrationExampleApp
//
//  Created by Marcel Klínek on 26/05/2020.
//  Copyright © 2020 Stroeer. All rights reserved.
//

import UIKit
import YieldloveAdIntegration
import GoogleMobileAds
import PrebidMobile

class BannerViewController: UIViewController {
    
    var adSlotId: String
    var ad: YieldloveAd?
    var bannerDelegate: YLBannerViewDelegate?
    
    init(adSlotId: String) {
        self.adSlotId = adSlotId
        super.init(nibName: nil, bundle: nil)
    }
    
    deinit {
        print("Banner View Controller deinitialized")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        bannerDelegate = BannerDelegate(viewController: self)
        Yieldlove.instance.bannerAd(
            AdSlotId: adSlotId,
            UIViewController: self,
            Delegate: bannerDelegate!
        )
        
        let submit = UIButton(type: .system)
        submit.translatesAutoresizingMaskIntoConstraints = false
        submit.setTitle("Test button", for: .normal)
        submit.tintColor = .blue
        submit.addTarget(self, action: #selector(printToConsole), for: .touchUpInside)
        self.view.addSubview(submit)
        
        NSLayoutConstraint.activate([
            submit.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            submit.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
        ])
    }
    
    @objc func printToConsole() {
        print("Button was clicked")
    }
    
}
