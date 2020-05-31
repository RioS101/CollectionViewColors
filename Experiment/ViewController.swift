//
//  ViewController.swift
//  Experiment
//
//  Created by Riad on 5/31/20.
//  Copyright © 2020 Projectum. All rights reserved.
//

import UIKit

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return totalColors
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "colorCell", for: indexPath) as! ColorCell
        let cellColor = colorForIndexPath(indexPath: indexPath)
        cell.backgroundColor = cellColor
        
        if cellColor.cgColor.numberOfComponents == 4 {
            let redComponent = cellColor.cgColor.components![0] * 255
            let greenComponent = cellColor.cgColor.components![1] * 255
            let blueComponent = cellColor.cgColor.components![2] * 255
            cell.colorLabel.text = String(format: "%.0f, %.0f, %.0f", redComponent, greenComponent, blueComponent)
        }
        return cell
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    let totalColors: Int = 100
    func colorForIndexPath(indexPath: IndexPath) -> UIColor {
        if indexPath.row >= totalColors {
            return UIColor.black    // return black if we get an unexpected row index
        }
        
        var hueValue: CGFloat = CGFloat(indexPath.row) / CGFloat(totalColors)
        return UIColor(hue: hueValue, saturation: 1.0, brightness: 1.0, alpha: 1.0)
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
