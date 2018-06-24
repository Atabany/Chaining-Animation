//
//  ViewController.swift
//  AnimationChains
//
//  Created by mohamed elatabany on 3/18/18.
//  Copyright © 2018 mohamed elatabany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var goButton: DesignableUIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgImage.alpha = 0
        titleLabel.alpha = 0
        descriptionLabel.alpha = 0
        goButton.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        letsAnimate()
        
        
    }
    
    func letsAnimate() {
        UIView.animate(withDuration: 0.5, animations: {
            self.bgImage.alpha = 0.6
        }, completion: { (_) in
            self.showTitle()
        })
    }
    
    func showTitle() {
        UIView.animate(withDuration: 0.5, animations: {
            self.titleLabel.alpha = 1
        }, completion: { (_) in
            self.showDescription()
        })
    }
    
    func showDescription() {
        UIView.animate(withDuration: 0.5, animations: {
            self.descriptionLabel.alpha = 1
        }, completion: { (_) in
            self.showGoButton()
        })
    }
    
    func showGoButton() {
        UIView.animate(withDuration: 0.5, animations: {
            self.goButton.alpha = 1
        })
    }
    
   
    @IBAction func goButtonAction(_ sender: Any) {
        bgImage.alpha = 0
        titleLabel.alpha = 0
        descriptionLabel.alpha = 0
        goButton.alpha = 0
        titleLabel.setNeedsDisplay()
        descriptionLabel.setNeedsDisplay()
        bgImage.setNeedsDisplay()
        goButton.setNeedsDisplay()
        letsAnimate()
    }
    
    
    
    
}

