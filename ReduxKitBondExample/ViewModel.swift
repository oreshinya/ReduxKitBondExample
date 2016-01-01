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
    
    static let store = AppStore.store
    let counter: Observable<Int>
    
    init() {
        self.counter = Observable(self.dynamicType.store.getState().counter)
        self.dynamicType.store.subscribe { [unowned self] state in
            self.counter.next(state.counter)
        }
    }
    
    func increment() {
        self.dynamicType.store.dispatch(IncrementAction())
    }
    
    func decrement() {
        self.dynamicType.store.dispatch(DecrementAction())
    }
}
