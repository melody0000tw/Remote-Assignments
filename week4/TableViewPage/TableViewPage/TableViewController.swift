//
//  ViewController.swift
//  TableViewPage
//
//  Created by Melody Lee on 2024/2/2.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - Data Source
    override func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 10 : 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath)
        let tableCell =  TableCell(string: "This is session \(indexPath.section), row \(indexPath.row)")
        
        cell.textLabel?.text = tableCell.string
        return cell
    }

}

