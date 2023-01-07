//
//  Credentials.swift
//  TestLoginApp
//
//  Created by VIshnu Unnikrishnan  on 07/01/23.
//

import Foundation

struct Credentials: Codable {
    var credentials:[LoginModel]?
}

struct LoginModel: Codable {
    var userName: String?
    var password: String?}

