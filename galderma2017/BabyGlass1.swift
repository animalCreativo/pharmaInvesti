//
//  BabyGlass1.swift
//  
//
//  Created by Francisco Barrios Romo on 31-08-17.
//
//

import UIKit

class BabyGlass1: UIView {

    private var aux: Float = 0.0
    
    var Valor: Float {
        
        set (newValor){
            if (newValor > 292) {
                aux = 292
            } else if (newValor < 157) {
                aux = 157
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
        let ftargetFrame = CGRect(x: 0, y: 0, width: 194, height: 241)
        
        Baby.drawCanvasGlass(frame: ftargetFrame, resizing: .aspectFit, number: CGFloat(x), milk:  113)
        
    }

}
