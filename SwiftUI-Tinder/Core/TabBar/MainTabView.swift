//
//  MainTabView.swift
//  SwiftUI-Tinder
//
//  Created by Chirag Kular on 2/7/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Swipe View")
                .tabItem { Image(systemName: "flame.fill") }
                .tag(0)
            Text("Search")
                .tabItem { Image(systemName: "magnifyingglass") }
                .tag(1)

            Text("Inbox View")
                .tabItem { Image(systemName: "bubble") }
                .tag(2)

            Text("Profile View")
                .tabItem { Image(systemName: "person") }
                .tag(3)
        }
    }
}

#Preview {
    MainTabView()
}
