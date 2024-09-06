//
//  HitTestingView.swift
//  Flashzilla
//
//  Created by Rodrigo on 05-09-24.
//

import SwiftUI

struct HitTestingView: View {
    var body: some View {
        VStack {
            ZStack {
                // Mesh around every object respecting the shapes
                Rectangle()
                    .fill(.blue)
                    .frame(width: 200, height: 200)
                    .onTapGesture {
                        print("Rectangle tapped!")
                    }
                
                Circle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .onTapGesture {
                        print("Circle tapped!")
                    }
            }
            
            Spacer()
            
            ZStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 200, height: 200)
                    .onTapGesture {
                        print("Rectangle tapped!")
                    }
                
                Circle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .onTapGesture {
                        print("Circle tapped!")
                    }
                    // ignores the circle only the rectangle gets tapped
                    .allowsHitTesting(false)
            }
            
            Spacer()
            
            ZStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 200, height: 200)
                    .onTapGesture {
                        print("Rectangle tapped!")
                    }
                
                Circle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    // expand the circle hitbox to be a invisible rectangle
                    .contentShape(.rect)
                    .onTapGesture {
                        print("Circle tapped!")
                    }
            }
        }
    }
}

#Preview {
    HitTestingView()
}
