//
//  ContentView.swift
//  TwitterSwiftUI
//
//  Created by Mete İstar on 28.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            TabView {
                FeedView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                
                ConversationsView()
                    .tabItem {
                        Image(systemName: "envelope")
                        Text("Messages")
                    }
            }
            .navigationBarTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
//            Text("This is inside a nav view")
//                .navigationBarTitle("Home")
//                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
