//
//  Note+Extensions.swift
//  Mooskine
//
//  Created by Arnab Roy on 2/10/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation
import CoreData

extension Note{
    
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        creationDate = Date()
    }
}
