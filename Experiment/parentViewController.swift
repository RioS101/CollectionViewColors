//
//  parentViewController.swift
//  Experiment
//
//  Created by Riad on 5/27/20.
//  Copyright © 2020 Projectum. All rights reserved.
//

import UIKit

class parentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        numsInString.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nums", for: indexPath)
        cell.textLabel?.text = numsInString[indexPath.row]
        
        return cell
    }
    
    
    

    var numsInString: [String] = ["one", "two", "three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "child" {
            let childVC = segue.destination as! childViewController
            childVC.view.backgroundColor = .green
            childVC.label.text = "Hello world!"
    
        }
    }
    

}
