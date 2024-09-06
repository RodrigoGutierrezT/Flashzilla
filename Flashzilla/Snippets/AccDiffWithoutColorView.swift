//
//  AccDiffWithoutColorView.swift
//  Flashzilla
//
//  Created by Rodrigo on 06-09-24.
//

import SwiftUI

struct AccDiffWithoutColorView: View {
    @Environment(\.accessibilityDifferentiateWithoutColor) var accessibilityDifferentiateWithoutColor
    
    var body: some View {
        HStack {
            if accessibilityDifferentiateWithoutColor {
                Image(systemName: "checkmark.circle")
            }
            
            Text("Success")
        }
        .padding()
        .background(accessibilityDifferentiateWithoutColor ? .black : .green)
        .foregroundColor(.white)
        .clipShape(.capsule)
    }
}

#Preview {
    AccDiffWithoutColorView()
}
