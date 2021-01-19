//
//  ContentView.swift
//  SwiftTV
//
//  Created by Justin Bush on 2021-01-19.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .discover
    
    enum Tab {
        case discover
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            DiscoverHome()
                .tabItem {
                    Label("Discover", systemImage: "star")
                }
                .tag(Tab.discover)
            
            MovieList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
            .previewDevice("iPhone 12 Pro")
    }
}
