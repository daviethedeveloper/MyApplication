//
//  Task.swift
//  FigmaToCode
//
//  Created by daviethdev on 1/20/23.
//

import Foundation

struct Task: Identifiable {
    
    var id = UUID()
    var title: String
    
    static func getDummyTask() -> [Task] {
        
        var tasks = [Task]()
        
        tasks.append(Task(title: "Check emails"))
        tasks.append(Task(title: "Discuss marketing plan"))
        tasks.append(Task(title: "Morning Meeting"))
        tasks.append(Task(title: "Branding campaign"))
        
        
        return tasks
    }
}
