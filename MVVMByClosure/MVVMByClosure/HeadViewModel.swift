//
//  HeadViewModel.swift
//  MVVMByClosure
//
//  Created by chai on 2016/11/30.
//  Copyright © 2016年 chaiyanpu. All rights reserved.
//

import Foundation

class HeadViewModel{
    
    var timeText:Observable<String>

    init(_ model:HeadModel) {
        self.timeText = Observable(model.timeText)
    }
}
