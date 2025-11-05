//
//  TaskViewModel.swift
//  TaskManagement
//
//  Created by Zakkariya K.A on 03/11/25.
//

import Foundation
class TaskViewModel : ObservableObject {
    @Published var tasks  : [Tasks] = [
        Tasks(title: "morning", description: "go for a walk", dueDate: "11/04/2026", status: false),
        Tasks(title: "Drink water", description: "go for a walk", dueDate: "11/04/2026", status: false),
        Tasks(title: "School works", description: "go for a walk", dueDate: "11/04/2026", status: false)

    ]
    
    func addTask(title : String, desc : String, due : String){
        let newTask = Tasks(title: title, description: desc, dueDate: due, status: false)
        tasks.append(newTask)
    }
    
    func editTask(_ task : Tasks, title : String, desc : String, due : String){
        if let index = tasks.firstIndex(where: {$0.id == task.id}){
            tasks[index].title = title
            tasks[index].description = desc
            tasks[index].dueDate = due
        }
    }
}
