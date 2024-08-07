//
//  HelloWorldTests.swift
//  HelloWorldTests
//
//  Created by 박지혜 on 7/10/24.
//

import XCTest

func isLeap(_ year: Int) -> Bool {
    guard year % 400 != 0 else { return true }
    guard year % 100 != 0 else { return false }
    return year % 4 == 0
}

final class HelloWorldTests: XCTestCase {
    func testEvenlyDivisibleBy4IsLeap() {
        let year = 2020 // Arrange: 입력 준비
        let leap = isLeap(year) // Act: 테스트 대상을 실행
        XCTAssertTrue(leap) // Assert: 출력 확인
    }
    func testEvenlyDivisibleBy100IsNotLeap() {
        // false인지 확인
        XCTAssertFalse(isLeap(2100))
    }
    func testEvenlyDivisibleBy400isLeap() {
        XCTAssertTrue(isLeap(2000))
    }
    func testNotEvenlyDivisibleBy4Or400IsNotLeap() {
        XCTAssertFalse(isLeap(2021))
    }
}
