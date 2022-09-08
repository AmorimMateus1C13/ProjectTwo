//
//  ProjectView.swift
//  ProjectTwo
//
//  Created by Mateus Amorim on 06/09/22.
//

import Foundation
import UIKit
import SnapKit

protocol ButtonProtocol {
    func scoreWhenButtonIsPressed(_ sender:UIButton)
}

class ProjectView: UIView {
    
    var delegate: ButtonProtocol?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var array =
    ["estonia","france","germany","ireland","italy","monaco","nigeria","poland","russia","spain","uk","us"
    ]
    
    lazy var flagOne: UIButton = {
        let flag = FlagsConfigurations()
        flag.tag = 0
        flag.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        return flag
    }()
    
   lazy var flagTwo: UIButton = {
        let flag = FlagsConfigurations()
        flag.tag = 1
        flag.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        return flag
    }()
    
   lazy var flagThree: UIButton = {
        let flag = FlagsConfigurations()
        flag.tag = 2
        flag.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        return flag
    }()
    
    @objc func buttonPressed(_ sender: UIButton) {
        delegate?.scoreWhenButtonIsPressed(sender)
    }
}

extension ProjectView: ViewConfiguration {
    func viewHierarchy() {
        addSubview(flagOne)
        addSubview(flagTwo)
        addSubview(flagThree)
    }
    
    func setupConstrants() {
        flagOne.snp.makeConstraints { make in
            make.height.equalTo(100)
            make.width.equalTo(200)
            make.top.equalToSuperview().inset(100)
            make.centerX.equalToSuperview()
        }
        
        flagTwo.snp.makeConstraints { make in
            make.top.equalTo(flagOne.snp.bottom).offset(16)
            make.height.equalTo(100)
            make.width.equalTo(200)
            make.centerX.equalToSuperview()
        }

        flagThree.snp.makeConstraints { make in
            make.top.equalTo(flagTwo.snp.bottom).offset(16)
            make.height.equalTo(100)
            make.width.equalTo(200)
            make.centerX.equalToSuperview()
        }
    }
}
