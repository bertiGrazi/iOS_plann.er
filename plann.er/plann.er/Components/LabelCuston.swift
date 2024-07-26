//
//  LabelCustom.swift
//  plann.er
//
//  Created by Grazi  Berti on 26/07/24.
//

import UIKit

final class LabelCuston: UILabel {
    var title: String
    var titleFont: UIFont!
    var titleColor: UIColor
    var alignment: NSTextAlignment
    
    init(title: String, titleFont: UIFont!, titleColor: UIColor, alignment: NSTextAlignment) {
        self.title = title
        self.titleFont = titleFont
        self.titleColor = titleColor
        self.alignment = alignment
        super.init(frame: .zero)
        setupLbabel()
    }
    
    required init?(coder: NSCoder) { nil }
    
    
    private func setupLbabel()  {
        text = title
        font = titleFont
        textColor = titleColor
        textAlignment = alignment
        enableView()
    }
}


