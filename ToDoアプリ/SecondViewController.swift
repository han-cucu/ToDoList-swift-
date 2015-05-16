//
//  SecondViewController.swift
//  ToDoアプリ
//
//  Created by 半田　佑馬 on 2015/05/15.
//  Copyright (c) 2015年 半田　佑馬. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet var textTask: UITextField?
    @IBOutlet var txtDescr: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAddTask(sender:UIButton){
        TaskMg.addTask(textTask!.text, desc: txtDescr!.text)
        self.view.endEditing(true)
        textTask!.text = ""
        txtDescr!.text = ""
        self.tabBarController?.selectedIndex = 0
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }


}

