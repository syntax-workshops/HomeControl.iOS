//
//  ButtonCollectionViewCell.swift
//  HomeControl
//
//  Created by Mathijs Bernson on 19/03/16.
//  Copyright © 2016 Duckson. All rights reserved.
//

import UIKit

class ButtonCell: UICollectionViewCell, SendsMessages {

  deinit {
    print("ButtonCollectionViewCell deinit")
  }
  var homeClient: HomeClient?
  
  var action: MessageViewModel? {
    didSet {
      button.setTitle(action?.description, forState: .Normal)
    }
  }

  @IBOutlet weak var button: UIButton!

  @IBAction func buttonTouchedUp(sender: AnyObject) {
    sendCurrentMessage()
  }
}
