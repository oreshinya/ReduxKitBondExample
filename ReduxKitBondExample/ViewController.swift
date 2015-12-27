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
    
    let store =  ReduxKitBond.createStore(applicationReducer)

    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let counterStream = Observable(store.getState().counter)
        store.subscribe { state in
            counterStream.next(state.counter)
        }
        counterStream.map{"\($0)"}.bindTo(counterLabel.bnd_text)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func incrementCounter(sender: AnyObject) {
        store.dispatch(IncrementAction())
    }

    @IBAction func decrementCounter(sender: AnyObject) {
        store.dispatch(DecrementAction())
    }
}

