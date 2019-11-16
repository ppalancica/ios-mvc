//
//  HomeViewController.swift
//  MusicEvents
//
//  Created by Pavel Palancica on 11/16/19.
//  Copyright © 2019 I Dev TV. All rights reserved.
//

import UIKit

final class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction private func goToEventsButtonTouched(_ sender: Any) {
        let eventsVC = EventsViewController(nibName: "EventsViewController", bundle: .main)
        
        if let navigationController = navigationController {
            navigationController.pushViewController(eventsVC, animated: true)
        }
    }
}
