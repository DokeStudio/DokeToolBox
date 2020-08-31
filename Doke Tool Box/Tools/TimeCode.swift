//
//  DeliveryTimeCode.swift
//  Doke Tool Box
//
//  Created by 妙立斌 on 2020/7/5.
//  Copyright © 2020 Pinton. All rights reserved.
//

import Foundation
import AppKit
import SwiftUI

class TimeCode {
    init(prefix:String) {
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "YYYYMMddHHmm"// 自定义时间格式
        let time = dateformatter.string(from: Date())
        let resultStr = prefix+time
        print("resultStr: \(resultStr)")// 当前系统时间
        //写入剪切板
        let pastboard = NSPasteboard.general
        pastboard.clearContents()
        let result = pastboard.setString(resultStr, forType: .string)
        print(result)
    }
}
