//
//  MemeListViewController.swift
//  MemeMeV2
//
//  Created by Ilia Batiy on 17/11/15.
//  Copyright © 2015 Ilia Batiy. All rights reserved.
//

import Foundation
import UIKit

class MemeTableViewCell: UITableViewCell {
    @IBOutlet weak var memeImage: UIImageView!
    @IBOutlet weak var memeText: UILabel!
    
    func setMeme(meme: Meme) {
        memeImage.image = meme.memedImage
        memeText.text = "\(meme.topText) \(meme.bottomText)"
    }
}

class MemeListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        
    @IBOutlet weak var table: UITableView!
    
    private var selectedMeme: Meme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        table.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MemeStorage.instance.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.table.dequeueReusableCellWithIdentifier("MemeTableViewCell") as! MemeTableViewCell
        cell.setMeme(MemeStorage.instance.at(indexPath.row))
        return cell
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            MemeStorage.instance.delete(indexPath.row)
            table.reloadData()
        }
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedMeme = MemeStorage.instance.at(indexPath.row)
        performSegueWithIdentifier("showMeme", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showMeme" {
            let controller = segue.destinationViewController as! ShowMemeController
            controller.meme = selectedMeme
        }
    }
    
}