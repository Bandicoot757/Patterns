//
//  Checker.swift
//  Navigation
//
//  Created by Stanislav Leontyev on 28.01.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class Checker: NSObject {
    
    static let shared: Checker = Checker()
    
    private let login = "admin"
    private let password = "admin"
    
    private override init() {
        super.init()
    }
    
    func checkCredentials(login: String, password: String) -> Bool {
        if login == self.login && password == self.password {
            return true
        } else {
            return false
        }
    }
    
}

class Authorizer: LoginViewControllerDelegate {
    
//    func сheckLogin(login: String) -> Bool {
//        if login == Checker.shared.login {
//            return true
//        } else {
//            return false
//        }
//    }
//
//    func checkPassword(password: String) -> Bool {
//        if password == Checker.shared.password {
//            return true
//        } else {
//            return false
//        }
//    }
    
}
