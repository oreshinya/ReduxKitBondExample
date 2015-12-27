//
//  applicationReducer.swift
//  ReduxKitBondExample
//
//  Created by Shinya Takahashi on 2015/12/27.
//  Copyright © 2015年 Shinya Takahashi. All rights reserved.
//

import Bond
import ReduxKit

struct AppState {
    var counter: Int!
}

func applicationReducer(prevState: AppState? = nil, action: Action) -> AppState {
    let counter = counterReducer(prevState?.counter, action: action)
    let state = AppState(counter: counter)
    return state
}