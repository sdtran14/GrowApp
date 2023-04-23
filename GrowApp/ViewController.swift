//
//  ViewController.swift
//  GrowApp
//
//  Created by Spencer Tran on 4/21/23.
//

import UIKit

class ViewController: UIViewController {

   
//    func delete1()
//    {
//        examLabel1.text = "Untitled"
//    }
    
//    func deleteExam2()
//    {
//        examLabel2.text = "Untitled"
//    }
//
//    func deleteExam3()
//    {
//        examLabel3.text = "Untitled"
//    }
//
//    func deleteExam4()
//    {
//        examLabel4.text = "Untitled"
//    }
    
//    @IBAction func deleteExam1(_ sender: Any) {
//        let deleteScreen = DeleteScreen()
//        deleteScreen.examNum = 1
//        deleteScreen.delegate = self
//        navigationController?.pushViewController(deleteScreen, animated: true)
//    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showDetail" {
//            if let indexPath = self.tableView.indexPathForSelectedRow {
//                let controller = segue.destination as! DeleteScreen
//                controller.selectedName = objects[indexPath.row]
//            }
//        }
//    }
    
    
//    @IBAction func deleteExam2(_ sender: Any) {
//        let deleteScreen = DeleteScreen()
//        deleteScreen.examNum = 2
//        deleteScreen.delegate = self
//        navigationController?.pushViewController(deleteScreen, animated: true)
//    }
//    
//    
//    @IBAction func deleteExam3(_ sender: Any) {
//        let deleteScreen = DeleteScreen()
//        deleteScreen.examNum = 3
//        deleteScreen.delegate = self
//        navigationController?.pushViewController(deleteScreen, animated: true)
//    }
//    
//    @IBAction func deleteExam4(_ sender: Any) {
//        let deleteScreen = DeleteScreen()
//        deleteScreen.examNum = 4
//        deleteScreen.delegate = self
//        navigationController?.pushViewController(deleteScreen, animated: true)
//    }
    
    
    
    @IBOutlet weak var subjectField: UITextField!
    
    @IBOutlet weak var dateField: UITextField!
    
    
    @IBOutlet weak var examLabel1: UILabel!
    
    @IBOutlet weak var examLabel2: UILabel!
    
    @IBOutlet weak var examLabel3: UILabel!
    
    @IBOutlet weak var examLabel4: UILabel!
    
    var ctr = 0
    @IBAction func addExamPressed(_ sender: Any) {
        
        if examLabel1.text == "Untitled"{
            examLabel1.text = subjectField.text
        }
        else if examLabel2.text == "Untitled"{
            examLabel2.text = subjectField.text
        }
        else if examLabel3.text == "Untitled"{
            examLabel3.text = subjectField.text
        }
        else if examLabel4.text == "Untitled"{
            examLabel4.text = subjectField.text
        }
    }
    
    
    @IBAction func cancelButton1(_ sender: Any) {
        examLabel1.text = "Untitled"
        ctr += 1
    }
    
    @IBAction func cancelButton2(_ sender: Any) {
        examLabel2.text = "Untitled"
        ctr += 1
    }
    
    @IBAction func cancelButton3(_ sender: Any) {
        examLabel3.text = "Untitled"
        ctr += 1
    }
    
    @IBAction func cancelButton4(_ sender: Any) {
        examLabel4.text = "Untitled"
        ctr += 1
    }
    
    
    
    
    

    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

