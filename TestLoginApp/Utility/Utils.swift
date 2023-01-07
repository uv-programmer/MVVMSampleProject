//
//  Utils.swift
//  TestLoginApp
//
//  Created by VIshnu Unnikrishnan  on 07/01/23.
//

import Foundation
import UIKit


func loadJson(fileName: String) -> Credentials? {
   let decoder = JSONDecoder()
   guard
        let url = Bundle.main.url(forResource: fileName, withExtension: "json"),
        let data = try? Data(contentsOf: url),
        let credentials = try? decoder.decode(Credentials.self, from: data)
   else {
        return nil
   }

   return credentials
}

func showAlert(msg:String,alignment:NSTextAlignment,vc:UIViewController) {
    
    let paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.alignment = alignment
    let messageText = NSAttributedString(
        string: msg,
        attributes: [
            NSAttributedString.Key.paragraphStyle: paragraphStyle,
            NSAttributedString.Key.font: UIFont(name: "Helvetica Neue", size: 15)
        ]
    )
    
    let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
    
    alert.setValue(messageText, forKey: "attributedMessage")
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
    }))
    vc.present(alert, animated: true)
}
