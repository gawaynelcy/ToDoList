//
//  AddToDoViewController.swift
//  ToDoList
//
//  Created by Lau Chin Wei on 17/12/2017.
//  Copyright © 2017 Yun. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var ImportantSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
/*
        let toDo = ToDo()
        
        if let titleText = titleTextField.text {
            toDo.name = titleText
            toDo.important = ImportantSwitch.isOn
            
            previousVC.toDos.append(toDo)
            previousVC.tableView.reloadData()
            
            navigationController?.popViewController(animated: true)
        }
*/
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
        
            let toDo = ToDoCoreData(entity: ToDoCoreData.entity(), insertInto: context)
            
            if let titleText = titleTextField.text {
                toDo.name = titleText
                toDo.important = ImportantSwitch.isOn
            }
            
            try? context.save()
            
            navigationController?.popViewController(animated: true)
        }
        
    }
    
}
