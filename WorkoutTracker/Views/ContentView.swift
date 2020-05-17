//
//  ContentView.swift
//  WorkoutTracker
//
//  Created by Erik Miller on 5/16/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
            WorkoutListView()
                .tabItem {
                    VStack {
                        Image(systemName: "bolt")
                        Text("Workouts")
                    }
            }
            .tag(0)
            WorkoutStatisticsView()
                .tabItem {
                    VStack {
                        Image(systemName: "waveform.path.ecg")
                        Text("Statistics")
                    }
            }
            .tag(1)
            ProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Profile")
                    }
            }
            .tag(2)
            
        }
        .accentColor(Color.red)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
