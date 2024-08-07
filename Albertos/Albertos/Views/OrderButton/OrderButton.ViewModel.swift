//
//  OrderButton.ViewModel.swift
//  Albertos
//
//  Created by 박지혜 on 7/12/24.
//

import Combine

extension OrderButton {

    class ViewModel: ObservableObject {

        @Published private(set) var text = "Your Order"

        private(set) var cancellables = Set<AnyCancellable>()

        init(orderController: OrderController) {
            orderController.$order
                .sink { order in
                    self.text = order.items.isEmpty ? "Your Order" : "Your Order $\(String(format: "%.2f", order.total))"
                }
                .store(in: &cancellables)
        }
    }
}
