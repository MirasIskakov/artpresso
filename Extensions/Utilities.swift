//
//  Utilities.swift
//  artpresso
//
//  Created by Miras Iskakov on 24.07.2023.
//

import Foundation
import UIKit

class Utilitirs {
    
    static func styleTextFild(_ textfield: UITextField) {
        
        let bottonLine = CALayer()
        
        bottonLine.frame = CGRect(x: 0, y: textfield.frame.height - 2, width: textfield.frame.width, height: 2)
        
        bottonLine.backgroundColor = UIColor.init(red: 50/255, green: 170/255, blue: 100/255, alpha: 1).cgColor
        
        textfield.borderStyle = .none
        
        textfield.layer.addSublayer(bottonLine)
    }
    
    static func styleFillBotton(_ botton: UIButton) {
        
        botton.backgroundColor = UIColor.init(red: 50/255, green: 170/255, blue: 100/255, alpha: 1)
        botton.layer.cornerRadius = 20.0
        botton.tintColor = UIColor.white
        
    }
    
    static func styleHollowBotton(_ botton: UIButton) {
        
        botton.layer.borderWidth = 2
        botton.layer.borderColor = UIColor.black.cgColor
        botton.layer.cornerRadius = 20.0
        botton.tintColor = UIColor.black
    }
    
    static func isPasswordValid(_ password : String) -> Bool {
        
        let passwordTest = NSPredicate(format: "SELF MATCHES %@",
        "(?=[^a-z]*[a-z])(?=[^0-9]*[0-9])[a-zA-Z0-9!@#$%^&*]{8,}")
        return passwordTest.evaluate(with: password)
    }
    
}
