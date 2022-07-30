//
//  ExpenseLog+CoreDataProperties.swift
//  ExpenseTracker
//
//  Created by Aisha on 7/27/22.
//  Copyright © 2022 Alfian Losari. All rights reserved.
//
//

import Foundation
import CoreData


extension ExpenseLog {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ExpenseLog> {
        return NSFetchRequest<ExpenseLog>(entityName: "ExpenseLog")
    }

    @NSManaged public var amount: NSDecimalNumber?
    @NSManaged public var category: String?
    @NSManaged public var date: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?

}

extension ExpenseLog {

}
