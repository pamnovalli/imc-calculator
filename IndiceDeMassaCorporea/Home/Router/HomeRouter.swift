//
//  HomeRouter.swift
//  IndiceDeMassaCorporea
//
//  Created by Pamela Ianovalli on 26/01/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit


class HomeRouter {
    
    weak var viewController: HomeViewController?
    
    init(viewController: HomeViewController){
        self.viewController = viewController
    }
    
    func navigateToResult(result: Double) {
        let resultViewController = ResultViewController(nibName: "ResultViewController", bundle: Bundle.main)
        resultViewController.imc = result
        viewController?.navigationController?.pushViewController(resultViewController, animated: true)
    }
    
}
