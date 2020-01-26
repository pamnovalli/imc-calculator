//
//  Router.swift
//  IndiceDeMassaCorporea
//
//  Created by Pamela Ianovalli on 26/01/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import UIKit


protocol RouterProtocol: class {
    
    func navigate()
    func passDataToNextView(segue: UIStoryboardSegue)
}



class Router {
    
  weak var viewController: ViewController?
    
    
    func navigate(){
        viewController?.performSegue(withIdentifier: "segueResult", sender: nil)

    }
    
    func passDataToNextView(segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueResult" {
            guard let destination = segue.destination as? ResultViewController, let result = sender as? Double
                   else {
                       return
                   }
            destination.imc = result
            }

    }

    
        
}
    

    

