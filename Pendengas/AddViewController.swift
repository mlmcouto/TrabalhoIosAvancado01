//
//  AddViewController.swift
//  Pendengas
//
//  Created by aluno on 04/08/20.
//  Copyright © 2020 CESAR School. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var insertTodo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTodo(_ sender: Any) {
        if insertTodo.text == "" {
            alerta()
        }
        else{
            Singeton.listName.todoList.append(insertTodo.text!)
            insertTodo.text = ""
        }
        
    }
    
    func alerta(){
        let alerta = UIAlertController (title: "Alerta", message: "Vc nào inseriu nenhuma pendência", preferredStyle: UIAlertController.Style.alert)
        let botaoOk = UIAlertAction (title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alerta.addAction(botaoOk)
        self.present(alerta, animated: true, completion: nil)
        }
    
    
}
