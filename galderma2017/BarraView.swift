//
//  BarraView.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 20-03-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit

class BarraView: UIView {

    private var aux: Float = 0.0
    
    var Valor: Float {
        
        set (newValor){
            if (newValor > 80) {
                aux = 80
            } else if (newValor < 20) {
                aux = 20
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
        self.backgroundColor = UIColor.red
    
    }
    
    func porcentaje(x:Float){
        let ftargetFrame = CGRect(x: 0, y: 0, width: 1024, height: 465)
    
        let phOk  = UIColor(red: 0.000, green: 0.816, blue: 0.184, alpha: 1.000)
          let phBad = UIColor(red: 0.984, green: 0.051, blue: 0.133, alpha: 1.000)
          let barraColor =  UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
          let radius =  CGFloat(123)
          let height = CGFloat(50)
          let width = CGFloat(700)
          let pbueno = CGFloat( x)
          let x = CGFloat(123)
          let y = CGFloat(123)
          let barraheight  = CGFloat(250)
          let barraWidth  = CGFloat(3)
        
        Barra.drawProgress(frame: ftargetFrame , resizing: .aspectFit, phOk: phOk, phBad: phBad, barraColor: barraColor, radius: radius, height: height, width: width, pbueno: pbueno, x: x, y: y, barraheight: barraheight, barraWidth: barraWidth)
        
        
    }
    
    

}
