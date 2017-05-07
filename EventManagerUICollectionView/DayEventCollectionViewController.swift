//
//  DayEventCollectionViewController.swift
//  EventManagerUICollectionView
//
//  Created by hoangdv on 5/2/17.
//  Copyright © 2017 hoangdv. All rights reserved.
//

import UIKit

private let reuseIdentifier = "EventCell"

class DayEventCollectionViewController: UICollectionViewController {

    // MARK: - Data Source
    var eventAdapter = EventAdapter()
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "HeaderView", for: indexPath) as! HeaderView
        let dayEvent = eventAdapter.dayEvents[indexPath.section]
        headerView.didSet(dayEvent: dayEvent)
        return headerView
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            
            switch identifier {
                
            //Chi tiết Event
            case "ShowDetail":
                let detailEvent = segue.destination as! DetailEventViewController
                if let indexPath = self.collectionView!.indexPath(for: sender as! EventCell) {
                    let dayEvent = eventAdapter.dayEvents[indexPath.section]
                    let event = dayEvent.events[indexPath.row]
                    detailEvent.setAdapter(dayEvent: dayEvent, event: event)
                }
            //Thêm Event
            case "AddEvent":
                let addEvent = segue.destination as! AddEventViewController
                addEvent.setAdapter(eventAdapter: eventAdapter)
            default:
                break
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        collectionView?.reloadData()
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        //return the number of sections
        return eventAdapter.dayEvents.count
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return the number of items
        let dayEvent = eventAdapter.dayEvents[section]
        return dayEvent.events.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! EventCell
        let event = eventAtIndexPath(indexPath: indexPath as NSIndexPath)
        cell.didSet(event: event)
    
        return cell
    }
    
    // MARK: - Get event method
    func eventAtIndexPath(indexPath: NSIndexPath) -> Event {
        
        let dayEvent = eventAdapter.dayEvents[indexPath.section]
        return dayEvent.events[indexPath.row]
    }
    
}
