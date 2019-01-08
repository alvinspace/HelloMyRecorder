//
//  UINavigationController+Ext.swift
//  HelloMyRecorder
//
//  Created by 林欣鼎 on 2019/1/7.
//  Copyright © 2019年 林欣鼎. All rights reserved.
//

import Foundation
import UIKit

// 嵌入導覽控制器時，視圖控制器的狀態列會使用導覽控制器所定義的狀態列樣式
// 可利用childForStatusBarStyle 控制視圖控制器的狀態列樣式
// 參照到頂層視圖控制器(頂層視圖控制器會隨時改變，
// 例如當細節視圖控制器RestaurantDetailViewController顯示後，它就變成頂層視圖控制器)
extension UINavigationController {
    
    override open var childForStatusBarStyle: UIViewController? {
        return self.topViewController
    }
}
