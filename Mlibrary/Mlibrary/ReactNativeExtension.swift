//
//  ReactNativeExtension.swift
//  Mlibrary
//
//  Created by Halome on 21/07/2022.
//

import Foundation
import UIKit

import React

extension UIViewController {
    
    func sayHello() {
        print("Hello bro...")
    }
    @objc func viewReactNative(_ appName: String){
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
        let mockData:NSDictionary = ["scores":
            [
                ["name":"Tiến", "value":"9"],
                ["name":"Tỷ", "value":"10"]
            ]
        ]
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: appName,
            initialProperties: mockData as [NSObject : AnyObject],
            launchOptions: nil
        )
        let vc = UIViewController()
        vc.view = rootView
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
}
