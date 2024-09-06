//
//  PriorityGestureView.swift
//  Flashzilla
//
//  Created by Rodrigo on 04-09-24.
//

import SwiftUI

struct PriorityGestureView: View {
    var body: some View {
        
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .onTapGesture {
                    print("Inner Text tapped")
                }
        }
        .highPriorityGesture(
            // highPriorityGesture over default behavior (default: inner child)
            TapGesture()
                .onEnded {
                    print("VStak tapped")
                }
        )
        
        VStack {
            Text("Hellow, World!")
                .onTapGesture {
                    print("Inner text tapped")
                }
        }
        .simultaneousGesture(
            // Inner gesture and outter gesture at the same time
            TapGesture()
                .onEnded {
                    print("VStack tapped")
                }
        )
    }
}

#Preview {
    PriorityGestureView()
}
