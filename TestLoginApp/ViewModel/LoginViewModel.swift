//
//  LoginViewModel.swift
//  TestLoginApp
//
//  Created by VIshnu Unnikrishnan  on 07/01/23.
//

import Foundation

class LoginViewModel {
    
    var loginData:Credentials?
    var userArray = [LoginModel]()
    
    var showAlert : (String)->() = {_ in}
    func checkLogin(userName: String, password : String) {
        
        let parsedArray = loadJson(fileName: "Credentials")
        self.userArray = parsedArray?.credentials ?? []

        if let user = userArray.enumerated().first(where: {$0.element.userName == userName}) {
            let userData = user.element
            if(userData.password == password){
                self.showAlert("login successfull")

            } else {
                self.showAlert("Invalid Password")
            }
        
        } else {
            self.showAlert("Invalid Username")
        }
    }
}
