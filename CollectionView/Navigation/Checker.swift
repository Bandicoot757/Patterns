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
    
    func checkCredentials(value: String) -> String {
        if value == "login" {
            return login
        } else if value == "password" {
            return password
        }
        return ""
    }
}

class Authorizer: LoginViewControllerDelegate {
    
    func сheckLogin(login: String) -> Bool {
        if login == Checker.shared.checkCredentials(value: "login") {
            return true
        } else {
            return false
        }
    }
    
    func checkPassword(password: String) -> Bool {
        if password == Checker.shared.checkCredentials(value: "password") {
            return true
        } else {
            return false
        }
    }
}
