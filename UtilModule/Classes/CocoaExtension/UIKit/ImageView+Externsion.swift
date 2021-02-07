//
//  ImageView+Externsion.swift
//  MikerShop
//
//  Created by eme on 2016/12/17.
//  Copyright © 2016年 eme. All rights reserved.
//


import UIKit
import Kingfisher

extension UIImageView {
    
    ///所有商品图片 通过key 加载网络图片 ,这块需要注意下 placeholderImage ,这个必须得在主项目下的image 才能取到
    public  func setUrlImage(_ url:String ,placeholderImage:String = "placeholder",options:KingfisherOptionsInfo = [.transition(ImageTransition.fade(1.2))]) -> Void {
        self.kf.setImage(with: URL(string: url), placeholder: UIImage(named: placeholderImage), options: options)
    }
    
    /// 设置图片圆角
    public func circleImage() {
        /// 建立上下文
        UIGraphicsBeginImageContextWithOptions(self.frame.size, false, 0)
        /// 获取当前上下文
        let ctx = UIGraphicsGetCurrentContext()
        /// 添加一个圆，并裁剪
        ctx?.addEllipse(in: self.bounds)
        ctx?.clip()
        /// 绘制图像
        self.draw(self.bounds)
        /// 获取绘制的图像
        let image = UIGraphicsGetImageFromCurrentImageContext()
        /// 关闭上下文
        UIGraphicsEndImageContext()
        DispatchQueue.global().async {
            self.image = image
        }
    }
}

