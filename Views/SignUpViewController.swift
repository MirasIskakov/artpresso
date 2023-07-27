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
        
        // hide error label
        errorLabel.alpha = 0
        //style elements
        Utilitirs.styleTextFild(firstNameTextField)
        Utilitirs.styleTextFild(lastNameTextField)
        Utilitirs.styleTextFild(emailTextField)
        Utilitirs.styleTextFild(passwordTextField)
        
        Utilitirs.styleFillBotton(signUpButton)
    
    }
    
    // Проветка текстФилда на корекнтое заполнение
    func validateFialds() -> String? {
        
        if ((firstNameTextField.text?) != nil) {
            
        }
        
        
        return nil
    }
    
    
    
    @IBAction func signUpTapped(_ sender: Any) {
        
        // Validate the fialds
        
        // Create the user
        
        // transition to the home screan
    }
    
}
