//
//  VolumenView.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 19-04-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit

class VolumenView: UIView {

    private var aux: Float = 1021
    
    var Valor: Float {
        
        set (newValor){
            if (newValor > 1021) {
                aux = 1021
            } else if (newValor < 324) {
                aux = 324
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
       // self.backgroundColor = UIColor.red
        
    }
    
    func porcentaje(x:Float){
        let ftargetFrame = CGRect(x: 0, y: 0, width: 720, height: 243)
        
        let plargo = CGFloat( x)
       
        Volumen.drawProgressVolumen(frame: ftargetFrame,  resizing: .aspectFit, largoMax3: plargo)

        
    }

    
    }
