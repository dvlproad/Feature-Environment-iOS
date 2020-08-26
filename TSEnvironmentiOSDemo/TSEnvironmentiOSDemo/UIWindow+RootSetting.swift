//
//  UIWindow+RootSetting.swift
//  TSEnvironmentiOSDemo
//
//  Created by ciyouzen on 2020/8/25.
//  Copyright © 2020 dvlproad. All rights reserved.
//

import UIKit
import SwiftExtraCJHelper

extension UIWindow {
    func settingRoot() {
        self.backgroundColor = UIColor.white
        // 只直接测试某个页面
        let viewController: UIViewController = NSClassFromStringCJHelper.controllerFormString(className: "GuideHomeViewController", isOC: true)
        let rootViewController: UIViewController = UINavigationController(rootViewController: viewController)
        self.rootViewController = rootViewController
        self.makeKeyAndVisible()
}
}

