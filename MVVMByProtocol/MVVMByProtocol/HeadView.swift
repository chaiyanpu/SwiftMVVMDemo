//
//  HeadView.swift
//  MVVMByProtocol
//
//  Created by chai on 2016/12/1.
//  Copyright © 2016年 chaiyanpu. All rights reserved.
//

import UIKit

class HeadView: UIView {

    lazy var timeLabel:UILabel = {
        let timeLabel = UILabel()
        return timeLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        timeLabel.frame = frame
        addSubview(timeLabel)
    }
    
    var headViewModel:LabelPresentable?{
        didSet{
           headViewModel?.updataLabelData(timeLabel)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
