//
//  Producto5Slide2ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 16-04-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto5Slide2ViewController: UIViewController {
    
    @IBOutlet var Left: UISwipeGestureRecognizer!

    @IBOutlet var imgSlide: SpringImageView!
    
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var btnProducto: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        self.view.removeGestureRecognizer(self.Left)
        btnExit.isHidden    = true
        btnProducto.isHidden = true
        
       	imgSlide.opacity      = 0.0
        imgSlide.animation    = "slideRight"
        imgSlide.curve        = "easeIn"
        imgSlide.delay        = 0.1
        imgSlide.duration     = 0.5
        imgSlide.damping      = 1.0
        imgSlide.animate()
        
        
        delay(delay:0.6){
            self.btnExit.isHidden    = false
            self.btnProducto.isHidden = false
            self.view.addGestureRecognizer(self.Left)
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
