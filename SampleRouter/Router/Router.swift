//
//  Router.swift
//  SampleRouter
//
//  Created by ちいつんしん on 2021/03/26.
//

import UIKit

final class Router {

    static let shared:Router = .init()
    private var window: UIWindow?

    func showRoot(window: UIWindow?) {
        let vc = FirstViewController.makeFromStoryboard()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }

    func showFirst(from: UIViewController, animated: Bool = true) {
        let firstVC = FirstViewController.makeFromStoryboard()
        presentNextViewController(from: from, to: firstVC)
    }

    func showSecond(from: UIViewController, animated: Bool = true) {
        let secondVC = SecondViewController.makeFromStoryboard()
        presentNextViewController(from: from, to: secondVC)
    }

    func showThird(from: UIViewController, animated: Bool = true) {
        let thirdVC = ThirdViewController.makeFromStoryboard()
        presentNextViewController(from: from, to: thirdVC)
    }

}

private extension Router {
    func presentNextViewController(from: UIViewController, to: UIViewController){
        from.dismiss(animated: true, completion: nil)
        to.modalPresentationStyle = .fullScreen
        to.modalTransitionStyle = .crossDissolve
        from.present(to, animated: true, completion: nil)
    }
}
