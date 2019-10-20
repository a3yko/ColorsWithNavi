//
//  ViewController.swift
//  Colors
//
//  Created by Adrian Atanasov on 9/28/19.
//  Copyright © 2019 Adrian Atanasov. All rights reserved.


import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    var colorArray = [
    color(name: "Red", uicolor: UIColor.red),
    color(name: "Blue", uicolor: UIColor.blue),
    color(name: "Green", uicolor: UIColor.green),
    color(name: "Orange", uicolor: UIColor.orange),
    color(name: "Purple", uicolor: UIColor.purple),
    color(name: "Yellow", uicolor: UIColor.yellow),
    color(name: "Brown", uicolor: UIColor.brown)]

    @IBOutlet weak var colorTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Colors"
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.textLabel?.text = colorArray[indexPath.row].name
        cell.backgroundColor = colorArray[indexPath.row].uicolor
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.isSelected = false
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
            let row = colorTable.indexPathForSelectedRow?.row {
            destination.color = colorArray[row]
        }
    }

}

