//
//  ViewController.swift
//  Screen Size Autolayout
//
//  Created by Jure Zove on 09/05/15.
//  Copyright (c) 2015 Candy Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var carDescription: UILabel!
    
    @IBOutlet weak var imageHeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.imageView.image = UIImage(named: "Zonda")
        self.name.text = "Zonda R"
        self.price.text = "$2.9 Million"
        self.carDescription.text = "The Zonda R debuted at the Geneva Motor Show 2007, using the 6.0 litre V12 M120 engine sourced from the race version of the Mercedes-Benz CLK-GTR."
        
        self.imageHeightConstraint.constant = imageHeightConstraintConstant()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func screenHeight() -> CGFloat {
        return UIScreen.mainScreen().bounds.height;
    }

    func imageHeightConstraintConstant() -> CGFloat {
        switch(self.screenHeight()) {
        case 568:
            return 340
            
        case 667:
            return 460
            
        default:
            return 250
        }
    }
}

