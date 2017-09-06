//
//  BabyMilk1.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 31-08-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit

class BabyMilk1: UIView {

    private var aux: Float = 0.0
    
    var Valor: Float {
        
        set (newValor){
            if (newValor > 113) {
                aux = 113
            } else if (newValor < 0) {
                aux = 0
            }else {
                aux = newValor
            }
            setNeedsDisplay()
        }
        get {
            return aux
        }
        
    }
    
    
    override func draw(_ rect: CGRect) {
        porcentaje(x: Valor)
        
    }
    
    func porcentaje(x:Float){
        let ftargetFrame = CGRect(x: 0, y: 0, width: 137, height: 253)
        
        Baby.drawCanvasMilk(frame: ftargetFrame, resizing: .aspectFit, milk: CGFloat(x) )
        
    }
    
 
}
