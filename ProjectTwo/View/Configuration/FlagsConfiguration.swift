//
//  FlagsConfiguration.swift
//  ProjectTwo
//
//  Created by Mateus Amorim on 06/09/22.
//

import Foundation
import UIKit

class FlagsConfigurations: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultSettings()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func defaultSettings() {
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 1
    }
}
