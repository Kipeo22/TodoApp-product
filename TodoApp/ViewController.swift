//
//  ViewController.swift
//  TodoApp
//
//  Created by x22086xx on 2024/09/11.
//

import UIKit
import RealmSwift

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    let realm = try! Realm()
    var todos: [TodoData] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TodoTableViewCell", bundle: nil), forCellReuseIdentifier: "TodoCell")
        todos = readTodos()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        todos = readTodos()
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath) as! TodoTableViewCell
        let todo: TodoData = todos[indexPath.row]
        cell.setCell(title: todo.title, detail: todo.detail)
        
        return cell
    }
    
    func readTodos() -> [TodoData]{
        return Array(realm.objects(TodoData.self))
    }

}

