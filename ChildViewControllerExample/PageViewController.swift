import SwiftUI
import UIKit
import YieldloveAdIntegration

struct PageViewController: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> UIViewController {
        Yieldlove.instance.appName = "appDfpTest"
        return BannerViewController(adSlotId: "banner")
    }

    func updateUIViewController(_ pageViewController: UIViewController, context: Context) {
    }
}
