//
//  ViewController.swift
//  MVVMByClosure
//
//  Created by chai on 2016/11/28.
//  Copyright © 2016年 chaiyanpu. All rights reserved.
//  View-Controller

import UIKit

class ViewController: UIViewController {

    var aTableView:UITableView!
    var viewModel:ViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aTableView = UITableView(frame: self.view.bounds, style:.plain)
        aTableView.dataSource = self
        self.view.addSubview(aTableView)
        
        viewModel = ViewModel()
        
        viewModel.requestData(completion: {
            self.aTableView.reloadData()
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

extension ViewController:UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.cellDatas?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = CustomCell.getCustomCell(tableView: tableView)
        cell.viewModel = viewModel.cellDatas?[indexPath.row]
        
        return cell
    }
    
}
