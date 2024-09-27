//
//  Extensions.swift
//  CameraManager
//
//  Created by Anna Kazhuro on 27/09/2024.
//  Copyright © 2024 imaginaryCloud. All rights reserved.
//

import Foundation

extension UIWindow {
    
    static var interfaceOrientation: UIInterfaceOrientation? {
        return UIApplication.shared.windows
            .first?
            .windowScene?
            .interfaceOrientation
    }
    
    static var key: UIWindow? {
        UIApplication
            .shared
            .connectedScenes
            .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
            .last { $0.isKeyWindow }
    }
}
