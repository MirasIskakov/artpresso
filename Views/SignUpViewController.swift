//
//  SignUpViewController.swift
//  artpresso
//
//  Created by Miras Iskakov on 23.07.2023.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpElements()

        // Do any additional setup after loading the view.
    }
    

    func setUpElements() {
        errorLabel.alpha = 0
        
        
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
    }
    
}
