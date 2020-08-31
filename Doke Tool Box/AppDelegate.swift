//
//  AppDelegate.swift
//  Doke Tool Box
//
//  Created by 妙立斌 on 2020/7/5.
//  Copyright © 2020 Pinton. All rights reserved.
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    @IBOutlet weak var menu: NSMenu!
    
    var window: NSWindow!
    //设置状态栏按钮宽度
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        statusItem.menu = menu
        if let button = statusItem.button {
            button.image = NSImage(named: "statusIcon")
        }
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    //退出App
    @IBAction func quitApp(_ sender: Any) {
        NSApplication.shared.terminate(self)
    }
    //交付时间码
    @IBAction func deliveryTimeCode(_ sender: Any) {
        _ = TimeCode(prefix: "")
    }
    
}

