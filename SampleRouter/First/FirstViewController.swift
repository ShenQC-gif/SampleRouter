//
//  FirstViewController.swift
//  SampleRouter
//
//  Created by ちいつんしん on 2021/03/26.
//

import UIKit

final class FirstViewController : UIViewController{

    static func makeFromStoryboard() -> FirstViewController {
        FirstViewController.instantiate()
    }
    
    @IBAction func goSecond(_ sender: Any) {
        Router.shared.showSecond(from: self)
    }
    @IBAction func goThird(_ sender: Any) {
        Router.shared.showThird(from: self)
    }

}
