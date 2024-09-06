//
//  TapAreaView.swift
//  Flashzilla
//
//  Created by Rodrigo on 05-09-24.
//

import SwiftUI

struct TapAreaView: View {
    var body: some View {
        VStack {
            Text("Hello")
            
            Spacer()
                .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            Text("World")
        }
        // ContentShape.rect makes the spacer area also tappable
        .contentShape(.rect)
        .onTapGesture {
            print("VStack tapped")
        }
    }
}

#Preview {
    TapAreaView()
}
