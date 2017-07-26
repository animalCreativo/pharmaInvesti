//
//  PrincipalViewController.swift
//  Galderpa_iPadApp
//
//  Created by Camilo on 30-01-16.
//  Copyright © 2016 Camilo. All rights reserved.
//

import UIKit
import Spring

class PrincipalViewController: UIViewController {
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    
    @IBOutlet weak var imgBtn1: SpringImageView!
    @IBOutlet weak var imgBtn2: SpringImageView!
    @IBOutlet weak var imgBtn3: SpringImageView!
    @IBOutlet weak var imgBtn4: SpringImageView!
    @IBOutlet weak var imgBtn5: SpringImageView!
    @IBOutlet weak var imgBtn6: SpringImageView!
    @IBOutlet weak var imgBtn7: SpringImageView!
    @IBOutlet weak var imgBtn8: SpringImageView!
    
    @IBOutlet weak var titulo: SpringImageView!
    
    @IBOutlet weak var principal_btnMenu: UIBarButtonItem!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnMenuSlideRight.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.rightRevealToggle(_:)) , for: UIControlEvents.touchDown)
        
        if self.revealViewController() != nil {
            btnMenu.target = self.revealViewController()
            btnMenu.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
            self.revealViewController().rightViewRevealWidth        = 268.0
            self.revealViewController().rightViewRevealOverdraw     = 0.0
            self.revealViewController().bounceBackOnOverdraw        = false
            self.revealViewController().springDampingRatio          = 1.0
            self.revealViewController().toggleAnimationDuration     = 0.7
            self.revealViewController().frontViewShadowRadius       = 10
            self.revealViewController().frontViewShadowOffset       = CGSize(width: 0, height: 2.5)
            self.revealViewController().frontViewShadowOpacity      = 1.0
            self.revealViewController().frontViewShadowColor        = UIColor.black
        }
 
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        btnMenuSlideRight.isHidden = true
        slide()
  
    }
    
    func slide(){

        self.btn1.isHidden = true
        self.btn2.isHidden = true
        self.btn3.isHidden = true
        self.btn4.isHidden = true
        self.btn5.isHidden = true
        self.btn6.isHidden = true
        self.btn7.isHidden = true
        self.btn8.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "fadeIn"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        imgBtn1.opacity      = 0.0
        imgBtn1.animation    = "slideUp"
        imgBtn1.curve        = "easeIn"
        imgBtn1.delay        = 0.9
        imgBtn1.duration     = 0.3
        imgBtn1.animate()
        
        imgBtn2.opacity      = 0.0
        imgBtn2.animation    = "slideUp"
        imgBtn2.curve        = "easeIn"
        imgBtn2.delay        = 1.2
        imgBtn2.duration     = 0.3
        imgBtn2.animate()
        
        imgBtn3.opacity      = 0.0
        imgBtn3.animation    = "slideUp"
        imgBtn3.curve        = "easeIn"
        imgBtn3.delay        = 1.5
        imgBtn3.duration     = 0.3
        imgBtn3.animate()
        
        imgBtn4.opacity      = 0.0
        imgBtn4.animation    = "slideUp"
        imgBtn4.curve        = "easeIn"
        imgBtn4.delay        = 1.8
        imgBtn4.duration     = 0.3
        imgBtn4.animate()
        
        imgBtn5.opacity      = 0.0
        imgBtn5.animation    = "slideUp"
        imgBtn5.curve        = "easeIn"
        imgBtn5.delay        = 2.1
        imgBtn5.duration     = 0.3
        imgBtn5.animate()
        
        imgBtn6.opacity      = 0.0
        imgBtn6.animation    = "slideUp"
        imgBtn6.curve        = "easeIn"
        imgBtn6.delay        = 2.4
        imgBtn6.duration     = 0.3
        imgBtn6.animate()
        
        imgBtn7.opacity      = 0.0
        imgBtn7.animation    = "slideUp"
        imgBtn7.curve        = "easeIn"
        imgBtn7.delay        = 2.7
        imgBtn7.duration     = 0.3
        imgBtn7.animate()
        
        imgBtn8.opacity      = 0.0
        imgBtn8.animation    = "slideUp"
        imgBtn8.curve        = "easeIn"
        imgBtn8.delay        = 3.0
        imgBtn8.duration     = 0.3
        imgBtn8.animate()
        
        delay(delay:3.3){
            self.btn1.isHidden = false
            self.btn2.isHidden = false
            self.btn3.isHidden = false
            self.btn4.isHidden = false
            self.btn5.isHidden = false
            self.btn6.isHidden = false
            self.btn7.isHidden = false
            self.btn8.isHidden = false
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

public extension UIView {
    
    /**
     Fade in a view with a duration
     
     - parameter duration: custom animation duration
     */
    func fadeIn(withduration duration:TimeInterval = 1.0) {
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 1.0
        })
    }
    
    
    /**
     Fade out a view with a duration
     
     - parameter duration: custom animation duration
     */
    func fadeOut(withduration duration:TimeInterval = 1.0) {
         UIView.animate(withDuration: duration, animations: {
            self.alpha = 0.0
        })
    }
    
    func animationScaleEffect(view:UIView,animationTime:Float){
        
        UIView.animate(withDuration: TimeInterval(animationTime),animations: {
            
            view.transform=CGAffineTransform(scaleX: 0.1, y: 0.1)},completion:{completion in UIView.animate(withDuration: TimeInterval(animationTime), animations: { () -> Void in
                
                view.transform=CGAffineTransform(scaleX: 1.0, y: 1.0)
                
            })
                
        })
        
    }
}

func delay(delay:Double, closure:@escaping ()->()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
        closure()
    }
}



