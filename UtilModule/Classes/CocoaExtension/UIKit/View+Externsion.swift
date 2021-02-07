//
//  View+Externsion.swift
//  ShopApp
//
//  Created by Icy on 16/8/19.
//  Copyright © 2016年 eme. All rights reserved.
//

import UIKit

/// 当前屏幕宽度
public let screen_Width = UIScreen.main.bounds.size.width

/// 当前屏幕高度
public let screen_Height = UIScreen.main.bounds.size.height

/// 当前设备宽度与设计的比例
public let widthmultiple = screen_Width/750

/// 是否iphonex
public let isIPhoneX: Bool = (screen_Height == 812 || screen_Height == 896) ? true : false

/// nav tab
public let statusBarHeight      = isIPhoneX ? 44.0 : 20.0
public let navBarHeight         = isIPhoneX ? 88.0 : 64.0
public let safeAreaBottomHeight = isIPhoneX ? 34.0 : 0.0
public let tabBarHeight         = isIPhoneX ? 83.0 : 49.0

extension UIView {
    
    /// 设置view width的值
    public var v_width:CGFloat {
        set(newVal){
            var frame = self.frame
            frame.size.width = newVal
            self.frame = frame
        }
        get{
            return self.frame.size.width
        }
    }
    /// 设置view的高度
    public var v_hegith:CGFloat {
        set(newVal){
            var frame = self.frame
            frame.size.height = newVal
            self.frame = frame
        }
        get{
            return self.frame.size.height
        }
    }
    /// 设置viewx坐标
    public var v_x:CGFloat{
        get{
            return self.frame.origin.x
        }
        set(newVal){
            var frame = self.frame
            frame.origin.x = newVal
            self.frame = frame
        }
    }
    /// 设置view的y坐标
    public var v_y:CGFloat{
        get{
            return self.frame.origin.y
        }
        set(newVal){
            var frame = self.frame
            frame.origin.y = newVal
            self.frame = frame
        }
    }
    // 设置view的中心点x坐标
    public var v_centerX:CGFloat {
        get {
            return self.center.x
        }
        set(newVal) {
            var center = self.center
            center.x = newVal
            self.center = center
        }
    }
    // 设置view的中心点y坐标
    public var v_centerY:CGFloat {
        get {
            return self.center.y
        }
        set(newVal) {
            var center = self.center
            center.y = newVal
            self.center = center
        }
    }
    /// 设置修改view的size值
    public var v_size:CGSize{
        get{
            return self.frame.size
        }
        set(newVal) {
            var frame = self.frame
            frame.size = newVal
            self.frame = frame
        }
    }
    /// 设置修改view的origin值
    public var v_origin:CGPoint{
        get{
            return self.frame.origin
        }
        set(newVal) {
            var frame = self.frame
            frame.origin = newVal
            self.frame = frame
        }
    }
    
    
    /**
     为view 设置边框
     - parameter offset:
     */
    public func changeBorderColor(_ color:UIColor,cornerRadius:CGFloat = 6.0,borderWidth:CGFloat = 1.0) {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = borderWidth
    }
    
    /**
     为view 设置边框
     - parameter offset:
     */
    public func changeBorderColorByHex(hex:String,cornerRadius:CGFloat = 6.0,borderWidth:CGFloat = 1.0) {
        self.changeBorderColor(UIColor(hex: hex), cornerRadius: cornerRadius, borderWidth: borderWidth)
    }
}
