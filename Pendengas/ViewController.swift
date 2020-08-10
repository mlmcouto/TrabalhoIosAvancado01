//
//  ViewController.swift
//  Pendengas
//
//  Created by aluno on 04/08/20.
//  Copyright © 2020 CESAR School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var contador: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        contador.text = String(Singeton.listName.todoList.count)
    }

    
    @IBAction func GoAddXib(_ sender: Any) {
        let viewController = AddViewController(nibName: "AddViewController", bundle: nil)
       navigationController?.pushViewController(viewController, animated: true)
        
    }
}

