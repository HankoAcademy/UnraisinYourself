//
//  PaddedTextField.swift
//  UnraisinYourself
//
//  Created by Hannie Kim on 10/12/23.
//

import UIKit

final class PaddedTextField: UITextField {
    let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10) // Adjust the padding as needed
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let paddedBounds = bounds.inset(by: padding)
        return super.textRect(forBounds: paddedBounds)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let paddedBounds = bounds.inset(by: padding)
        return super.editingRect(forBounds: paddedBounds)
    }
}
