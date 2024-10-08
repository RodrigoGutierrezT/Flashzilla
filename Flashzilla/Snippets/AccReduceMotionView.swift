//
//  AccReduceMotionView.swift
//  Flashzilla
//
//  Created by Rodrigo on 06-09-24.
//

import SwiftUI

func withOptionalAnimation<Result>(_ animation: Animation? = .default, _ body: () throws -> Result) rethrows -> Result {
    if UIAccessibility.isReduceMotionEnabled {
        return try body()
    } else {
        return try withAnimation(animation, body)
    }
}

struct AccReduceMotionView: View {
    @Environment(\.accessibilityReduceMotion) var accessibilityReduceMotion
    @State private var scale = 1.0
    
    var body: some View {
        Button("Hello World!") {
            withOptionalAnimation {
                scale *= 1.5
            }
        }
        .scaleEffect(scale)
            
    }
}

#Preview {
    AccReduceMotionView()
}
