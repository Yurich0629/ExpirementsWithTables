//
//  ViewController.swift
//  ExpirementsWithTables
//
//  Created by Илья Десятов on 19.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var tableView: MonkeyTableView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = MonkeyTableView(frame: self.view.frame)
        self.view.addSubview(tableView!)
        
        configureTableView()
        
    }
    
    //MARK: Private
    
    private func configureTableView() {
        tableView = MonkeyTableView(countOfCells: 39, heightCell: 50, frame: self.view.frame)
        self.view.addSubview(tableView!)
    }
    
}

