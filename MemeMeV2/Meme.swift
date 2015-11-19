//
//  Meme.swift
//  MemeMeV1
//
//  Created by Ilia Batiy on 24/09/15.
//  Copyright (c) 2015 Ilia Batiy. All rights reserved.
//

import Foundation
import UIKit

struct Meme {
    var topText: NSString!
    var bottomText: NSString!
    var image: UIImage!
    var memedImage: UIImage!    
}


class MemeStorage {
    static var instance = MemeStorage()
    
    private var memes: [Meme] = []
    
    func at(index: Int) -> Meme {
        return memes[index]
    }
    
    func add(meme: Meme) {
        print("added meme")
        memes.append(meme)
    }
    
    func delete(index: Int) {
        memes.removeAtIndex(index)
    }
    
    var count: Int {
        return memes.count
    }
}			