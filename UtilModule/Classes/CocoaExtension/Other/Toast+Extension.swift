//
//  Toast+Extension.swift
//  Pods
//
//  Created by Icy on 2017/1/10.
//
//


import Foundation
import Toast_Swift
import RxCocoa
import RxSwift

extension UIView {
    /**
     一般的弹出显示信息
     */
    public func toast(_ message: String){
        
        self.makeToast(message, duration: 2.0, position:.center)
    }
  
    /**
     显示中间提示
     */
    public func toastCenter(_ message: String){
    
        self.makeToast(message, duration: 2.0, position:.center)
    }
 
    /**
     显示底部提示
     */
    public func toastBottom(_ message: String){
        self.makeToast(message, duration: 2.0, position: .bottom)
    }
   
    /**
     提示框消失后回调
     - parameter message:
     - parameter completion: 回调函数
     */
    public func toastCompletion(_ message:String,position:ToastPosition = .center,completion: ((_ didTap: Bool) -> Void)?) {
        self.makeToast(message, duration: 2.0, position: position, title: nil, image: nil, completion: completion)
    }

}
