//
//  ViewController.swift
//  plann.er
//
//  Created by Grazi  Berti on 26/07/24.
//

import UIKit

class PLHomeViewController: UIViewController {
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
    
    private lazy var horizontalTextFieldStack = StackViewCuston(orientacion: .horizontal, spaceSize: 10)
    
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
        view.addSubview(logoViewImage)
        view.addSubview(mainLabel)
        view.addSubview(horizontalTextFieldStack)
        horizontalTextFieldStack.addSubview(whereTextField)
        horizontalTextFieldStack.addSubview(continueButton)
    }
    
    private func setupConstrains() {
        NSLayoutConstraint.activate([
            logoViewImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoViewImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            mainLabel.topAnchor.constraint(equalTo: logoViewImage.bottomAnchor, constant: 8),
            mainLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            mainLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            horizontalTextFieldStack.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 12),
            horizontalTextFieldStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            horizontalTextFieldStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            horizontalTextFieldStack.widthAnchor.constraint(equalToConstant: 300),
            horizontalTextFieldStack.heightAnchor.constraint(equalToConstant: 300),
            
            
            whereTextField.topAnchor.constraint(equalTo: horizontalTextFieldStack.topAnchor, constant: 8),
            whereTextField.leadingAnchor.constraint(equalTo: horizontalTextFieldStack.leadingAnchor, constant: 20),
            whereTextField.trailingAnchor.constraint(equalTo: horizontalTextFieldStack.trailingAnchor, constant: -20),
            
            continueButton.topAnchor.constraint(equalTo: whereTextField.bottomAnchor, constant: 8),
            continueButton.leadingAnchor.constraint(equalTo: horizontalTextFieldStack.leadingAnchor, constant: 20),
            continueButton.trailingAnchor.constraint(equalTo: horizontalTextFieldStack.trailingAnchor, constant: -20),
        ])
    }
}

