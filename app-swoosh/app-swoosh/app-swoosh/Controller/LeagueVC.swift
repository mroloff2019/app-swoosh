//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Michael Roloff on 4/1/19.
//  Copyright © 2019 Michael Roloff. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
        
    }
    

}
