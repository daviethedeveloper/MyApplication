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
                
                
                ZStack{
                    
                    Rectangle()
                        .foregroundColor(.white)
                    
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
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 16)
                
            }
            VStack{
                Spacer()
                
                HStack{
                    Spacer()
                    
                    Button{
                        // TODO: Add new task
                    }label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 64, height: 64)
                            .foregroundColor(Color.accentColor)
                            .padding(.bottom, 28)
                            .padding(.trailing, 24)
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
