//
//  TaskListView.swift
//  FigmaToCode
//
//  Created by daviethdev on 1/20/23.
//

import SwiftUI

struct TaskListView: View {
    
    var tasks = Task.getDummyTask()
    
    var body: some View {
        
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack {
                    
                    HStack {
                        Text("Today")
                        Spacer()
                        Text("\(tasks.count)")
                        Image("ic-chevron")
                    }
                    .font(Font.taskText)
                    
                    ForEach(tasks) { task in
                        HStack {
                            Image("ic-check")
                            Text(task.title)
                                .font(Font.taskText)
                            Spacer()
                            VStack (alignment: .trailing, spacing: 4){
                                Text("18:00")
                                    .foregroundColor(Color("Alarm"))
                                    .font(Font.taskAlarmText)
                                Image("ic-alarm")
                            }
                        }
                    }
                }
            }
        }
        .toolbar {
            
            ToolbarItem(placement: .navigationBarLeading) {
                Image("ic-stack")
            }
            
            ToolbarItem(placement: .principal){
                Text("Today")
                    .font(.navTitle)
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Image("ic-more")
            }
        }
        
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
