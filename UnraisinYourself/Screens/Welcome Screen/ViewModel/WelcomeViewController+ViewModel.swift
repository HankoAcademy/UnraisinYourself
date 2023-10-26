//
//  WelcomeViewController+ViewModel.swift
//  UnraisinYourself
//
//  Created by Hannie Kim on 10/26/23.
//

import Foundation

extension WelcomeViewController {
    struct ViewModel {
        
        // MARK: - Properties
        
        private let userDefaults: UserDefaults
       
        // MARK: - Initializer
        
        init(userDefaults: UserDefaults = UserDefaults.standard) {
            self.userDefaults = userDefaults
        }
        
        // MARK: - Methods
        
        func saveName(_ name: String) {
            userDefaults.set(name, forKey: "name")
        }
    }
}
