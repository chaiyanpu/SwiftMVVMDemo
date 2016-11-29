//
//  ControllerHelper.swift
//  MVVMByClosure
//
//  Created by chai on 2016/11/28.
//  Copyright © 2016年 chaiyanpu. All rights reserved.
//  Business

import UIKit

class ViewModel{
    
    var cellDatas:[CellViewModel]?
    
    func requestData(completion:()->()){
        self.getData { array in
            for d in array{
//                let model = Model(d["1"] ?? "", lableOneText: d["2"] ?? "", lableTwoText: d["3"] ?? "", labelThreeText: d["4"] ?? "")
//                
//                cellDatas?.append(viewModel)
            }
            completion()
        }
    }
    
    ///请求
    func getData(completion:(_ array:[[String:String]])->()){
        let array = [["1":"1","2":"2","3":"3","4":"4"],["1":"1","2":"2","3":"3","4":"4"],["1":"1","2":"2","3":"3","4":"4"],["1":"1","2":"2","3":"3","4":"4"],["1":"1","2":"2","3":"3","4":"4"],["1":"1","2":"2","3":"3","4":"4"]]
        completion(array)
    }
    
}

