//
//  AddCellController.swift
//  GrowApp
//
//  Created by Spencer Tran on 4/22/23.
//

import UIKit

class AddCell_Controller: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("load")
        let scoreField =  UITextField(frame: CGRect(x: 20, y: 200, width: 300, height: 40))
        scoreField.placeholder = "Enter Score (0 - 1)"
        scoreField.font = UIFont.systemFont(ofSize: 15)
        scoreField.borderStyle = UITextField.BorderStyle.roundedRect
        
        let dateField =  UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        dateField.restorationIdentifier = "df"
        dateField.placeholder = "Enter Date (DD/MM/YY)"
        dateField.font = UIFont.systemFont(ofSize: 15)
        dateField.borderStyle = UITextField.BorderStyle.roundedRect
        
        let enterButton = UIButton(frame: CGRect(x: 50, y: 500, width: 300, height: 40))
        enterButton.backgroundColor = .black
        enterButton.setTitle("Add Score", for: .normal)
        enterButton.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        
        
        //scoreField.frame = CGRect(x: 20, y: 400, width: 300, height : 40);
        self.view.addSubview(scoreField)
        self.view.addSubview(enterButton)
        self.view.addSubview(dateField)
        
    }
    var sectionNum: Int = 0
    
    weak var delegate: TableViewController!
    @objc func buttonClicked() {
        //let tvCon = TableViewController()
        var sft = ""
        var dft = ""
        for sv in self.view.subviews
        {
            
            
            
            if sv is UITextField {
                let currentLabel = sv as! UITextField
                if currentLabel.restorationIdentifier == "df"
                {
                    if let _date = currentLabel.text
                    {
                        dft = _date
                    }
                } else
                {
                    if let _string = currentLabel.text
                    {
                        sft = _string
                    }
                }
            }
        }
            
                delegate.addCell(sect: sectionNum, date: dft, score: sft)
            
            
            navigationController?.popViewController(animated: true)
            
            
            
        }
        
        
        
        
        
        
    }
    

