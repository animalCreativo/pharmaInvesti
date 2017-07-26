//
//  Producto3Slide3Pop1ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 22-03-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto3Slide3Pop1ViewController: UIViewController {
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var logo: SpringImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        btnExit.isHidden    = true
        
       	logo.opacity      = 0.0
        logo.animation    = "fadeInRight"
        logo.curve        = "easeIn"
        logo.delay        = 0.1
        logo.duration     = 0.5
        logo.animate()
        
        
        delay(delay:0.8){
            self.btnExit.isHidden    = false
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /*
         if segue.identifier == "play" {
         let nextScene =  segue.destinationViewController as! DaylongSun00ViewController
         // Pass the selected object to the new view controller.
         nextScene.video = "play"
         }
         */
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

