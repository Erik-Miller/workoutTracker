//
//  Workout.swift
//  WorkoutTracker
//
//  Created by Erik Miller on 5/16/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct Workout: Identifiable, Codable {
    @DocumentID var id: String?
    var title: String
    var type: String
    var description: String
    var movement: String
    var score: Int
    @ServerTimestamp var creationDate: Timestamp?
}


#if DEBUG
let testDataWorkouts = [
    Workout(title: "My first workout", type: "AMRAP", description: "Fran", movement: "Pullups & Thrusters @ 95#", score: 180),
    Workout(title: "My second workout", type: "For Time", description: "Fran", movement: "Pullups & Thrusters @ 95#", score: 180),
    Workout(title: "My third workout", type: "AMRAP", description: "Fran", movement: "Pullups & Thrusters @ 95#", score: 180),
    Workout(title: "My fourth workout", type: "For Time", description: "Fran", movement: "Pullups & Thrusters @ 95#", score: 180),
]
#endif
