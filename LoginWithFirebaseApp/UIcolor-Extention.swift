//
//  UIColor-Extention.swift
//  LoginWithFirebaseApp
//
//  Created by nonoho.honda on 2020/05/12.
//  Copyright © 2020 nonoho.honda. All rights reserved.
//

import UIKit

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat ) -> UIColor {
        return self.init(red: red / 255, green: green / 255, blue: blue  / 255, alpha: 1)
    }
}
