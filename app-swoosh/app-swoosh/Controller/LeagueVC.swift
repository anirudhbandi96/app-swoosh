//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Anirudh Bandi on 1/6/18.
//  Copyright © 2018 Anirudh Bandi. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player : Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.isEnabled = false
        player  = Player()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onMensTapped(_ sender: BorderButton) {
        
        selectLeague(leagueSelected: "mens")
        
    }
    
    @IBAction func onWomensTapped(_ sender: BorderButton) {
        selectLeague(leagueSelected: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: BorderButton) {
        
        selectLeague(leagueSelected: "coed")
        
    }
    
    func selectLeague(leagueSelected : String) {
        player.desiredLeague = leagueSelected
        nextBtn.isEnabled = true
    }
    @IBAction func onNextTapped(_ sender: BorderButton) {
        
        performSegue(withIdentifier: "skillVCSegue", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if let skillVC = segue.destination as? SkillVC{
            
            skillVC.player = player
            
        }
        
    }
    
    
    
    
}
