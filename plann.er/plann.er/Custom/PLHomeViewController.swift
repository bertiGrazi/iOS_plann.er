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
            
        ])
    }
}

