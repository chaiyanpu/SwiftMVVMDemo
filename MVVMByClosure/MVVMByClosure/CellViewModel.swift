//
//  ViewModel.swift
//  MVVMByClosure
//
//  Created by chai on 2016/11/28.
//  Copyright © 2016年 chaiyanpu. All rights reserved.
//  ViewModel

import Foundation

class CellViewModel{
    
    private let emptyString = ""
    
    var imageAdress:Observable<String?>
    
    var lableOneText:Observable<String>
    
    var lableTwoText:Observable<String>
    
    init(_ model:CellModel) {
        //处理数据逻辑
        imageAdress = Observable(model.imageAdress)
        lableOneText = Observable(model.lableOneText)
        lableTwoText = Observable(model.lableTwoText)
    }
    
}




