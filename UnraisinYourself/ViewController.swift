//
//  ViewController.swift
//  UnraisinYourself
//
//  Created by Hannie Kim on 7/20/23.
//

import UIKit

class ViewController: UIViewController {
    
    let drinkButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        setupLayout()
        configureDrinkButton()
    }
    
    private func setupLayout() {
        view.addSubview(drinkButton)
        
        drinkButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            drinkButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            drinkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            drinkButton.heightAnchor.constraint(equalToConstant: 50),
            drinkButton.widthAnchor.constraint(equalToConstant: 150)
        ])
        
    }
    
    private func configureDrinkButton() {
        drinkButton.setTitle("Add Drink", for: .normal)
        drinkButton.backgroundColor = .systemTeal
        drinkButton.layer.cornerRadius = 12
        drinkButton.addTarget(self, action: #selector(drinkButtonTapped), for: .touchUpInside)
    }
    
    @objc func drinkButtonTapped() {
        print("Added a drink")
    }
    
    
}

