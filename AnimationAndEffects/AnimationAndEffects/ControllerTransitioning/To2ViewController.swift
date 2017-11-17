//
//  To2ViewController.swift
//  AnimationAndEffects
//
//  Created by ZTELiuyw on 15/11/2.
//  Copyright © 2015年 liuyanwei. All rights reserved.
//

import UIKit

class To2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.greenColor()
        //下滑关闭文字
        let lbl = UILabel(frame:view.frame)
        lbl.text = "下滑关闭"
        lbl.textAlignment = .Center
        view.addSubview(lbl)
        
        
        //2秒钟自动关闭
        //let t:dispatch_time_t = dispatch_time(DISPATCH_TIME_NOW, Int64(2 * NSEC_PER_SEC))
        //dispatch_after(t, dispatch_get_main_queue()) { () -> Void in
        //self.dismissViewControllerAnimated(true, completion: nil)
        //}
    }
    
    override func viewWillAppear(animated: Bool) {
        NSLog("To2ViewController viewWillAppear")
    }
    
    override func viewDidAppear(animated: Bool) {
        NSLog("To2ViewController viewDidAppear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        NSLog("To2ViewController viewDidDisappear")
    }
   
}

