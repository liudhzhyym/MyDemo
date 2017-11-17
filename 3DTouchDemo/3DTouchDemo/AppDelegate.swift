//
//  AppDelegate.swift
//  3DTouchDemo
//
//  Created by 刘彦玮 on 16/3/21.
//  Copyright © 2016年 刘彦玮. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    // Override point for customization after application launch.
    registHomeScreenQuickActions();
    return true
  }

  func applicationWillResignActive(application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(application: UIApplication) {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }
  
  //动态注册Home Screen Quick Actions
  func registHomeScreenQuickActions(){
    let item1 = UIApplicationShortcutItem(type: "com.mycompany.myapp.newmessage", localizedTitle: "title", localizedSubtitle: "subtitle", icon: UIApplicationShortcutIcon(type: .Home), userInfo: nil);
    // UIApplicationShortcutItem 代表一个item
    // type： 唯一标示符的属性
    // localizedTitle: 显示的标题
    // localizedSubtitle: 显示的二级标题
    // icon：显示的图片，可以自定义，也可以使用系统提供的样式
    // userInfo: 包含一些信息
    
    // 自定义的icon
    //icon:UIApplicationShortcutIcon(templateImageName: "like")
    UIApplication.sharedApplication().shortcutItems = [item1];
  }
  
  //接收Home Screen Quick Actions启动参数
  func application(application: UIApplication, performActionForShortcutItem shortcutItem: UIApplicationShortcutItem, completionHandler: (Bool) -> Void) {
    
      NSLog("%@", shortcutItem);
      if let userInfo = shortcutItem.userInfo {
        NSLog("userinfo:%@", userInfo);
      }
  }
}

