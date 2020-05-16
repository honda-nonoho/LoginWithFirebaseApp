//
//  User.swift
//  LoginWithFirebaseApp
//
//  Created by nonoho.honda on 2020/05/16.
//  Copyright © 2020 nonoho.honda. All rights reserved.
//

import Foundation
import Firebase

struct User {
    
    let name: String
    let createdAt: Timestamp
    let email: String
    
    init(dic: [String: Any]) {
        self.name = dic["name"] as! String
        self.createdAt = dic["createdAt"] as! Timestamp
        self.email = dic["email"] as! String
    }
    
}
