//
//  DragGestureView.swift
//  Flashzilla
//
//  Created by Rodrigo on 05-09-24.
//

import SwiftUI

struct DragGestureView: View {
    @State private var offset = CGSize.zero
    @State private var isDragging = false
    
    var body: some View {
        let dragGesture = DragGesture()
            .onChanged { value in
                // update offset as it's dragging around
                offset = value.translation
            }
            .onEnded { _ in
                withAnimation {
                    // when drag ends reset position to origin
                    offset = .zero
                    isDragging = false
                }
            }
        
        let pressGesture = LongPressGesture()
            .onEnded { value in
                // start dragging after long press
                withAnimation {
                    isDragging = true
                }
            }
        
        // first long press then start dragging
        let combined = pressGesture.sequenced(before: dragGesture)
        
        Circle()
            .fill(.red)
            .frame(width: 64, height: 64)
            .scaleEffect(isDragging ? 4 : 1)
            .offset(offset)
            .gesture(combined)
    }
}

#Preview {
    DragGestureView()
}
