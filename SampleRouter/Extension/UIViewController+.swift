//
//  Storyboard+.swift
//  SampleRouter
//
//  Created by ちいつんしん on 2021/03/26.
//

import UIKit


//extension UIStoryboard {
//
//    static var firstViewController: FirstViewController {
//        UIStoryboard.init(name: "First", bundle: nil).instantiateInitialViewController() as! FirstViewController
//    }
//
//    static var secondViewController: SecondViewController {
//        UIStoryboard.init(name: "Second", bundle: nil).instantiateInitialViewController() as! SecondViewController
//    }
//
//    static var thirdViewController: ThirdViewController {
//        UIStoryboard.init(name: "Third", bundle: nil).instantiateInitialViewController() as! ThirdViewController
//    }
//
//}

extension UIViewController {
    static func instantiate() -> Self {
        guard let vc = UIStoryboard(name: String(describing: self), bundle: nil).instantiateInitialViewController() as? Self else {
            fatalError("Storyboard named \(String(describing: self)) was not found.")
        }
        return vc
    }
}
