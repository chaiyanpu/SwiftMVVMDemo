//
//  HeadViewModel.swift
//  MVVMByProtocol
//
//  Created by chai on 2016/12/1.
//  Copyright © 2016年 chaiyanpu. All rights reserved.
//

import Foundation

class HeadViewModel:LabelPresentable{
    
    var title: String
    
    init(_ model:HeadModel) {
        self.title = model.timeText
    }
}
