//
//  ScenePhaseView.swift
//  Flashzilla
//
//  Created by Rodrigo on 06-09-24.
//

import SwiftUI

struct ScenePhaseView: View {
    @Environment(\.scenePhase) var scenePhase
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onChange(of: scenePhase) { oldPhase, newPhase in
                switch newPhase {
                case .active:
                    print("Active")
                case .inactive:
                    print("Inactive")
                case .background:
                    print("Background")
                default:
                    print("Unknown")
                }
            }
    }
}

#Preview {
    ScenePhaseView()
}
