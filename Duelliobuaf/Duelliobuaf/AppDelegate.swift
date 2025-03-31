//
//  AppDelegate.swift
//  Duelliobuaf
//
//  Created by mumu on 2025/3/31.
//

import UIKit
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let appearaence = UITabBarAppearance()

        appearaence.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor: UIColor(red: 0.36, green: 0.33, blue: 0.35, alpha: 1),
            .font: UIFont.systemFont(ofSize: 10)
        ]
        appearaence.backgroundColor = UIColor(red: 0.01, green: 0, blue: 0.01, alpha: 1)
        
        appearaence.stackedLayoutAppearance.selected.titleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 10, weight: .bold)
        ]

        // 4. 将外观应用到所有 TabBar 实例（全局生效）
        UITabBar.appearance().standardAppearance = appearaence

        // 5. 兼容 iOS 15+ 的滚动边缘效果（Scroll Edge Appearance）
        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = appearaence
        }
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.rootViewController = DUETabarCotnoller()
        self.window?.makeKeyAndVisible()
        return true
    }

 

}

