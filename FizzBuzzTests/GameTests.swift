//
//  GameTests.swift
//  FizzBuzz
//
//  Created by William L. Marr III on 7/14/16.
//  Copyright © 2016 William L. Marr III. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayThatTheScoreIsIncremented() {
        game.play("string")
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnTwoPlaysThatTheScoreEqualsTwo() {
        game.play("string")
        game.play("string")
        XCTAssertTrue(game.score == 2)
    }
    
    func testIfMoveIsCorrect() {
        // Set score to 2 so that the next play increments it to 3
        // which means that the next move should be "Fizz".
        game.score = 2
        let result = game.play("Fizz")
        XCTAssertEqual(result, true)
    }
}