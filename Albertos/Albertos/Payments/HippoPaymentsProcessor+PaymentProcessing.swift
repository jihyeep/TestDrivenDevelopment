//
//  HippoPaymentsProcessor+PaymentProcessing.swift
//  Albertos
//
//  Created by 박지혜 on 7/12/24.
//

import Combine
//import HippoPayments

extension HippoPaymentsProcessor: PaymentProcessing {

    func process(order: Order) -> AnyPublisher<Void, Error> {
        return Future { promise in
            self.processPayment(
                payload: order.hippoPaymentsPayload,
                onSuccess: { promise(.success(())) },
                onFailure: { promise(.failure($0)) }
            )
        }
        .eraseToAnyPublisher()
    }
}

