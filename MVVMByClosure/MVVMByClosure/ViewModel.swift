//
//  ViewModel.swift
//  MVVMByClosure
//
//  Created by chai on 2016/11/28.
//  Copyright © 2016年 chaiyanpu. All rights reserved.
//  ViewModel

import Foundation

class ViewModel{
    
    private let emptyString = ""
    
    var imageAdress:Observable<String?>
    
    var lableOneText:Observable<String>
    
    var lableTwoText:Observable<String>
    
    var labelThreeText:Observable<String>
    
    init() {
        imageAdress = Observable(emptyString)
        lableOneText = Observable(emptyString)
        lableTwoText = Observable(emptyString)
        labelThreeText = Observable(emptyString)
    }
    
}




