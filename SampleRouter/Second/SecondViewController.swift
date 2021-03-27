//
//  SecondViewController.swift
//  SampleRouter
//
//  Created by ちいつんしん on 2021/03/26.
//

import UIKit

class SecondViewController: UIViewController {

    static func makeFromStoryboard() -> SecondViewController {
        SecondViewController.instantiate()
    }

    @IBAction func goFirst(_ sender: Any) {
        Router.shared.showFirst(from: self)
    }

    @IBAction func goThird(_ sender: Any) {
        Router.shared.showThird(from: self)
    }

}
