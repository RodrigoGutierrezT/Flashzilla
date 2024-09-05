//
//  RotateGestureView.swift
//  Flashzilla
//
//  Created by Rodrigo on 04-09-24.
//

import SwiftUI

struct RotateGestureView: View {
    @State private var currentAmount = 0.0
    @State private var finalAmount = 1.0
    
    var body: some View {
        Text("Hello wolrd!")
            .scaleEffect(finalAmount + currentAmount)
            .gesture(
                MagnifyGesture()
                    .onChanged { value in
                        // value.magnification defaults to 1
                        currentAmount = value.magnification - 1
                    }
                    .onEnded{ value in
                        finalAmount += currentAmount
                        currentAmount = 0
                    }
            )
    }
}

#Preview {
    RotateGestureView()
}
