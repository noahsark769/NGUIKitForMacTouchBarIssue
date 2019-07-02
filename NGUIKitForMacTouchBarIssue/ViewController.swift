//
//  ViewController.swift
//  NGUIKitForMacTouchBarIssue
//
//  Created by Noah Gilmore on 7/2/19.
//  Copyright © 2019 Noah Gilmore. All rights reserved.
//

import UIKit
import AppKit

class ViewController: UIViewController, NSTouchBarProvider {
    var touchBar: NSTouchBar? {
        let bar = NSTouchBar()
        let identifier = NSTouchBarItem.Identifier(rawValue: "clickme")
        bar.defaultItemIdentifiers = [identifier]
        bar.templateItems = [
            NSButtonTouchBarItem(
                identifier: identifier,
                title: "😥",
                target: self,
                action: #selector(didTapClickMe(_:))
            )
        ]
        return bar
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .red
    }

    @objc private func didTapClickMe(_ sender: NSTouchBarItem) {
        print("Click me!!!")
    }
}

