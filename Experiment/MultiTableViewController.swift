//
//  MultiTableViewController.swift
//  Experiment
//
//  Created by Riad on 5/27/20.
//  Copyright © 2020 Projectum. All rights reserved.
//

import UIKit

class MultiTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    var numbers: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
    
    var strings: [String] = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "zero"]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        if section == 0 {
            return numbers.count
        } else if section == 1 {
            return strings.count
        } else {
            return 0
        }
    }

    // MARK: и как быть???
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        if indexPath.section == 0 {
          let numcell = tableView.dequeueReusableCell(withIdentifier: "numbers", for: indexPath)
            numcell.textLabel?.text = String(numbers[indexPath.row])
            numcell.backgroundColor = .red
            return numcell
        } else {
            let stringCell = tableView.dequeueReusableCell(withIdentifier: "strings", for: indexPath)
            stringCell.textLabel?.text = strings[indexPath.row]
            stringCell.backgroundColor = .green
            return stringCell
        }
        


    }
    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let stringCell = tableView.dequeueReusableCell(withIdentifier: "strings", for: indexPath)
//        stringCell.textLabel?.text = strings[indexPath.row]
//        return stringCell
//
//    }
    
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
