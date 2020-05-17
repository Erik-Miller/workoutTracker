//
//  AddWorkoutView.swift
//  WorkoutTracker
//
//  Created by Erik Miller on 5/16/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//

import SwiftUI

struct AddWorkoutView: View {
    
    @State private var workoutTitle = ""
    @State private var workoutDescription = ""
    
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                Form{
                Text("Workout Title")
                TextField("Title", text: $workoutTitle)
                Text("Workout Description")
                TextField("Description", text: $workoutDescription)
                }
        }
        .navigationBarTitle("Add Workout")
        }
    }
}

struct AddWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        AddWorkoutView()
    }
}
