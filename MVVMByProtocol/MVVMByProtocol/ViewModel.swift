//
//  ViewModel.swift
//  MVVMByProtocol
//
//  Created by chai on 2016/12/1.
//  Copyright © 2016年 chaiyanpu. All rights reserved.
//

import Foundation

import UIKit
var aNumberWillChange = 0
class ViewModel{
    
    let cellDatas:Observable<[CellViewModel]>
    let headViewModel:Observable<HeadViewModel?>
    
    init() {
        self.cellDatas = Observable([])
        self.headViewModel = Observable(nil)
    }
    
    func requestData(completion:()->()){
        self.getData { model in
            let cellViewModel = model.cellModels.map({ cellModel in
                return CellViewModel(cellModel)
            })
            headViewModel.value = HeadViewModel(model.headModel)
            cellDatas.value = cellViewModel
            completion()
        }
    }
    
    ///请求
    func getData(completion:(_ model:Model)->()){
        //拿到数据
        RequestHelper.request { (array, timeString) in
            //转模型
            let cellModels:[CellModel] = array.map {
                return CellModel($0["dead"] ?? "", lableOneText: $0["2"] ?? "", lableTwoText: $0["3"] ?? "")
            }
            
            let headModel = HeadModel(timeText:"timeInterval:\(Date().timeIntervalSince1970)")
            
            completion(Model(headModel: headModel, cellModels: cellModels))
        }
    }
    
}

//请求类
class RequestHelper {
    ///网络请求
    class func request(completion:(_ array:[[String:String]],_ timeString:String)->()){
        let array = [["dead":"dead","2":"\(aNumberWillChange)","3":"3"],["dead":"dead","2":"\(aNumberWillChange)","3":"3"],["dead":"dead","2":"\(aNumberWillChange)","3":"3"],["dead":"dead","2":"\(aNumberWillChange)","3":"3"],["dead":"dead","2":"\(aNumberWillChange)","3":"3"],["dead":"dead","2":"\(aNumberWillChange)","3":"3"]]
        aNumberWillChange += 1000
        
        completion(array,"timeInterval:\(Date().timeIntervalSince1970)")
    }
    
}
