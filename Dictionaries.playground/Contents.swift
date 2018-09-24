import UIKit

var screenSizesInInches: Dictionary<String, Double> = ["iPhone 7": 4.7, "iPhone 7 Plus": 5.2, "iPad Pro": 12.9]

screenSizesInInches["iPhone 7"]
screenSizesInInches["iPhone 7 Plus"] = 5.5

screenSizesInInches["iPad Air 2"] = 9.7

screenSizesInInches.removeValue(forKey: "iPhone 7")

screenSizesInInches
