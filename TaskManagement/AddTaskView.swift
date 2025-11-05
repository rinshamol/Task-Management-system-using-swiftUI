//
//  AddTaskView.swift
//  TaskManagement
//
//  Created by Zakkariya K.A on 03/11/25.
//

import SwiftUI

struct AddTaskView: View {
    @ObservedObject var viewModel : TaskViewModel
    @Environment(\.dismiss) var dismiss
    var edit : Tasks?
    @Binding var title  : String
    @Binding var desc : String
    @Binding var due : String
   
   
    var body: some View{
        NavigationView{
            Form{
                TextField("Title", text: $title)
                TextField("Description", text: $desc)
                TextField("Due Date", text: $due)
                
            }
//            .onAppear{
//                if let task = edit {
//                    title = task.title ?? ""
//                    desc = task.description ?? ""
//                    due = task.dueDate ?? ""
//                }
//            }
            
            .navigationTitle(edit == nil ? "Add Task" : "Edit Task")
            .navigationBarItems(leading:
                                    Button("Save") {
                if let task = edit {
                    viewModel.editTask(task, title: title, desc: desc, due: due)
                }
                else{
                    viewModel.addTask(title: title, desc: desc, due: due)
                }
                dismiss()

            },
                                trailing: Button("Cancel"){
                dismiss()
            }
                            
                                
               
            )
        }
    }
}


#Preview {
    // Temporary state variables for preview
    @State var title = "Test"
    @State var desc = "Desc"
    @State var due = "11/04/2025"
    
    return AddTaskView(
        viewModel: TaskViewModel(),
        edit: Tasks(title: title, description: desc, dueDate: due, status: false),
        title: $title,
        desc: $desc,
        due: $due
    )
}

