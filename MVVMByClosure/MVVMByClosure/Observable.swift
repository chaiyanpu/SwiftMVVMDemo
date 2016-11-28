//
//  Observable.swift
//  MVVMByClosure
//
//  Created by chai on 2016/11/28.
//  Copyright © 2016年 chaiyanpu. All rights reserved.
//  Closure

import UIKit

//观察者
class Observable<T>{
    
    typealias Observer = (T) -> ()
    
    var observer:Observer?
    
    var value:T{
        didSet{
            observer?(value)
        }
    }
    
    init(_ value:T) {
        self.value = value
    }
    
    func observer(observer:Observer?){
        self.observer = observer
        observer?(value)
    }
    
}
