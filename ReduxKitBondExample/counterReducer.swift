//
//  counterReducer.swift
//  ReduxKitBondExample
//
//  Created by Shinya Takahashi on 2015/12/27.
//  Copyright © 2015年 Shinya Takahashi. All rights reserved.
//

import ReduxKit

func counterReducer(prevState: Int?, action: Action) -> Int {
    let defaultValue = 0
    let state = prevState ?? defaultValue
    switch action {
        case let action as IncrementAction:
            return (state + action.rawPayload)
        case let action as DecrementAction:
            return (state - action.rawPayload)
        default:
            return state
    }
}