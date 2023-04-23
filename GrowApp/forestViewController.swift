//
//  ViewController.swift
//  storyboard
//
//  Created by Anthony Chen on 4/22/23.
//

import UIKit

class TreeViewController: UIViewController {

    @IBOutlet weak var tree1: UIImageView!
    @IBOutlet weak var tree2: UIImageView!
    @IBOutlet weak var tree3: UIImageView!
    @IBOutlet weak var tree4: UIImageView!
    @IBOutlet weak var tree5: UIImageView!

    @IBOutlet weak var counterLabel: UILabel!
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tree1.isHidden = true
        tree2.isHidden = true
        tree3.isHidden = true
        tree4.isHidden = true
        tree5.isHidden = true
        
    }
    
    @IBAction func buttonPress(_ sender: Any) {
        if counter == 0{
            tree1.isHidden = false
            counter += 1
        } else if (counter == 1){
            tree2.isHidden = false
            counter += 1
        }else if (counter == 2){
            tree3.isHidden = false
            counter += 1
        }else if (counter == 3){
            tree4.isHidden = false
            counter += 1
        }else if (counter == 4){
            tree5.isHidden = false
            counter += 1
        }
        let counterlabel = 5 - counter
        if counterlabel >= 0{
            counterLabel.text = "Balance "  + String(counterlabel)
        }
    }
    
}

