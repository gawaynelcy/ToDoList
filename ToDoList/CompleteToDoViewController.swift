//
//  CompleteToDoViewController.swift
//  ToDoList
//
//  Created by Lau Chin Wei on 18/12/2017.
//  Copyright © 2017 Yun. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {

    var previousVC = ToDoTableViewController()
    var selectedToDo = ToDo()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedToDo.name
    }

    @IBAction func completeTapped(_ sender: Any) {
        
        
    }
}
