//
//  ViewController.swift
//  UIkit-counter
//
//  Created by Yu on 2022/1/17.
//

import UIKit

class ViewController: UIViewController {

    // state
    var count = 0
    // UI
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // render UI after view load
        renderUI()
    }

    @IBAction func decreaseClicked(_ sender: Any) {
        // update state
        count -= 1
        // update UI
        renderUI()
    }
    @IBAction func resetClicked(_ sender: Any) {
        count = 0
        renderUI()
    }
    @IBAction func increaseClicked(_ sender: Any) {
        count += 1
        renderUI()
    }
    
    func renderUI() {
        countLabel.text = String(count)
    }    
}

