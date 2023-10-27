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
       
        private enum UserDefaultsKey: String {
            case name = "name"
        }
        
        var nameOfUser: String? {
            userDefaults.string(forKey: UserDefaultsKey.name.rawValue)
        }
        
        var hasSavedName: Bool {
            nameOfUser != nil
        }
        
        // MARK: - Initializer
        
        init(userDefaults: UserDefaults = UserDefaults.standard) {
            self.userDefaults = userDefaults
        }
        
        // MARK: - Methods
        
        func saveName(_ name: String?) {
            guard let name else {
                print("User did not enter a name to save")
                return
            }
            
            userDefaults.set(name, forKey: UserDefaultsKey.name.rawValue)
        }
    }
}
