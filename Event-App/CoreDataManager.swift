//
//  CoreDataMAnager.swift
//  Event-App
//
//  Created by Burak AKCAN on 18.10.2022.
//

import CoreData
import UIKit

final class CoreDataManager {
    lazy var persistanceContainer : NSPersistentContainer = {
       let persistanceContainer = NSPersistentContainer(name: "EventsApp")
        persistanceContainer.loadPersistentStores { _, error in
            print(error?.localizedDescription ?? "")
        }
        return persistanceContainer
    }()
    
    var moc: NSManagedObjectContext {
        persistanceContainer.viewContext
    }
    
    func saveEvent(name:String , date: Date ,image: UIImage) {
        let event = Event(context: moc)
        event.setValue(name, forKey: "name")
        let imageData = image.jpegData(compressionQuality: 1)
        event.setValue(imageData, forKey: "image")
        event.setValue(date, forKey: "date")
        
        
        do{
            try moc.save()
        }catch{
            print(error.localizedDescription)
        }
    }
    
    func fetchEvent() -> [Event] {
         
        do{
            let fetchRequest = NSFetchRequest<Event>(entityName: "Event")
            let events = try moc.fetch(fetchRequest)
            return events
        }catch{
            print(error.localizedDescription)
            return []
        }
    }
}
