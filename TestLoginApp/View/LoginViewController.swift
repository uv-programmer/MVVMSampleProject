//
//  ViewController.swift
//  TestLoginApp
//
//  Created by VIshnu Unnikrishnan  on 07/01/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    var loginVM = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewModel()
        
    }

    @IBAction func loginBtnAction(_ sender: Any) {
        guard !(usernameTxtField.text!.isEmpty) else {
            showAlert(msg: "Please enter user name", alignment: .center, vc: self)
            return
        }
        
        guard !(passwordTxtField.text!.isEmpty) else {
            showAlert(msg: "Please enter valid password", alignment: .center, vc: self)
            return
        }
       
        loginVM.checkLogin(userName: usernameTxtField.text ?? "", password: passwordTxtField.text ?? "")
        
    }
    
    func configureViewModel() {
        
        loginVM.showAlert = { errorMsg in
            DispatchQueue.main.async {
                showAlert(msg: errorMsg, alignment: .center, vc: self)
                return
            }
        }
    }
}

