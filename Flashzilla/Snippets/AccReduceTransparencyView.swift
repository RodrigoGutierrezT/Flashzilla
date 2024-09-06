//
//  AccReduceTransparencyView.swift
//  Flashzilla
//
//  Created by Rodrigo on 06-09-24.
//

import SwiftUI

struct AccReduceTransparencyView: View {
    @Environment(\.accessibilityReduceTransparency) var accessibilityReduceTransparency
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding()
            .background(accessibilityReduceTransparency ? .black : .black.opacity(0.5))
            .foregroundStyle(.white)
            .clipShape(.capsule)
    }
}

#Preview {
    AccReduceTransparencyView()
}
