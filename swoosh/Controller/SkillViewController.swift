//
//  SkillViewController.swift
//  swoosh
//
//  Created by Wellington Cabral da Silva on 08/11/17.
//  Copyright © 2017 Wellington Cabral da Silva. All rights reserved.
//

import UIKit

class SkillViewController: UIViewController {
    
    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onBeginnerPressed(_ sender: Any) {
        player.selectedSkillLevel = "Beginner"
    }
    
    @IBAction func onBallerPressed(_ sender: Any) {
        player.selectedSkillLevel = "Baller"
    }
    
    @IBAction func onFinishPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "Player", message: "Desired league: \(player.desiredLeague!) \nSelected skill level: \(player.selectedSkillLevel!)", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        //now we are adding the default action to our alertcontroller
        alertController.addAction(defaultAction)
        
        //and finally presenting our alert using this method
        present(alertController, animated: true, completion: nil)
    }
}
