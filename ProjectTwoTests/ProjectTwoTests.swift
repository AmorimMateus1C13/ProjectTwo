//
//  ProjectTwoTests.swift
//  ProjectTwoTests
//
//  Created by Mateus Amorim on 06/09/22.
//

import XCTest
@testable import ProjectTwo

class ProjectTwoTests: XCTestCase {

    var sud: ProjectView!
    
    func testButtonPressed() {
        let button = UIButton()
        button.addTarget(self, action: #selector(sud.buttonPressed(_:)), for: .touchUpInside)
    }

}
