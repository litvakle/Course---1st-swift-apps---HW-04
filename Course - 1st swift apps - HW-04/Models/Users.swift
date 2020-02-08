//
//  Users.swift
//  Course - 1st swift apps - HW-04
//
//  Created by Lev Litvak on 08.02.2020.
//  Copyright © 2020 Lev Litvak. All rights reserved.
//

final class Users {
    
    static var shared = Users()
    
    private var users = [User(username: "admin", password: "admin")]
    
    var usersList: String {
        var result = ""
        
        for user in users {
            result += user.username + "\n"
        }
        
        return result
    }
    
    func registerNewUser(username: String, password: String) -> (result: Bool, info: String) {
        if username.count == 0 {
            return (false, "You should enter username first")
        }
        
        if password.count == 0 {
            return (false, "You should enter password first")
        }
        
        if users.contains(where: { $0.username == username }) {
            return (false, "User \(username) already exists")
        }
        
        users.append(User(username: username, password: password))
        
        return (true, "User \(username) successfully registered")
    }
    
    func checkUsernamePassword(username: String, password: String) -> Bool {
        return users.contains(where: { $0.username == username && $0.password == password} )
    }
    
    func getPassword(username: String) -> String? {
        guard let user = users.first(where: { $0.username == username } ) else { return nil }

        return user.password
    }
}
