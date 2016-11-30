//
//  ControllerHelper.swift
//  MVVMByClosure
//
//  Created by chai on 2016/11/28.
//  Copyright © 2016年 chaiyanpu. All rights reserved.
//  Business

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
    
    ///请求 具体的转模型和请求应该放在另外的工具类里
    private func getData(completion:(_ model:Model)->()){
        //拿到数据
        
        let array = [["dead":"dead","2":"\(aNumberWillChange)","3":"3"],["dead":"dead","2":"\(aNumberWillChange)","3":"3"],["dead":"dead","2":"\(aNumberWillChange)","3":"3"],["dead":"dead","2":"\(aNumberWillChange)","3":"3"],["dead":"dead","2":"\(aNumberWillChange)","3":"3"],["dead":"dead","2":"\(aNumberWillChange)","3":"3"]]
        aNumberWillChange += 1000
        //转模型
        let cellModels:[CellModel] = array.map {
            return CellModel($0["dead"] ?? "", lableOneText: $0["2"] ?? "", lableTwoText: $0["3"] ?? "")
        }
        
        let headModel = HeadModel(timeText:"timeInterval:\(Date().timeIntervalSince1970)")
        
        completion(Model(headModel: headModel, cellModels: cellModels))
    }
    
}

