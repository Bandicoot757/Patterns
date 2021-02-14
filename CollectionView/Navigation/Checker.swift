//
//  Checker.swift
//  Navigation
//
//  Created by Stanislav Leontyev on 28.01.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class Checker: NSObject {
    
    static let checker: Checker = Checker(login: "admin", password: "admin")
    
    var login: String?
    var password: String?
    
    private init(login: String, password: String) {
        super.init()
        self.login = login
        self.password = password
    }
    
}

class Authorizer: LoginViewControllerDelegate {
    
    func сheckLogin(login: String) -> Bool {
        if login == Checker.checker.login {
            return true
        } else {
            return false
        }
    }
    
    func checkPassword(password: String) -> Bool {
        if password == Checker.checker.password {
            return true
        } else {
            return false
        }
    }
    
}
