//
//  ContentView.swift
//  Landmarks
//
//  Created by Pedro Delmondes  on 27/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .Featured
    
    enum Tab {
        case Featured
        case List
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.Featured)
            
            LandmarkList()
                .tabItem {
                    Label("Featured", systemImage: "list.bullet")
                }
                .tag(Tab.List)
            
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
