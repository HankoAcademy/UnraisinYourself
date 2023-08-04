//
//
// UnraisinYourself
// 
// URTabBarController.swift
//
// Created by Royal Blue Software
// 


import UIKit

class URTabBarController: UITabBarController {

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [createHomeNavController(), createSocialNavController(), createSettingsNavController()]
    }
    
    
    // MARK: - Create Tab ViewControllers Functions
    
    func createHomeNavController() -> UINavigationController {
        let homeViewController = MainViewController()
        homeViewController.title = "Home"
        homeViewController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        return UINavigationController(rootViewController: homeViewController)
    }
    
    func createSocialNavController() -> UINavigationController {
        let socialViewController = SocialViewController()
        socialViewController.title = "Social"
        socialViewController.tabBarItem = UITabBarItem(title: "Social", image: UIImage(systemName: "person.3"), tag: 1)
        return UINavigationController(rootViewController: socialViewController)
    }
    
    func createSettingsNavController() -> UINavigationController {
        let settingsViewController = SettingsViewController()
        settingsViewController.title = "Settings"
        settingsViewController.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 2)
        return UINavigationController(rootViewController: settingsViewController)
    }

}
