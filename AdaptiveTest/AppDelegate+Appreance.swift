//
//  AppDelegate+Appreance.swift
//  AdaptiveTest
//
//  Created by Eric Ho on 3/7/2016.
//  Copyright © 2016 Eric Ho. All rights reserved.
//

import Foundation
import UIKit

extension AppDelegate {
    
    func appearanceForUINavigationBar() {
    
        //###########
        //setup apperarance when in Horizontal Compact Env
        //###########
        let verticalCompactTrait = UITraitCollection(verticalSizeClass: .Compact)
        let compactAppearance = UINavigationBar.appearanceForTraitCollection(verticalCompactTrait)
        compactAppearance.setBackgroundImage(UIImage(), forBarMetrics: .Default)
        
        //compactAppearance.backgroundColor = UIColor.orangeColor()
        
        //set the shadow line of UINavigationBar to empty image
        compactAppearance.shadowImage = UIImage()
        
        //###########
        //setup apperarance when in Horizontal Regular Env
        //###########
        let verticalRegularTrait = UITraitCollection(verticalSizeClass: .Regular)
        let regularAppearance =  UINavigationBar.appearanceForTraitCollection(verticalRegularTrait)
        regularAppearance.setBackgroundImage(nil, forBarMetrics: .Default)
        
        //regularAppearance.backgroundColor = UIColor.redColor()
        
        //set the shadow line of UINavigationBar to nil -> default shadow line will be use
        regularAppearance.shadowImage = nil
    }
    
    func appearanceForHidingBackButtonTitle() {
//        UIBarButtonItem.appearance().setTitleTextAttributes([NSFontAttributeName: barbuttonFont, NSForegroundColorAttributeName:UIColor.clearColor()], forState: UIControlState.Normal)
//        UIBarButtonItem.appearance().setTitleTextAttributes([NSFontAttributeName: barbuttonFont, NSForegroundColorAttributeName:UIColor.clearColor()], forState: UIControlState.Highlighted)
        
        UIBarButtonItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.clearColor()], forState: UIControlState.Normal)
        UIBarButtonItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.clearColor()], forState: UIControlState.Highlighted)

    }

}