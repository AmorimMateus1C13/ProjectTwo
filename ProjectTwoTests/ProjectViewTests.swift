//
//  ProjectViewTests.swift
//  ProjectTwoTests
//
//  Created by Mateus Amorim on 08/09/22.
//

import XCTest
@testable import ProjectTwo

class ProjectViewTests: XCTestCase {
    
    let sud = ProjectView()
    
    func testButtonsExist() {
        XCTAssertEqual(sud.flagOne.tag, 0)
        XCTAssertEqual(sud.flagTwo.tag, 1)
        XCTAssertEqual(sud.flagThree.tag, 2)
    }
    
    func testButtonPressed() {
        sud.buttonPressed(sud.flagOne)
    }
}
