//
//  ResultViewModel.swift
//  IndiceDeMassaCorporea
//
//  Created by Pamela Ianovalli on 26/01/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import Foundation


class ResultViewModel {
    
    var imc: Double = 0.0
    
    
    var imcFormatString: String{
        return String(format: "%.2f", imc)
    }

    var imcResult: String {
        switch imc {
        case 0..<16:
            return  "Magreza"
        case 16..<18.5:
            return  "Abaixo do peso"
        case 18.5..<25:
            return "Peso ideal"
        case 25..<30:
            return "Sobrepeso"
        default:
            return "Obesidade"
        }

    }
    
}
