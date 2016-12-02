//
//  CellModel.swift
//  MVVMByProtocol
//
//  Created by chai on 2016/12/1.
//  Copyright © 2016年 chaiyanpu. All rights reserved.
//

import Foundation

struct CellModel {
    
    let imageAdress:String
    
    let lableOneText:String
    let lableTwoText:String
    init(_ imageAdress:String,lableOneText:String,lableTwoText:String) {
        self.imageAdress = imageAdress
        self.lableOneText = lableOneText
        self.lableTwoText = lableTwoText
    }
    
}
