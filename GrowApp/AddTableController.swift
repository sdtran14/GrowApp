//
//  AddTableController.swift
//  GrowApp
//
//  Created by Spencer Tran on 4/22/23.
//

import UIKit

class AddTableController: UIViewController {
    var selectedExam: String = "Chem"
    @IBOutlet weak var amtSectionsField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    

    
    @IBAction func enterTap(_ sender: Any) {
        print("enter tapped")
        let tvCon = TableViewController()
        if let _string = amtSectionsField.text, let myInt = Int(_string)
        {
            tvCon.selectedAmt = myInt  
        }
        
        tvCon.selectedExam = selectedExam
        navigationController?.pushViewController(tvCon, animated: true)
    }
    

}
