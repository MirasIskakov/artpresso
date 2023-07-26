//
//  LoginViewController.swift
//  artpresso
//
//  Created by Miras Iskakov on 23.07.2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()

        // Do any additional setup after loading the view.
    }
    
    func setUpElements() {
        
        errorLabel.alpha = 0
        
        Utilitirs.styleTextFild(emailTextField)
        Utilitirs.styleTextFild(passwordTextField)
        Utilitirs.styleFillBotton(loginButton)
        
    }

    
    
    @IBAction func loginTapped(_ sender: Any) {
    }
}
