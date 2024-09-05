//
//  RotationGestureView.swift
//  Flashzilla
//
//  Created by Rodrigo on 04-09-24.
//

import SwiftUI

struct RotationGestureView: View {
    @State private var currentAmount = Angle.zero
    @State private var finalAmount = Angle.zero
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .rotationEffect(currentAmount + finalAmount)
            .gesture(
                RotateGesture()
                    .onChanged { value in
                        // value.magnification defaults to 1
                        currentAmount = value.rotation
                    }
                    .onEnded{ value in
                        finalAmount += currentAmount
                        currentAmount = .zero
                    }
            )
    }
}

#Preview {
    RotationGestureView()
}
