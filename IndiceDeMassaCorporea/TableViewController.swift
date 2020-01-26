//
//  TableViewController.swift
//  IndiceDeMassaCorporea
//
//  Created by Pamela Ianovalli on 20/05/19.
//  Copyright © 2019 Pamela Ianovalli. All rights reserved.
//

import UIKit

 class TableViewController: UITableViewController {
    
    
    @IBOutlet weak var imgCalcular: UIImageView!
    @IBOutlet weak var txtWeight: UITextField!
    @IBOutlet weak var txtHeight: UITextField!
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgCalcular.image = UIImage(named: "imc")
    }
    

    func calculator(weight: Double, height: Double) -> Double {
           return weight / (height * height)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier{
        case "segueResult":
            
            guard let destination = segue.destination as? ResultViewController,
                let result = sender as? Double
            else {
                return
            }
            destination.imc = result
        default:
            return
        }
    }
    

    @IBAction func btnCalculation(_ sender: Any) {
        guard let strWeight = txtWeight.text, let strHeight = txtHeight.text, !strWeight.isEmpty, !strHeight.isEmpty else {
            return
        }
        
        guard let weight = Double(strWeight), let height = Double(strHeight) else {
            return
        }
        let result = calculator(weight: weight, height: height)
        performSegue(withIdentifier: "segueResult", sender: result)
    }
}
