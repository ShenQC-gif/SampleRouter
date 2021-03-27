//
//  ThirdViewController.swift
//  SampleRouter
//
//  Created by ちいつんしん on 2021/03/26.
//

import UIKit

class ThirdViewController: UIViewController {

    static func makeFromStoryboard() -> ThirdViewController {
        ThirdViewController.instantiate()
    }

    @IBAction func goFirst(_ sender: Any) {
        Router.shared.showFirst(from: self)
    }

    @IBAction func goSecond(_ sender: Any) {
        Router.shared.showSecond(from: self)
    }
    
}
