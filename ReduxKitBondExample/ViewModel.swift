//
//  ViewModel.swift
//  ReduxKitBondExample
//
//  Created by Shinya Takahashi on 2015/12/27.
//  Copyright © 2015年 Shinya Takahashi. All rights reserved.
//

import Bond
import ReduxKit
import ReduxKitBond

class ViewModel {
    
    let store = AppStore.store
    let counter: Observable<Int>
    
    init() {
        self.counter = Observable(store.getState().counter)
        store.subscribe { [unowned self] state in
            self.counter.next(state.counter)
        }
    }
    
    func increment() {
        store.dispatch(IncrementAction())
    }
    
    func decrement() {
        store.dispatch(DecrementAction())
    }
}
