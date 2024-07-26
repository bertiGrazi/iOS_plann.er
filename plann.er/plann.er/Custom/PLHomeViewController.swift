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

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .zinc950
        
        commonInit()
    }
    
    private func commonInit() {
        setupView()
        setupConstrains()
    }
    
    private func setupView() {
        view.addSubview(logoViewImage)
    }
    
    private func setupConstrains() {
        NSLayoutConstraint.activate([
            logoViewImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoViewImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}

