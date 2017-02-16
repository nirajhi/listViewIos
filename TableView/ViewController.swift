//
//  ViewController.swift
//  TableView
//
//  Created by admin on 2/16/17.
//  Copyright © 2017 nirajhirachan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

   // @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var nameTextField: UITextField!
   
    @IBOutlet weak var ourTableView: UITableView!
    var dataArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    @IBAction func addButton(_ sender: UIButton) {
        
        guard let data = nameTextField.text , !data.isEmpty else{
                print("Empty Field")
            return
        }      
        print(data)
        dataArray.append(data)
        ourTableView.insertRows(at: [IndexPath(row: dataArray.count - 1 , section: 0)], with: .fade)
        print("Success")
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)    
        cell.textLabel?.text = dataArray[indexPath.row];
        return cell
    }
    
    
    
    
    


}

