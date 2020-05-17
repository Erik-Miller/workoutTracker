//
//  WorkoutDetailView.swift
//  WorkoutTracker
//
//  Created by Erik Miller on 5/16/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//

import SwiftUI

struct WorkoutDetailView: View {
    
    let workout: Workout
    
    var body: some View {
        VStack{
            Text("This is the workout detail view")
            Text(workout.title)
            Text(workout.description)
        }
    }
}


