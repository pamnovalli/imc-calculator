//
//  ViewController.swift
//  IndiceDeMassaCorporea
//
//  Created by Pamela Ianovalli on 17/01/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController {
    
    
    let router = Router()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        router.viewController = self
//        btnCalculate.layer.cornerRadius = 8
        guard let view = Bundle.main.loadNibNamed("HomeView", owner: self, options: nil)?.first as? HomeView else {
            return
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let strWeight = view.txtWeight.text, let strHeight = view.txtHeight.text, !strWeight.isEmpty, !strHeight.isEmpty else {
//            return
//        }
//         let viewModel = HomeViewModel(weight: strWeight, height: strHeight)
//
//        router.passDataToNextView(segue: segue, sender: viewModel.result)
    }
       
    
    
    @IBAction func btnCalculation(_ sender: Any) {
        router.navigate()
    
    }


}

extension HomeViewController: RouterProtocol {
    func passDataToNextView(segue: UIStoryboardSegue) {
        
    }
    
    func navigate() {
        
    }
    
    
}


