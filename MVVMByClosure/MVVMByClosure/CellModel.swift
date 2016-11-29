//
//  Model.swift
//  MVVMByClosure
//
//  Created by chai on 2016/11/28.
//  Copyright © 2016年 chaiyanpu. All rights reserved.
//  Model

import Foundation

struct CellModel {
    
    let imageAdress:String
    
    let lableOneText:String
    
    let lableTwoText:String
    
    let labelThreeText:String
    
    init(_ imageAdress:String,lableOneText:String,lableTwoText:String,labelThreeText:String) {
        self.imageAdress = imageAdress
        self.labelThreeText = labelThreeText
        self.lableTwoText = lableTwoText
        self.lableOneText = lableOneText
    }
    
}
