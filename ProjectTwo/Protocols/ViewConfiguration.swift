//
//  ViewConfiguration.swift
//  ProjectTwo
//
//  Created by Mateus Amorim on 06/09/22.
//

import Foundation

protocol ViewConfiguration {
    func setupConfiguration()
    func viewHierarchy()
    func setupConstrants()
}

extension ViewConfiguration {
    func setupConfiguration() {
        viewHierarchy()
        setupConstrants()
    }
}
