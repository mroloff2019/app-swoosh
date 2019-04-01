//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Michael Roloff on 4/1/19.
//  Copyright © 2019 Michael Roloff. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
        
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
        
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    
        
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
        
        
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
        skillVC.player = player!
            
            // prepare for segue is always called before view did load on destination view controller. 
        }
    }
    
}
