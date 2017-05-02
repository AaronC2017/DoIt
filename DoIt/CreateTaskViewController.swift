//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Aaron Student on 02/05/2017.
//  Copyright © 2017 Aaron Connolly. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        //Create task from outlet information
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        
        //Add new task in previous viewController
        
        previousVC.tasks.append(task)
        
        //reloads previousVC tasks
        previousVC.tableView.reloadData()
        
        //Moves to previousVC after add is tapped
        navigationController?.popViewController(animated: true)
    }
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
