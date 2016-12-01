//
//  CustomPresentable.swift
//  MVVMByProtocol
//
//  Created by chai on 2016/12/1.
//  Copyright © 2016年 chaiyanpu. All rights reserved.
//  Custom View Protocol

import Foundation
import UIKit

protocol LabelPresentable {
    var title:String{get}
    var titleColor:UIColor?{get}
    var titleFont:UIFont?{get}
    func updataLabelData(_ titleLable:UILabel)
}

extension LabelPresentable{
    func updataLabelData(_ titleLable:UILabel){
        titleLable.text = title
        if let font = titleFont{
            titleLable.font = font
        }
        if let color =  titleColor{
            titleLable.textColor = color
        }
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

protocol ButtonPresentable{
    var buttonClickHandler:(()->())?{get}
    var imageName:String?{get}
    var titleLabelPresentable:LabelPresentable?{get}
//    var title:LabelPresentable?{get}
    var title:String?{get}
    func updataButtomData(_ button:UIButton)
    func buttonClick()
}

extension ButtonPresentable{
    func updataButtomData(_ button:UIButton){
        button.setTitle(title, for: UIControlState.normal)
        if let name = imageName{
            button.setBackgroundImage(UIImage(named:name), for: UIControlState.normal)
        }
        if let titleLabelPresentable = titleLabelPresentable{
            titleLabelPresentable.updataLabelData(button.titleLabel!)
        }
        if let buttonClickHandler = buttonClickHandler{
            let tap = UITapGestureRecognizer(target: <#T##Any?#>, action: <#T##Selector?#>)
            button.addTarget(button, action: <#T##Selector#>, for: <#T##UIControlEvents#>)
        }
        
    }
    var buttonClickHandler:(()->())?{
        return nil
    }
    func buttonClick(){
        buttonClickHandler?()
    }

}
