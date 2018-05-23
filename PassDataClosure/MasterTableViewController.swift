//
//  MasterTableViewController.swift
//  PassDataClosure
//
//  Created by apple on 5/24/18.
//  Copyright © 2018 LuyenBG. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {
    
    var arrayString =  ["One","Two","Three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayString.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        // Configure the cell...
        cell.textLabel?.text = arrayString[indexPath.row]
        return cell
    }
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailViewController = segue.destination as? DetailViewController else { return }
        if let index = tableView.indexPathForSelectedRow {
            detailViewController.recieveData = arrayString[index.row]
            detailViewController.onCompletion = {[weak self] data in
                self?.arrayString[index.row] = data
            }
        } else {
            detailViewController.onCompletion = {[weak self] data in
                self?.arrayString.append(data)
            }
        }
    }
    
}
