//
//  ViewController.swift
//  IndiceDeMassaCorporea
//
//  Created by Pamela Ianovalli on 17/01/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtWeight: UITextField!
    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var btnCalculate: UIButton!
    @IBOutlet weak var btnInfo: UIButton!
    

    let router = Router()
    
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        router.viewController = self
        btnCalculate.layer.cornerRadius = 8
        
    }
    
    
    func calculate(weight: Double, height: Double) -> Double {
        return weight / (height * height)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let strWeight = txtWeight.text, let strHeight = txtHeight.text, !strWeight.isEmpty, !strHeight.isEmpty else {
            return
        }
        guard let weight = Double(strWeight), let height = Double(strHeight) else {
            return
        }
        let result = calculate(weight: weight, height: height)
        router.passDataToNextView(segue: segue, sender: result)
    }
       
    
    
    @IBAction func btnCalculation(_ sender: Any) {
        router.navigate()
    
    }


}

extension ViewController: RouterProtocol {
    func passDataToNextView(segue: UIStoryboardSegue) {
        
    }
    
    func navigate() {
        
    }
    
    
}
