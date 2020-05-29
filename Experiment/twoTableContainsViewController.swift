//
//  twoTableContainsViewController.swift
//  Experiment
//
//  Created by Riad on 5/29/20.
//  Copyright © 2020 Projectum. All rights reserved.
//

import UIKit

class twoTableContainsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet var upTWC: UITableView!
    @IBOutlet var downTWC: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        upTWC.delegate = self
        upTWC.dataSource = self

        downTWC.delegate = self
        downTWC.dataSource = self
        // Do any additional setup after loading the view.
        
        for index in 0...10 {
            dataForTop.append("Row number \(index)")
        }
        
        for index in 11...20 {
            dataForDown.append("Another row number \(index)")
        }
    }
    
    var dataForTop: [String] = []
    var dataForDown: [String] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == upTWC {
            return dataForTop.count
        } else {
            return dataForDown.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        switch tableView {
        case upTWC:
            cell = upTWC.dequeueReusableCell(withIdentifier: "upCell", for: indexPath)
            cell.textLabel?.text = dataForTop[indexPath.row]
            cell.backgroundColor = .green
            return cell
        case downTWC:
            cell = tableView.dequeueReusableCell(withIdentifier: "downCell", for: indexPath)
            cell.textLabel?.text = dataForDown[indexPath.row]
            cell.backgroundColor = .orange
            return cell
        default:
            print("sikimin bashi")
        }
        return cell
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
