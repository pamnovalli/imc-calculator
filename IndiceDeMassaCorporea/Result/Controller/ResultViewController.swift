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
    
    var imc: Double = 0.0
    let viewModel = ResultViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.imc = imc
        lblResult.text = viewModel.imcResult
        lblImc.text = viewModel.imcFormatString
    }
    
    
}
