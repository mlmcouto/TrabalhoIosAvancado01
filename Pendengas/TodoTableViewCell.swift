//
//  TodoTableViewCell.swift
//  Pendengas
//
//  Created by aluno on 09/08/20.
//  Copyright © 2020 CESAR School. All rights reserved.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

    @IBOutlet weak var labelTodoList: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
//labelTodo.text = Singeton.listName.todoList
    
    
    func prepareCell(){
        labelTodoList.text = Singeton.listName.todoList[0]
    }

    
}
