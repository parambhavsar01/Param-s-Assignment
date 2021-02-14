//
//  MyCollectionViewCell.swift
//  Demo App
//
//  Created by Param Bhavsar on 14/02/21.
//  Copyright © 2021 Param Bhavsar. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImageView: UIImageView!
    
    static let identifier = "MyCollectionViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
    
    public func configure(with model: Model){
        self.myLabel.text = model.text
        self.myImageView.image = UIImage(named: model.imageName)
        self.myImageView.contentMode = .scaleAspectFill
      }
    
    @IBAction func sharebutton(_ sender: UIButton) {
        
        let textToShare = "Swift is awsome!"
        
        
        if let urlString = NSURL(string: "https://www.google.com") {
        
            let objectToShare: [Any] = [textToShare, urlString]
        
        let activityController = UIActivityViewController(activityItems: objectToShare, applicationActivities: nil)
        
        activityController.popoverPresentationController?.sourceView = sender
        UIApplication.shared.inputViewController?.present(activityController, animated: true, completion: nil)
            
            print("yes it is working")
     }
    }
    
    }



