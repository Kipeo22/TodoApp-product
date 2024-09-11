//
//  NewTodoViewController.swift
//  TodoApp
//
//  Created by x22086xx on 2024/09/11.
//

import UIKit
import RealmSwift

class NewTodoViewController: UIViewController {
    
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var detailTextField: UITextField!

    let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func save(){
        let todo = TodoData()
        todo.title = titleTextField.text ?? ""
        todo.detail = detailTextField.text ?? ""
        
        createTodo(todo: todo)
        
        self.dismiss(animated: true)
    }
    
    func createTodo(todo: TodoData){
        try! realm.write{
            realm.add(todo)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
