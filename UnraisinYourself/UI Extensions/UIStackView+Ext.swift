//
//  UIStackView+Ext.swift
//  UnraisinYourself
//
//  Created by Hannie Kim on 10/9/23.
//

import Foundation
import UIKit

extension UIStackView {
    
    /// Adds an array of Views as arranged subviews.
    func addArrangedSubviews(_ views: [UIView]) {
        for view in views {
            addArrangedSubview(view)
        }
    }
}
