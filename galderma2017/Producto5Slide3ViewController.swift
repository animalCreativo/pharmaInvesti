//
//  Producto5Slide3ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 16-04-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto5Slide3ViewController: UIViewController {
    
    @IBOutlet var btnExit: UIButton!

    @IBOutlet var Right: UISwipeGestureRecognizer!
    
    @IBOutlet var ImgCalendar: SpringImageView!
    @IBOutlet var producto: SpringImageView!
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var tituloHeader: SpringImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        self.view.removeGestureRecognizer(self.Right)
        btnExit.isHidden    = true
        
        tituloHeader.opacity      = 0.0
        tituloHeader.animation    = "animalPop"
        tituloHeader.curve        = "easeIn"
        tituloHeader.delay        = 0.1
        tituloHeader.duration     = 0.5
        tituloHeader.animate()

        
        ImgCalendar.opacity      = 0.0
        ImgCalendar.animation    = "slideUp"
        ImgCalendar.curve        = "easeIn"
        ImgCalendar.delay        = 0.4
        ImgCalendar.duration     = 0.5
        ImgCalendar.animate()
        
        producto.opacity      = 0.0
        producto.animation    = "slideRight"
        producto.curve        = "easeIn"
        producto.delay        = 0.9
        producto.duration     = 0.5
        producto.animate()
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 1.4
        titulo.duration     = 0.5
        titulo.animate()

        
        delay(delay:2.0){
            self.btnExit.isHidden    = false
            self.view.addGestureRecognizer(self.Right)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
