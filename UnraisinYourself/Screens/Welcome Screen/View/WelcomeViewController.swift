//
//  WelcomeViewController.swift
//  UnraisinYourself
//
//  Created by Hannie Kim on 10/9/23.
//

import UIKit

final class WelcomeViewController: UIViewController {

    // MARK: - Properties
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 8
        stackView.alignment = .center
        return stackView
    }()
    
    private let nameConfirmationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var nameTextField: UITextField = {
        let textField = PaddedTextField()
        textField.delegate = self
        textField.returnKeyType = .done
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor.lightGray.cgColor
        return textField
    }()
    
    private lazy var nextButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        nameTextField.placeholder = "Hi! What’s your name? 🍇"
        
        setupViews()
    }
    
    // MARK: UI Setup
    
    private func setupViews() {
        view.addSubview(stackView)
        stackView.addArrangedSubviews([nameTextField, nameConfirmationLabel])
        stackView.centerInSuperView()
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(greaterThanOrEqualTo: view.trailingAnchor, constant: -20),
            
            nameTextField.heightAnchor.constraint(equalToConstant: 50),
            nameConfirmationLabel.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        nextButton.setImage(UIImage(systemName: "arrow.right"), for: .normal)
        
        nextButton.backgroundColor = .red
        view.addSubview(nextButton)
        
        nextButton.anchor(
            bottom: view.bottomAnchor,
            trailing: view.trailingAnchor,
            paddingBottom: 20,
            paddingTrailing: 20,
            width: 75,
            height: 50
        )
    }
    
    // MARK: - Actions
    
    @objc func nextButtonTapped() {
        navigationController?.pushViewController(URTabBarController(), animated: true)
    }
}

// MARK: - UITextFieldDelegate Methods

extension WelcomeViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let name = textField.text, !name.isEmpty {
            nameConfirmationLabel.text = "Okay I'll start calling you by \(name) then!\nEdit your name if you'd like me to call you by another name."
        } else {
            nameConfirmationLabel.text = "Enter in your name in the field so I know what to call you by or add your name later in the Settings screen."
        }
        
        textField.resignFirstResponder()
        return true
    }
}
