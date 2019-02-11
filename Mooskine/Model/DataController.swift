//
//  DataController.swift
//  Mooskine
//
//  Created by Arnab Roy on 2/10/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation
import CoreData

class DataController {
    
    let persistanceContainer: NSPersistentContainer
    var viewContext: NSManagedObjectContext{
        return persistanceContainer.viewContext
    }
    
    init(modelName: String) {
        persistanceContainer = NSPersistentContainer(name: modelName)
    }
    
    func load(completion: (()-> Void)? = nil)   {
        persistanceContainer.loadPersistentStores{
            storeDescription, error in
            guard error == nil else{
                fatalError(error!.localizedDescription)
            }
            completion?()
        }
    }
}


extension DataController{
    
}
