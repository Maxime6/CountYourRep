//
//  Workout.swift
//  CountYourRep
//
//  Created by Maxime on 26/05/2020.
//  Copyright © 2020 MaximeTanter. All rights reserved.
//

import Foundation
import CoreData

class Workout: NSManagedObject {
    
    static func fetchAll(viewContext: NSManagedObjectContext = AppDelegate.viewContext) -> [Workout] {
        let request: NSFetchRequest<Workout> = Workout.fetchRequest()
        guard let workouts = try? viewContext.fetch(request) else { return [] }
        return workouts
    }
    
    static func createWorkout(name: String, numberOfRep: Int, numberOfSeries: Int, viewContext: NSManagedObjectContext = AppDelegate.viewContext) {
        let workout = Workout(context: viewContext)
        workout.name = name
        workout.numberOfRep = Int16(numberOfRep)
        workout.numberOfSeries = Int16(numberOfSeries)
        try? viewContext.save()
    }
    
    static func deleteWorkout(name: String, viewContext: NSManagedObjectContext = AppDelegate.viewContext) {
        let request: NSFetchRequest<Workout> = Workout.fetchRequest()
        guard let workouts = try? viewContext.fetch(request) else { return }
        guard let workout = workouts.first else { return }
        viewContext.delete(workout)
        try? viewContext.save()
    }
}
