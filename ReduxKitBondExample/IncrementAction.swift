//
//  IncrementAction.swift
//  ReduxKitBondExample
//
//  Created by Shinya Takahashi on 2015/12/27.
//  Copyright © 2015年 Shinya Takahashi. All rights reserved.
//

import ReduxKit

struct IncrementAction: SimpleStandardAction {
    let meta: Any? = nil
    let error: Bool = false
    let rawPayload: Int = 1
}
