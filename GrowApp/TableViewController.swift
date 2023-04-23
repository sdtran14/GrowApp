//
//  ViewController.swift
//  GrowApp
//
//  Created by Spencer Tran on 4/21/23.
//

import UIKit

struct Section {
    let title: String
    var options: [String]
    var isOpened: Bool = false
    
    init(title: String,
         options: [String],
        isOpened : Bool = false)
    {
        self.title = title
        self.options = options
        self.isOpened = isOpened
    }
}
class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self,
                        forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    var selectedExam: String = "Exam0"
    var selectedAmt: Int = 0
    
    
    private var sections = [Section]()
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedExam)
        print(selectedAmt)
        sections = [
        ]
        for i in 1...selectedAmt
        {
            let secName : String = "Topic " + String(i)
            sections.append(Section(title: secName, options: ["[add cell]"]))
        }
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.frame = view.bounds
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        let section = sections[section]
        
        if(section.isOpened)
        {
            return section.options.count + 1
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.row == 0
        {
            cell.textLabel?.text = sections[indexPath.section].title
            //color for Topic Cells
            cell.backgroundColor = UIColor.tintColor
        } else
        {
            cell.textLabel?.text = sections[indexPath.section].options[indexPath.row-1]
            
            //color for subTopic Cells
            cell.backgroundColor = UIColor.white
        }
        
        
        return cell
        
    }
    
    func addCell(sect: Int, date: String, score: String)
    {
        let str =  date + " - Mastery: " + score
        
        sections[sect].options.insert(str, at: sections[sect].options.count-1)
        tableView.reloadData()
        

    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0
        {
            sections[indexPath.section].isOpened = !sections[indexPath.section].isOpened
            tableView.reloadSections([indexPath.section], with: .none)
        }
        else
        {
            print("tapped")
            print(indexPath.row)
            print(sections[indexPath.section].options.count)
            
            if(sections[indexPath.section].options.count == indexPath.row)
            {
                
                
                let ac = AddCellController()
                
                ac.sectionNum = indexPath.section
                ac.delegate = self
                
                navigationController?.pushViewController(ac, animated: true)
                
                
            }
             
        }
    }
        
    
}
