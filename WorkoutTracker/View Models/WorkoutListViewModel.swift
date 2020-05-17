//
//  WorkoutListViewModel.swift
//  WorkoutTracker
//
//  Created by Erik Miller on 5/16/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//

import Foundation
import Combine

class WorkoutListViewModel: ObservableObject{
    @Published var workoutCellViewModels = [WorkoutCellViewModel]()
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        self.workoutCellViewModels = testDataWorkouts.map { workout in
            WorkoutCellViewModel(workout: workout)
        }
    }
}
