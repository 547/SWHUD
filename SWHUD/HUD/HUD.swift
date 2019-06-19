//
//  HUD.swift
//  SWHUD
//
//  Created by Supernova SanDick SSD on 2019/6/19.
//  Copyright © 2019 Seven. All rights reserved.
//

import Foundation
import UIKit
import SVProgressHUD

/*
 *  便捷HUD显示方法，整合SVPROGRESSHUD
 */

public struct SWHUD {
    public static func setupWithDefaultMaskType(_ type:SVProgressHUDMaskType = .clear) {
        SVProgressHUD.setDefaultMaskType(type)
    }
    public static func show() {
        SVProgressHUD.show()
    }
    public static func show(_ message: String) {
        SVProgressHUD.show(withStatus: message)
    }
    public static func show(success message: String) {
        SVProgressHUD.showSuccess(withStatus: message)
    }
    public static func show(error message: String) {
        SVProgressHUD.showError(withStatus: message)
    }
    public static func show(info message: String) {
        SVProgressHUD.showInfo(withStatus: message)
    }
    public static func show(progress: Float) {
        SVProgressHUD.showProgress(progress)
    }
    public static func dismiss() {
        SVProgressHUD.dismiss()
    }
    public static func dismiss(after delay: TimeInterval = 0, _ completion: (() -> Void)? = nil) {
        SVProgressHUD.dismiss(withDelay: delay, completion: completion)
    }
}
