//
//  CellViewModel.swift
//  MVVMByProtocol
//
//  Created by chai on 2016/12/1.
//  Copyright © 2016年 chaiyanpu. All rights reserved.
//

import Foundation
protocol CustomCellProtocol: LabelPresentable,ImageViewPresentable,SubLabelPresentable{}
class CellViewModel:CustomCellProtocol{
    
    var title: String
    var imageName: String
    var subTitle:String
    init(_ model:CellModel) {
        //处理数据逻辑
        self.title = model.lableOneText
        self.imageName = model.imageAdress
        self.subTitle = model.lableTwoText
    }
}
