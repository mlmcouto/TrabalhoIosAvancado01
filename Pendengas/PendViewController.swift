//
//  PendViewController.swift
//  Pendengas
//
//  Created by aluno on 09/08/20.
//  Copyright © 2020 CESAR School. All rights reserved.
//

import UIKit

class PendViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //let teste = ["teste1", "teste2"]
    let teste = Singeton.listName.todoList
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teste.count
        //return Singeton.listName.todoList.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        //cell.textLabel?.text = Singeton.listName.todoList[indexPath.row]
        
        cell.textLabel?.text = teste[indexPath.row]
        return cell
    }
    


}
