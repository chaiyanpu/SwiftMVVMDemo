//
//  ViewController.swift
//  MVVMByProtocol
//
//  Created by chai on 2016/12/1.
//  Copyright © 2016年 chaiyanpu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var aTableView:UITableView!
    var headView:HeadView!
    let headH:CGFloat = 80
    lazy var viewModel:ViewModel = {
        return ViewModel()
    }()
    lazy var refreshControl:UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.tintColor = UIColor.blue
        refreshControl.attributedTitle = NSAttributedString(string:"下拉刷新" )
        return refreshControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addHeadView()
        addTableView()
        self.refresh()
    }
    
    func refresh(){
        viewModel.requestData(completion:{
            [unowned self] in
            self.aTableView.reloadData()
            self.refreshControl.endRefreshing()
        })
    }
    
    func addHeadView(){
        headView = HeadView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: headH))
        viewModel.headViewModel.observer{
            [unowned self] headViewModel in
            self.headView.headViewModel = headViewModel
        }
        view.addSubview(headView)
    }
    
    func addTableView(){
        aTableView = UITableView(frame: CGRect(x: 0, y: headH, width: self.view.frame.width, height: self.view.frame.height - headH), style:.plain)
        aTableView.dataSource = self
        self.view.addSubview(aTableView)
        
        refreshControl.addTarget(self, action: #selector(self.refresh), for:.valueChanged)
        
        //iOS新特性
        self.aTableView.refreshControl = refreshControl
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension ViewController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.cellDatas.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CustomCell.getCustomCell(tableView: tableView)
        cell.viewModel = viewModel.cellDatas.value[indexPath.row]
        return cell
    }
    
}
