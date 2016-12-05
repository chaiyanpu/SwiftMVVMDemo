//
//  CustomCell.swift
//  MVVMByProtocol
//
//  Created by chai on 2016/12/1.
//  Copyright © 2016年 chaiyanpu. All rights reserved.
//

import UIKit



class CustomCell: UITableViewCell {

    static let identifiler = "CustomCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    class func getCustomCell(tableView:UITableView) -> CustomCell{
        
        var cell = tableView.dequeueReusableCell(withIdentifier: identifiler) as? CustomCell
        
        if cell == nil{
            cell = CustomCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: identifiler)
        }
        
        return cell!
    }
    
    var customCellModel:CustomCellProtocol?{
        didSet{
            customCellModel?.updataImageViewData(self.imageView!)
            customCellModel?.updataLabelData(self.textLabel!)
            customCellModel?.updataSublabelData(self.detailTextLabel!)
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
