//
//  childViewController.swift
//  Experiment
//
//  Created by Riad on 5/27/20.
//  Copyright © 2020 Projectum. All rights reserved.
//

import UIKit

class childViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        label.text = "H"

        // Do any additional setup after loading the view.
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
