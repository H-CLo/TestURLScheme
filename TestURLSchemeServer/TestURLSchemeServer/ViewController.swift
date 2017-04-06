//
//  ViewController.swift
//  TestURLSchemeServer
//
//  Created by Hung Chang Lo on 23/01/2017.
//  Copyright © 2017 Go-Trust. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btnOpenURLClient(_ sender: UIButton) {
        let bundle = Bundle.main.bundleIdentifier!
        let payload: [String : Any] = ["I'm url server side": bundle]
        
        let app = UIApplication.shared
        let url = URL(string: "TestURLSchemeClient://")!
        if app.canOpenURL(url) {
            app.open(url, options: payload, completionHandler: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

