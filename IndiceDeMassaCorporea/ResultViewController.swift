//
//  ResultViewController.swift
//  IndiceDeMassaCorporea
//
//  Created by Pamela Ianovalli on 20/05/19.
//  Copyright © 2019 Pamela Ianovalli. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var lblImc: UILabel!
    @IBOutlet weak var btnCancel: UIBarButtonItem!
    
    var imc: Double = 0.0
    var result: String = ""
    

    
    override func viewDidLoad() {
        lblResult.font = UIFont(name:"Helvetica", size: 40.0)
        lblImc.font = UIFont(name:"Helvetica", size: 40.0)
        resolution()
    }
    
    func verificate() -> String {
        
        switch imc {
        case 0..<16:
            result = "Magreza"
            return result
        case 16..<18.5:
            result = "Abaixo do peso"
            return result
        case 18.5..<25:
            result = "Peso ideal"
            return result
        case 25..<30:
            result = "Sobrepeso"
            return result
        default:
            result = "Obesidade"
            return result
        }
        
    }
    
    
    func resolution() {
        lblResult.text = verificate()
        lblImc.text = String(format: "%.2f", imc)
    }
    
    
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true) {
            
        }
    }
    
}
