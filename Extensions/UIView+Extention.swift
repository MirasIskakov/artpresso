//
//  UIView+Extention.swift
//  artpresso
//
//  Created by swift on 17.07.2023.
//

import UIKit

extension UIView {
   @IBInspectable var cornerRadius: CGFloat {
       get { return self.cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
