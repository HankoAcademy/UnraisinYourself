//
//  MainViewController+ViewModel.swift
//  UnraisinYourself
//
//  Created by Hannie Kim on 10/12/23.
//

import Foundation

extension MainViewController {
    struct ViewModel {
        
        // MARK: - Public Properties
        
        let defaultGoalLabelText = "Goal: 1000mL to go"
        let drinkButtonText = "Add Drink"
        
        // MARK: -  Private Properties
        
        private let userDefaults: UserDefaults
        private var nameOfUserAvailable: Bool {
            guard let nameOfUser else { return false }
            return !nameOfUser.isEmpty
        }
        private var nameOfUser: String? {
            userDefaults.string(forKey: UserDefaultsKey.name.rawValue)
        }
        
        // MARK: - Initializer
        
        init(userDefaults: UserDefaults = UserDefaults.standard) {
            self.userDefaults = userDefaults
        }
        
        // MARK: - Methods
    
        func welcomeMessage() -> String {
            if nameOfUserAvailable, let nameOfUser {
                return "Hi \(nameOfUser)!"
            }
            
            return "Hi there!"
        }
    }
}
