//
//  Producto7Slide3ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 16-04-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto7Slide3ViewController: UIViewController {
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var Right: UISwipeGestureRecognizer!
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var imgCenter: SpringImageView!

    @IBOutlet var sello: SpringImageView!
    
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
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        imgCenter.opacity      = 0.0
        imgCenter.animation    = "fadeIn"
        imgCenter.curve        = "easeIn"
        imgCenter.delay        = 0.5
        imgCenter.duration     = 0.5
        imgCenter.animate()
        
        
        sello.opacity      = 0.0
        sello.animation    = "fadeIn"
        sello.curve        = "easeIn"
        sello.delay        = 0.9
        sello.duration     = 0.5
        sello.animate()
        
        delay(delay:1.5){
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
