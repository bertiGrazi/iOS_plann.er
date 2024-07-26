//
//  StackViewCuston.swift
//  plann.er
//
//  Created by Grazi  Berti on 26/07/24.
//
import UIKit

final class StackViewCuston: UIStackView {
    
    var orientacion: NSLayoutConstraint.Axis
    var spaceSize: CGFloat?
    
    init(orientacion: NSLayoutConstraint.Axis, spaceSize: CGFloat?) {
        self.orientacion = orientacion
        self.spaceSize = spaceSize
        super.init(frame: .zero)
        setupStackView()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupStackView() {
        axis = orientacion
        spacing = spaceSize ?? 0
        enableView()
    }
}
