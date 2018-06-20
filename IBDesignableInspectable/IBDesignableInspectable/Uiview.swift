//
//  Uiview.swift
//  IBDesignableInspectable
//
//  Created by vijeesh on 19/06/2018.
//  Copyright © 2018 vijeesh. All rights reserved.
//

import UIKit

@IBDesignable class  SuperView: UIView {
  @IBInspectable var borderWidth: CGFloat = 6.0 {
    didSet {
      self.layer.borderWidth = self.borderWidth
    }
  }
  
  @IBInspectable var borderColor: UIColor = UIColor.red {
    didSet {
      self.layer.borderColor = self.borderColor.cgColor
    }
  }
  
  @IBInspectable var cornerRadius: CGFloat = 6.0 {
    didSet {
      self.layer.cornerRadius = self.cornerRadius
    }
  }
  
  @IBInspectable var makeItRound: Bool = false {
    didSet {
      if makeItRound {
        cornerRadius = frame.height * 0.5
      }
    }
  }
  
}
