//
//  ViewController.swift
//  artpresso
//
//  Created by Miras Iskakov on 23.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let userDefaults = UserDefaults.standard.bool(forKey: "hasLaunched")

    override func viewDidLoad() {
        super.viewDidLoad()
        checkForUnboard()
        setUpElemants()
        // Do any additional setup after loading the view.
    }
    
    func setUpElemants() {
        
    }
    
    func checkForUnboard(){
        if !userDefaults{
            let vc = storyboard?.instantiateViewController(identifier: "onboard") as! OnboardingViewController
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        }
    }
    


}
