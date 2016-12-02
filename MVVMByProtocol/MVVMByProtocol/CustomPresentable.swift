//
//  CustomPresentable.swift
//  MVVMByProtocol
//
//  Created by chai on 2016/12/1.
//  Copyright © 2016年 chaiyanpu. All rights reserved.
//  Custom View Protocol

import Foundation
import UIKit
import Messages

protocol LabelPresentable {
    var title:String{get}
    var titleColor:UIColor {get}
    func updataLabelData(_ titleLable:UILabel)
}

extension LabelPresentable  {
    var titleColor:UIColor{
        return UIColor.blue
    }
    func updataLabelData(_ titleLable:UILabel){
        titleLable.text = title
        titleLable.textColor = titleColor
    }
}
protocol SubLabelPresentable {
    var subTitle:String{get}
    var subTitleColor:UIColor {get}
    func updataSublabelData(_ subTitleLable:UILabel)
}
extension SubLabelPresentable{
    var subTitleColor:UIColor{
        return UIColor.red
    }
    func updataSublabelData(_ subTitleLable:UILabel){
        subTitleLable.text = subTitle
        subTitleLable.textColor = subTitleColor
    }
}
protocol ImageViewPresentable {
    var imageName:String{get}
    func updataImageViewData(_ imageView:UIImageView)
}

extension ImageViewPresentable{
    func updataImageViewData(_ imageView:UIImageView){
        imageView.image = UIImage(named:imageName)
    }
}
