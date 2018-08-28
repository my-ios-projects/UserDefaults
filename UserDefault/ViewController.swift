//
//  ViewController.swift
//  UserDefault
//
//  Created by Taha Magdy on 8/28/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // set the theme with the saved one.
        setTheStoredTheme()

    }
    
    func setTheStoredTheme() {
        if let sun = UserDefaults.standard.value(forKey: "sunIsOn?") {
            setThemeWithBoolValue(sun as! Bool)
        }
    } // end setTheStoredTheme()


    // change the UI
    func setThemeWithBoolValue(_ sun: Bool) {
        
        if sun {
            imageView.image = UIImage(named: "sun")
        } else {
            imageView.image = UIImage(named: "moon")
        }
    }
    
    
    @IBAction func changeTheme(_ sender: Any) {
        let x = sender as! UISwitch
        setThemeWithBoolValue(x.isOn)
        UserDefaults.standard.set(x.isOn, forKey: "sunIsOn?")
    }
    
}

