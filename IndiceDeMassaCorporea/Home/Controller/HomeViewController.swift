//
//  HomeViewController.swift
//  IndiceDeMassaCorporea
//
//  Created by Pamela Ianovalli on 26/01/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var txtWeight: UITextField!
    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var btnCalculate: UIButton!
    
    let viewModel = HomeViewModel()
    var router: HomeRouter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnCalculate.layer.cornerRadius = 5
        router = HomeRouter(viewController: self)
    }
    

    @IBAction func calculate(_ sender: Any) {
        guard let weight = txtWeight.text, !weight.isEmpty else { return }
        guard let height = txtHeight.text, !height.isEmpty else { return }
        let result = viewModel.calculateImc(strWeight: weight, strHeight: height)
        router?.navigateToResult(result: result)
    }
    
}
