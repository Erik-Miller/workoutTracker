//
//  WorkoutListView.swift
//  WorkoutTracker
//
//  Created by Erik Miller on 5/16/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//

import SwiftUI

struct WorkoutListView: View {
    
    @ObservedObject var workoutListVM = WorkoutListViewModel()
    
    @State private var showAddWorkoutForm = false
    
    //let currentDate = Calendar.dateComponents([.day], from: MCL_CURRENT)
    let workouts = testDataWorkouts
    
    
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(workoutListVM.workoutCellViewModels){ workoutCellVM in
                        WorkoutCell(workoutCellVM: workoutCellVM)
                    }
                }
            }
            .navigationBarItems(trailing: Button(action: {
                self.showAddWorkoutForm.toggle()
            }) {
                HStack{
                    Image(systemName: "plus.circle")
                    Text("Add Workout")
                }
               
            })
            .navigationBarTitle("Workouts")
            
            .sheet(isPresented: $showAddWorkoutForm){
                    AddWorkoutView()
            }
            
                
            }
        }
    }
           
struct WorkoutCell: View {
    
    @ObservedObject var workoutCellVM: WorkoutCellViewModel

    
    var body: some View {
        VStack(alignment: .leading){
            NavigationLink(destination: WorkoutDetailView(workout: workoutCellVM.workout)){
                Text(workoutCellVM.workout.title)
            Text(workoutCellVM.workout.description)
        }
        }
    }
}

struct WorkoutListView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutListView()
    }
}
