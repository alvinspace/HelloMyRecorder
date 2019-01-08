//
//  UIColor+Ext.swift
//  HelloMyRecorder
//
//  Created by 林欣鼎 on 2019/1/7.
//  Copyright © 2019年 林欣鼎. All rights reserved.
//

import Foundation
import UIKit

//*備註：
// CGFloat 是個變色龍
// I5(32位元)之前會給float開出4bytes記憶體
// I5S(64位元)之後會給float開出8bytes記憶體

extension UIColor {
    // 使用建構子定義顏色不需要再輸入 / 255.0 ,輸入整數即可
    convenience init(red: Int, green: Int, blue: Int) {
        let redValue = CGFloat(red) / 255.0
        let greenValue = CGFloat(green) / 255.0
        let blueValue = CGFloat(blue) / 255.0
        self.init(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }
    
    // 自行定義顏色
    // 範例：let s = UIColor.specialGreen()
    class func specialGreen() -> UIColor {
        return UIColor(red: 0.5, green: 0.8, blue: 0.5, alpha: 1.0)
    }
}
