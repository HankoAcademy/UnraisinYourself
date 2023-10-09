//
//  MainViewController.swift
//  UnraisinYourself
//
//  Created by Hannie Kim on 7/20/23.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray4
    
    let drinkButton = UIButton()
    let defaultGoalLabel = UILabel()
    
    let circularView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 25
        view.clipsToBounds = true
        return view
    }()
    
    let userLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hi Thierno"
        label.font = .systemFont(ofSize: 22)
        label.textColor = .black
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray4
        
        setUpHeader()
        setupLayout()
        configureDefaultGoalLabel()
        configureDrinkButton()
    }
    
    func setUpHeader() {
        view.addSubview(circularView)
        view.addSubview(userLabel)
        
        NSLayoutConstraint.activate([
            circularView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            circularView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            circularView.widthAnchor.constraint(equalToConstant: 50),
            circularView.heightAnchor.constraint(equalToConstant: 50),
            
            userLabel.leadingAnchor.constraint(equalTo: circularView.trailingAnchor, constant: 10),
            userLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
    }
    
    private func setupLayout() {
        view.addSubview(defaultGoalLabel)
        view.addSubview(drinkButton)
        
        defaultGoalLabel.translatesAutoresizingMaskIntoConstraints = false
        drinkButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            defaultGoalLabel.topAnchor.constraint(equalTo: userLabel.bottomAnchor, constant: 12),
            defaultGoalLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            drinkButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            drinkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            drinkButton.heightAnchor.constraint(equalToConstant: 50),
            drinkButton.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
    
    private func configureDefaultGoalLabel() {
        defaultGoalLabel.text = "Goal: 1000mL to go"
        defaultGoalLabel.textAlignment = .center
        defaultGoalLabel.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
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
