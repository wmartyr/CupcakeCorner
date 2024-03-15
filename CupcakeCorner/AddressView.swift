//
//  AddressView.swift
//  CupcakeCorner
//
//  Created by Woodrow Martyr on 3/3/2024.
//

import SwiftUI

struct AddressView: View {
    @Bindable var order = Order()
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name", text: $order.name)
                    TextField("Street Address", text: $order.streetAddress)
                    TextField("City", text: $order.city)
                    TextField("Zip", text: $order.zip)
                }
                Section {
                    NavigationLink("Checkout") {
                        CheckoutView(order: order)
                    }
                }
                .disabled(order.hasValidAddress == false)
            }
            .navigationTitle("Delivery Details")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    AddressView(order: Order())
}
