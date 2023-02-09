//
//  Extension+UITextField.swift
//  Homework11
//
//  Created by Альбина on 09.02.2023.
//

import UIKit

extension UITextField {
    func setLeftIcon() {
        let iconView = UIImageView(frame: CGRect(x: 30, y: 7, width: 17, height: 17))
        iconView.image = UIImage(named: "person")
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 55, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    
    func setRightIcon() {
        let iconView = UIImageView(frame: CGRect(x: 15, y: 7, width: 20, height: 20))
        iconView.image = UIImage(named: "mark")
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 55, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
    
    func setSecondLeftIcon() {
        let iconView = UIImageView(frame: CGRect(x: 30, y: 7, width: 17, height: 17))
        iconView.image = UIImage(named: "lock")
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 55, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    
}

