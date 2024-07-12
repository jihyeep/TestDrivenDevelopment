//
//  OrderControllerTests.swift
//  AlbertosTests
//
//  Created by 박지혜 on 7/12/24.
//

import XCTest

@testable import Albertos

final class OrderControllerTests: XCTestCase {
    func testInitialValue() {
        let controller = OrderController()
        
        XCTAssertTrue(controller.order.items.isEmpty)
    }
    
    // 주문 컨트롤러에 있는 아이템을 찾으면 isItemInOrder가 true를 반환하는지 확인
    func testWhenItemInOrderReturnsTrue() {
        let controller = OrderController()
        controller.addToOrder(item: .fixture(name: "a name"))
        
        XCTAssertTrue(controller.isItemInOrder(.fixture(name: "a name")))
    }
    
    // 주문 컨트롤러에 없는 아이템을 찾으면 isItemInOrder가 false를 반환하는지 확인
    func testWhenItemNotInOrderReturnsFalse() {
        let controller = OrderController()
        controller.addToOrder(item: .fixture(name: "a name"))
        
        XCTAssertFalse(controller.isItemInOrder(.fixture(name: "another name")))
    }
}
