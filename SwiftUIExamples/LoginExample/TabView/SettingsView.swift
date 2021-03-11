//
//  SettingsView.swift
//  LoginExample
//
//  Created by 양원석 on 2021/02/04.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
struct HomeView: View {
    var body: some View {
        Text("Home")
    }
}
struct ExploreView: View {
    var body: some View {
        Text("EXPLORE")
    }
}
struct UserView: View {
    var body: some View {
        Text("USER")
    }
}

@main
struct TabBarApp: App {
    var body: some Scene {
        WindowGroup {
            HostingTabBar()
        }
    }
}

struct HostingTabBar: View {
    private enum Tab: Hashable {
        case home
        case explore
        case user
        case settings
    }
    
    @State private var seletedTab: Tab = .home
    
    var body: some View {
        TabView(selection: $seletedTab) {
            HomeView()
                .tag(0)
                .tabItem {
                    Text("HOME")
                }
            ExploreView()
                .tag(1)
                .tabItem {
                    Text("HOME")
                }
            UserView()
                .tag(2)
                .tabItem {
                    Text("HOME")
                }
            SettingsView()
                .tag(3)
                .tabItem {
                    Text("HOME")
                }
        }
    }
}
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
