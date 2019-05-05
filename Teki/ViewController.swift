//
//  ViewController.swift
//  Teki
//
//  Created by Quentin Lemaire on 05/05/2019.
//  Copyright © 2019 Quentin Lemaire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let celebrities = [
        "le Steve Jobs",
        "le Zinedine Zidane",
        "la Madonna",
        "le Karl Lagarfeld",
        "la Scarlett Johansson"
    ]
    let activities = [
        "du dancefloor",
        "du barbecue",
        "de la surprise ratée",
        "des blagues lourdes",
        "de la raclette party"
    ]
    
    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBAction func changeQuote() {
        quoteLabel.text = "coucou"
        let randomIndexCelebrity = Int(arc4random_uniform(UInt32(celebrities.count)))
        let randomIndexActivity = Int(arc4random_uniform(UInt32(activities.count)))
        
        quoteLabel.text = "Tu es " + celebrities[randomIndexCelebrity] + " " + activities[randomIndexActivity] + "!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

