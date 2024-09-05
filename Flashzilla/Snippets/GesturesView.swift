//
//  GesturesView.swift
//  Flashzilla
//
//  Created by Rodrigo on 04-09-24.
//

import SwiftUI

struct GesturesView: View {
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Double tap!")
                .onTapGesture(count: 2) {
                    print("Double tapped!")
                }
            
            Spacer()
            
            Text("Long Tap")
                .onLongPressGesture(minimumDuration: 2) {
                    print("Long press!")
                } onPressingChanged: { inProgress in
                    // onPressingChanged executes as son as the  button is pressed or let go or completed aka responds to state change
                    print("In progress: \(inProgress)")
                }
            
            Spacer()
                
        }
    }
}

#Preview {
    GesturesView()
}
