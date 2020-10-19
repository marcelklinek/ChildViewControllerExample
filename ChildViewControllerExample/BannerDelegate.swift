//
//  BannerDelegate.swift
//  AdIntegrationExampleApp
//
//  Created by Marcel Klínek on 03/08/2020.
//  Copyright © 2020 Stroeer. All rights reserved.
//

import YieldloveAdIntegration
import GoogleMobileAds
import SwiftUI

class BannerDelegate: NSObject, YLBannerViewDelegate {
    
    weak var viewController: UIViewController?
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    deinit {
        print("Banner delegate deinitialized")
    }
    
    public func adViewDidReceiveAd(_ bannerView: YLBannerView) {
        viewController!.view.addSubview(bannerView.getBannerView())
    }
    
    public func adView(
        _ bannerView: YLBannerView,
        didFailToReceiveAdWithError error: YieldloveRequestError) {
        let errorView = UIHostingController(rootView: BannerErrorView())
        errorView.view.translatesAutoresizingMaskIntoConstraints = false
        errorView.view.frame = viewController!.view.bounds
        viewController!.view.addSubview(errorView.view)
        viewController!.addChild(errorView)
    }
    
}
