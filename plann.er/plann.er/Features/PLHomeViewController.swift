//
//  ViewController.swift
//  plann.er
//
//  Created by Grazi  Berti on 26/07/24.
//

import UIKit

class PLHomeViewController: UIViewController, UITextFieldDelegate {
    
    private lazy var homeContainer: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.enableView()
        scrollView.showsVerticalScrollIndicator = true
        return scrollView
    }()
    
    private lazy var logoViewImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Logo")
        imageView.contentMode = .scaleAspectFit
        imageView.enableView()
        return imageView
    }()
    
    private lazy var mainLabel = LabelCuston(
        title: "Convide seus amigos e planeje sua\npróxima viagem!",
        titleFont: .systemFont(ofSize: 16),
        titleColor: .zinc400,
        alignment: .center
    )
    
    private lazy var horizontalTextFieldStack: UIStackView = {
        let stackView = UIStackView()
        stackView.enableView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .fill
        stackView.distribution = .fill
        return stackView
    }()
    
    // horizontalTextFieldStack inside
    private lazy var whereTextField: UITextField = {
        let textField = UITextField()
        textField.enableView()
        textField.autocorrectionType = .no
        textField.backgroundColor = .zinc900
        textField.keyboardType = .default
        textField.attributedPlaceholder = NSAttributedString(string: "Para onde?", attributes: [NSAttributedString.Key.foregroundColor: UIColor.zinc400])
        textField.textColor = .zinc400
        textField.clipsToBounds = true
        textField.delegate = self
        return textField
    }()
    
    private lazy var continueButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lime300
        button.setTitle("Continuar", for: .normal)
        button.setTitleColor(.lime950, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(tappedContinueButton), for: .touchUpInside)
        button.enableView()
        
        return button
    }()
    
    @objc
    func tappedContinueButton() {
        print("tappedLoginButton")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .zinc950
        
        commonInit()
    }
    
    private func commonInit() {
        setupView()
        setupConstrains()
        
        mainLabel.numberOfLines = 0
        horizontalTextFieldStack.backgroundColor = .zinc900
        horizontalTextFieldStack.layer.cornerRadius = 12
    }
    
    private func setupView() {
        view.addSubview(homeContainer)
        homeContainer.addSubview(logoViewImage)
        homeContainer.addSubview(mainLabel)
        homeContainer.addSubview(horizontalTextFieldStack)
        horizontalTextFieldStack.addSubview(whereTextField)
        horizontalTextFieldStack.addSubview(continueButton)
    }
    
    private func setupConstrains() {
        NSLayoutConstraint.activate([
            homeContainer.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            homeContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            homeContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            homeContainer.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            logoViewImage.centerXAnchor.constraint(equalTo: homeContainer.centerXAnchor),
            logoViewImage.centerYAnchor.constraint(equalTo: homeContainer.centerYAnchor),
            
            mainLabel.topAnchor.constraint(equalTo: logoViewImage.bottomAnchor, constant: 8),
            mainLabel.leadingAnchor.constraint(equalTo: homeContainer.leadingAnchor, constant: 20),
            mainLabel.trailingAnchor.constraint(equalTo: homeContainer.trailingAnchor, constant: -20),
            
            horizontalTextFieldStack.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 12),
            horizontalTextFieldStack.leadingAnchor.constraint(equalTo: homeContainer.leadingAnchor, constant: 20),
            horizontalTextFieldStack.trailingAnchor.constraint(equalTo: homeContainer.trailingAnchor, constant: -20),
            horizontalTextFieldStack.heightAnchor.constraint(equalToConstant: 140),
            
            whereTextField.topAnchor.constraint(equalTo: horizontalTextFieldStack.topAnchor, constant: 8),
            whereTextField.leadingAnchor.constraint(equalTo: horizontalTextFieldStack.leadingAnchor, constant: 20),
            whereTextField.trailingAnchor.constraint(equalTo: horizontalTextFieldStack.trailingAnchor, constant: -20),
            whereTextField.widthAnchor.constraint(equalToConstant: 300),
            whereTextField.heightAnchor.constraint(equalToConstant: 54),
            
            continueButton.topAnchor.constraint(equalTo: whereTextField.bottomAnchor, constant: 8),
            continueButton.leadingAnchor.constraint(equalTo: horizontalTextFieldStack.leadingAnchor, constant: 20),
            continueButton.trailingAnchor.constraint(equalTo: horizontalTextFieldStack.trailingAnchor, constant: -20),
            continueButton.widthAnchor.constraint(equalToConstant: 300),
            continueButton.heightAnchor.constraint(equalToConstant: 54),
        ])
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

