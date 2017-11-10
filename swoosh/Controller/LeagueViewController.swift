//
//  LegueViewController.swift
//  swoosh
//
//  Created by Wellington Cabral da Silva on 08/11/17.
//  Copyright © 2017 Wellington Cabral da Silva. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }

    @IBAction func onNextPressed(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
    @IBAction func onMensPressed(_ sender: Any) {
        selectLeague(leagueType: "mens", button: sender as! BorderButton)
    }
    
    @IBAction func onWomensPressed(_ sender: Any) {
        selectLeague(leagueType: "womens", button: sender as! BorderButton)
    }
    
    @IBAction func onCoedPressed(_ sender: Any) {
        selectLeague(leagueType: "co-ed", button: sender as! BorderButton)
    }
    
    func selectLeague(leagueType: String, button: BorderButton) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillViewController {
            skillVC.player = self.player
        }
    }
}
