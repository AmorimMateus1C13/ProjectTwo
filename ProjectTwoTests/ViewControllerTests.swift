//
//  ViewControllerTests.swift
//  ProjectTwoTests
//
//  Created by Mateus Amorim on 08/09/22.
//

import XCTest
@testable import ProjectTwo

class ViewControllerTests: XCTestCase {
    
    let sud = ViewController()
    
    override func setUp() {
        sud.viewDidLoad()
    }
    
    func testViewHieranchy() {
        XCTAssertEqual(sud.view.subviews.count, 1)
    }
    
    func testScoreWhenButtonIsPressed() {
        let button: UIButton = {
            let button = UIButton()
            button.tag = 1
            return button
        }()
        
        sud.scoreWhenButtonIsPressed(button)
        XCTAssertEqual(button.tag, 1)
        
        let button2: UIButton = {
            let button = UIButton()
            button.tag = sud.correctFLag
            return button
        }()
        
        sud.scoreWhenButtonIsPressed(button2)
        XCTAssertEqual(button2.tag, sud.correctFLag)
    }
    
    func testFinishedGameByLimited() {
        sud.limitQuestion = 9
        sud.finishedGameByLimited()
    }
}
