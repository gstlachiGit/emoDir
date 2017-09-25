//
//  ViewController.swift
//  emojiDictionary
//
//  Created by German Sanchez Tlachi on 20/09/17.
//  Copyright © 2017 gstlachiApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var mitabla: UITableView!

    var emojis = ["🤠", "🤓", "🤡", "😡", "😱", "😨", "😴", "😈", "👺", "💩", "👽"];

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Ya jala git")
        // Do any additional setup after loading the view, typically from a nib.
        mitabla.dataSource = self
        mitabla.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

