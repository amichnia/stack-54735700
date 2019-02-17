//
//  ViewController.swift
//  StackQuestionShow
//
//  Created by Andrzej Michnia on 17/02/2019.
//  Copyright © 2019 Andrzej Michnia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableViewWidth: NSLayoutConstraint!
    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    @IBOutlet weak var tableView: UITableView!
    
    var items: Int = 24 {
        didSet {
            tableViewHeight.constant = CGFloat(50 * items)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.reloadData()
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SimpleCell") else {
            fatalError()
        }

        cell.textLabel?.text = "\(indexPath.row) " + String(repeating: "-", count: 120)
        cell.detailTextLabel?.text = "Right part"

        return cell
    }
}

