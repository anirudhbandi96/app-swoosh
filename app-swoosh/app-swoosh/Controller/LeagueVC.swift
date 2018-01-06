//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Anirudh Bandi on 1/6/18.
//  Copyright © 2018 Anirudh Bandi. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   
    @IBAction func onNextTapped(_ sender: BorderButton) {
        
        performSegue(withIdentifier: "skillVCSegue", sender: self)
        
    }
    
}
