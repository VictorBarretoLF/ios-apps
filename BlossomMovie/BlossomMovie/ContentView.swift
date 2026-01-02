//
//  ContentView.swift
//  RandomColors
//
//  Created by victor barreto on 01/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab(Constants.homeString, systemImage: Constants.homeIconString) {
                Text("Home")
            }
            Tab(Constants.upcomingString, systemImage: Constants.upcomingIconString) {
                Text("Upcoming")
            }
            Tab(Constants.searchString, systemImage: Constants.searchIconString) {
                Text("Search")
            }
            Tab(Constants.downloadString, systemImage: Constants.downloadIconString) {
                Text("Download")
            }
        }
    }
}

#Preview {
    ContentView()
}
