//
//  ViewController.swift
//  Menu From Bottom
//
//  Created by Yawo Echitey on 3/31/17.
//  Copyright © 2017 Echitey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewToScale: UIViewX!
    
    @IBOutlet weak var borderView: UIView!
    
    @IBOutlet weak var copyButton: UIButtonX!
    
    @IBOutlet weak var cutButton: UIButtonX!
    
    @IBOutlet weak var pasteButton: UIButtonX!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        copyButton.alpha = 0
        cutButton.alpha = 0
        pasteButton.alpha = 0
    }

    @IBAction func btnOpenMenu(_ sender: UIButton) {
        
        if borderView.transform ==  .identity{
            UIView.animate(withDuration: 0.2, animations: {
                
                self.viewToScale.transform = CGAffineTransform(scaleX: 20, y: 20)
                self.borderView.transform = CGAffineTransform(translationX: 0, y: -60)
                
            }) { (success) in
                //Completion
                self.toggleMenuButtons()
            }
        }else{
            UIView.animate(withDuration: 0.2, animations: {
                
                self.viewToScale.transform = .identity
                self.borderView.transform = .identity
                
            }) { (success) in
                //Completion
                self.toggleMenuButtons()
            }
        }
        
    }
    
    @IBAction func closeMenu(_ sender: UIButton) {
        if borderView.transform != .identity{
            UIView.animate(withDuration: 0.2, animations: {
                
                self.viewToScale.transform = .identity
                self.borderView.transform = .identity
                
            }) { (success) in
                //Completion
                self.toggleMenuButtons()
            }
        }
        
    }
    
    func toggleMenuButtons(){
        let _alpha = CGFloat(copyButton.alpha == 0 ? 1 : 0)
        
        copyButton.alpha = _alpha
        cutButton.alpha = _alpha
        pasteButton.alpha = _alpha
        
    }
    

}

