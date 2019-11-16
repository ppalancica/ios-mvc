//
//  EventsViewController.swift
//  MusicEvents
//
//  Created by Pavel Palancica on 11/16/19.
//  Copyright © 2019 I Dev TV. All rights reserved.
//

// https://www.natashatherobot.com/ios-using-the-wrong-dequeuereusablecellwithidentifier/

import UIKit

class EventsViewController: UIViewController {

    @IBOutlet private weak var eventsTableView: UITableView!
    
    private lazy var eventsMC = EventsModelController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let cellNib = UINib(nibName: "EventTableViewCell", bundle: .main)
        eventsTableView.register(cellNib, forCellReuseIdentifier: "EventTableViewCell")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

extension EventsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventsMC.eventsCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventTableViewCell", for: indexPath) as! EventTableViewCell
        let event = eventsMC.event(at: indexPath.row)
        cell.eventNameLabel.text = event.name
        cell.eventLocationLabel.text = event.location
        cell.eventDateLabel.text = "\(event.date)"
        return cell
    }
}

extension EventsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
