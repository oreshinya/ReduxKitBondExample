//
//  ViewController.swift
//  ReduxKitBondExample
//
//  Created by Shinya Takahashi on 2015/12/27.
//  Copyright © 2015年 Shinya Takahashi. All rights reserved.
//

import UIKit
import Bond
import ReduxKit
import ReduxKitBond

class ViewController: UIViewController {
    
    let viewModel = ViewModel()
    
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        viewModel.counter.map{"\($0)"}.bindTo(counterLabel.bnd_text)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func incrementCounter(sender: AnyObject) {
        viewModel.increment()
    }

    @IBAction func decrementCounter(sender: AnyObject) {
        viewModel.decrement()
    }
}

