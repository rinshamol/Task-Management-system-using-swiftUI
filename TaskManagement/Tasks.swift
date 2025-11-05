//
//  Tasks.swift
//  TaskManagement
//
//  Created by Zakkariya K.A on 03/11/25.
//

import Foundation
struct Tasks : Identifiable {
    var id = UUID()
    var title  : String
    var description : String
    var dueDate : String
    var status : Bool
}
