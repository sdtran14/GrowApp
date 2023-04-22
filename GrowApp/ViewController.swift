//
//  ViewController.swift
//  GrowApp
//
//  Created by Spencer Tran on 4/21/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var subjectField: UITextField!
    
    @IBOutlet weak var dateField: UITextField!
    
    @IBOutlet weak var examLabel1: UILabel!
    
    @IBOutlet weak var examLabel2: UILabel!
    
    @IBOutlet weak var examLabel3: UILabel!
    
    @IBOutlet weak var examLabel4: UILabel!
    
    var ctr = 0
    @IBAction func addExamPressed(_ sender: Any) {
        if examLabel1.text == "Empty" {
            examLabel1.text = subjectField.text
        }
        else if examLabel2.text == "Empty"{
            examLabel2.text = subjectField.text
        }
        else if examLabel3.text == "Empty"{
            examLabel3.text = subjectField.text
        }
        else if examLabel4.text == "Empty"{
            examLabel4.text = subjectField.text
        }
    }
    
    @IBAction func finishedButton1(_ sender: Any) {
        ctr += 1
        examLabel1.text = "Empty"
    }
    
    @IBAction func deleteButton1(_ sender: Any) {
        examLabel1.text = "Empty"
    }
    
    
    @IBAction func finishedButton2(_ sender: Any) {
        ctr += 1
        examLabel2.text = "Empty"
    }
    @IBAction func deleteButton2(_ sender: Any) {
        examLabel2.text = "Empty"
    }
    
    
    @IBAction func finishedButton3(_ sender: Any) {
        ctr += 1
        examLabel3.text = "Empty"
    }
    @IBAction func deleteButton3(_ sender: Any) {
        examLabel3.text = "Empty"
    }
    
    
    @IBAction func finishedButton4(_ sender: Any) {
        ctr += 1
        examLabel4.text = "Empty"
    }
    
    @IBAction func deleteButton4(_ sender: Any) {
        examLabel4.text = "Empty"
    }
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

