//
//  Model.swift
//  MVVMByClosure
//
//  Created by chai on 2016/11/28.
//  Copyright © 2016年 chaiyanpu. All rights reserved.
//  CellModel

import Foundation

struct CellModel {
    
    let imageAdress:String
    
    let lableOneText:String
    
    let lableTwoText:String
    
    init(_ imageAdress:String,lableOneText:String,lableTwoText:String) {
        self.imageAdress = imageAdress
        self.lableTwoText = lableTwoText
        self.lableOneText = lableOneText
    }
    
}
