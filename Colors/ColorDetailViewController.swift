//
//  ColorDetailViewController.swift
//  Colors
//
//  Created by Adrian Atanasov on 10/19/19.
//  Copyright © 2019 Adrian Atanasov. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    
    var color: color?
    
    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorLabel.text = color?.name
        
        self.view.backgroundColor = color?.uicolor
        self.title = color?.name
        
    }

}
