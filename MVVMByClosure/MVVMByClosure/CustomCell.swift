//
//  CustomCell.swift
//  MVVMByClosure
//
//  Created by chai on 2016/11/28.
//  Copyright © 2016年 chaiyanpu. All rights reserved.
//  View

import UIKit

class CustomCell: UITableViewCell {
    
    static let identifiler = "CustomCell"
    
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var customImageView: UIImageView!
    
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
            cell = CustomCell(style: UITableViewCellStyle.default, reuseIdentifier: identifiler)
        }
        
        return cell!
    }
    
    var viewModel:CellViewModel?{
        didSet{
            viewModel?.imageAdress.observer {
                [unowned self] adress in
                if adress != nil {
                    self.customImageView.image = UIImage(named:adress!)
                }
            }
            viewModel?.lableOneText.observer {
                [unowned self] in
                self.labelOne.text = $0
            }
            
            viewModel?.lableTwoText.observer {
                [unowned self] in
                self.labelTwo.text = $0
            }
            
            viewModel?.labelThreeText.observer {
                [unowned self] in
                self.labelThree.text = $0
            }
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
