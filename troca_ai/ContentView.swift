//
//  ContentView.swift
//  troca_ai
//
//  Created by luan on 13/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            
            homeView().tabItem {
                Label("Inicio", systemImage: "house.fill")
            }
            
            chatView().tabItem {
                Label("Chat", systemImage: "paperplane.fill")
            }
            profileView().tabItem {
                Label("Perfil", systemImage: "person.crop.circle.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}
