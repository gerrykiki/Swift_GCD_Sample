//
//  ViewController.swift
//  GCD_Function
//
//  Created by Po wei Lin on 2018/9/28.
//  Copyright © 2018 Wistron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        GCD_Sync_Queue();
        // Do any additional setup after loading the view, typically from a nib.
    }
    func GCD_Sync_Queue(){
        let serialQueue: DispatchQueue = DispatchQueue(label: "serialQueue")
        // 驗證同步執行的結果
        
        serialQueue.sync {
            for i in 1 ... 10 {
                print("i: \(i)")
            }
        }
        
        for j in 100 ... 109 {
            print("j: \(j)")
        }
    }

}

