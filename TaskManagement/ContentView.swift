//
//  ContentView.swift
//  TaskManagement
//
//  Created by Zakkariya K.A on 03/11/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = TaskViewModel()
    @State var showCard = false
    @State var edit : Tasks? = nil
    @State var editTitle: String = ""
    @State var editDesc: String = ""
    @State var editDue: String = ""
    @State var searchText : String = ""
    
    var filteredTask : [Tasks] {
        if searchText.isEmpty{
            return viewModel.tasks
        }else{
            return viewModel.tasks.filter { task in
                task.title.localizedCaseInsensitiveContains(searchText) || task.description.localizedCaseInsensitiveContains(searchText)
            }
        }
    }

    var body: some View {
        NavigationView{
            VStack {
                List {
                    ForEach(filteredTask){ task in
                            VStack{
                                HStack(){
                                    Text(task.title)
                                    Text("\(task.dueDate)")
                                        .frame(maxWidth: .infinity,alignment: .trailing)
                                    
                                }
                                HStack(){
                                    Text(task.description)
                                    Button(task.status ? "Completed" : "Complete"){
                                        if let index = viewModel.tasks.firstIndex(where: {$0.id == task.id}) {
                                            viewModel.tasks[index].status.toggle()
                                        }
                                    }
                                    .foregroundStyle(task.status ? .green : .black)
                                        .frame(maxWidth: .infinity,alignment: .trailing)
                                    
                                }
                            }
                            .onTapGesture {
                                edit = task
                                showCard = true
                                editTitle = task.title
                                editDesc = task.description
                                editDue = task.dueDate
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.blue, lineWidth: 1)
                            )
                           
                        }
                        .onDelete{ indexSet in
                            viewModel.tasks.remove(atOffsets: indexSet)
                            
                        }
                    
                    .frame(maxWidth: .infinity,alignment: .leading)
                }
                
            }
            .searchable(text: $searchText, prompt : "Search task here")
            .navigationTitle("Task App")
            .navigationBarItems(trailing:
            Button(action : {
                edit = nil
                showCard = true
                editTitle = ""
                editDesc = ""
                editDue = ""
            }){
                Image(systemName: "plus")
            }
                            
            )
            .sheet(isPresented: $showCard){
                AddTaskView(viewModel : viewModel, edit : edit,  title: $editTitle,
                            desc: $editDesc,
                            due: $editDue)
            }
            
        }
    }
        
}

#Preview {
    ContentView()
}
