//
//  User.swift
//  Course - 1st swift apps - HW-04
//
//  Created by Lev Litvak on 08.02.2020.
//  Copyright © 2020 Lev Litvak. All rights reserved.
//

struct User {
    
    private(set) var username: String
    private(set) var password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}
