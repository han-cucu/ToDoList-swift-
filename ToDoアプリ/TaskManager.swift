//
//  TaskManager.swift
//  ToDoアプリ
//
//  Created by 半田　佑馬 on 2015/05/15.
//  Copyright (c) 2015年 半田　佑馬. All rights reserved.
//

import UIKit

var TaskMg: TaskManager = TaskManager()

struct task {
    var name = "Non-Name"
    var dicr = "Non-Description"

}

class TaskManager: NSObject {
    
    var tasks = [task]()
    
    func addTask(name: String, desc: String){
    
        tasks.append(task(name: name, dicr: desc))
    }
}
