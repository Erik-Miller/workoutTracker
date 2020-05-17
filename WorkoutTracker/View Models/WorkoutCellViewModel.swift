//
//  WorkoutCellViewModel.swift
//  WorkoutTracker
//
//  Created by Erik Miller on 5/16/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//

import Foundation
import Combine

class WorkoutCellViewModel: ObservableObject, Identifiable{
    
    @Published var workout: Workout
    
    var id = ""
    
    private var cancellables = Set<AnyCancellable>()
    
    
    init(workout: Workout){
        self.workout = workout
        
        $workout
            .map { workout in
                (workout.id ?? "")
                // this may not need to be force unwrapped later
        }
        .assign(to: \.id, on: self)
        .store(in: &cancellables)
    
}
}
    

