//
//  AppStore.swift
//  ReduxKitBondExample
//
//  Created by Shinya Takahashi on 2015/12/27.
//  Copyright © 2015年 Shinya Takahashi. All rights reserved.
//

import Bond
import ReduxKit
import ReduxKitBond

struct AppStore {
    static let store = ReduxKitBond.createStore(applicationReducer)
}