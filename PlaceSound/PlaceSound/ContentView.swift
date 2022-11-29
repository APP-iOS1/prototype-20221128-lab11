//
//  ContentView.swift
//  PlaceSound
//
//  Created by 김보미 on 2022/11/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NearbyView()
                .tabItem {
                    Label("Nearby", systemImage: "star.fill")
                }
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "music.note.house.fill")
                }
            MyLogView()
                .tabItem {
                    Label("MyLog", systemImage: "clock.arrow.circlepath")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
