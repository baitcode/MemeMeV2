//
//  ShowMemeController.swift
//  MemeMeV2
//
//  Created by Ilia Batiy on 19/11/15.
//  Copyright © 2015 Ilia Batiy. All rights reserved.
//

import Foundation
import UIKit

class ShowMemeController: UIViewController {
    internal var meme: Meme!
    @IBOutlet weak var memeImage: UIImageView!
 
    override func viewWillAppear(animated: Bool) {
        memeImage.image = meme.memedImage
    }
    
}