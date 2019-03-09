//
//  AppearanceProvider.swift
//  swift-2048
//
//  Created by Austin Zheng on 6/3/14.
//  Copyright (c) 2014 Austin Zheng. Released under the terms of the MIT license.
//

import UIKit

protocol AppearanceProviderProtocol: class {
  func tileColor(_ value: Int) -> UIColor
  func numberColor(_ value: Int) -> UIColor
  func fontForNumbers() -> UIFont
}

class AppearanceProvider: AppearanceProviderProtocol {

  // Provide a tile color for a given value
  func tileColor(_ value: Int) -> UIColor {
    switch value {
    case 2:
      return UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    case 4:
      return UIColor(red: 30.0/255.0, green: 42.0/255.0, blue: 57.0/255.0, alpha: 1.0)
    case 8:
      return UIColor(red: 26.0/255.0, green: 63.0/255.0, blue: 95.0/255.0, alpha: 1.0)
    case 16:
      return UIColor(red: 67.0/255.0, green: 100.0/255.0, blue: 135.0/255.0, alpha: 1.0)
    case 32:
      return UIColor(red: 87.0/255.0, green: 105.0/255.0, blue: 115.0/255.0, alpha: 1.0)
    case 64:
      return UIColor(red: 120.0/255.0, green: 125.0/255.0, blue: 175.0/255.0, alpha: 1.0)
    case 128, 256, 512, 1024, 2048:
      return UIColor(red: 231.0/255.0, green: 133.0/255.0, blue: 156.0/255.0, alpha: 1.0)
    default:
      return UIColor.black
    }
  }

  // Provide a numeral color for a given value
  func numberColor(_ value: Int) -> UIColor {
    switch value {
    case 2, 4:
      return UIColor(red: 255.0/255.0, green: 198.0/255.0, blue: 116.0/255.0, alpha: 1.0)
    default:
      return UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 222.0/255.0, alpha: 1.0)
    }
  }

  // Provide the font to be used on the number tiles
  func fontForNumbers() -> UIFont {
    if let font = UIFont(name: "HelveticaNeue-Bold", size: 25) {
      return font
    }
    return UIFont.systemFont(ofSize: 25)
  }
}
