//
//  TimerView.swift
//  Flashzilla
//
//  Created by Rodrigo on 05-09-24.
//

import SwiftUI

struct TimerView: View {
    let timer = Timer.publish(every: 1,tolerance: 0.5 , on: .main, in: .common).autoconnect()
    
    @State private var count = 0
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onReceive(timer) { time in
                if count == 5 {
                    timer.upstream.connect().cancel()
                } else {
                    print("The time is now \(time)")
                }
                
                count += 1
            }
    }
    
}

#Preview {
    TimerView()
}
