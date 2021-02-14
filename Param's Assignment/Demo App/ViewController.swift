//
//  ViewController.swift
//  Demo App
//
//  Created by Param Bhavsar on 12/02/21.
//  Copyright © 2021 Param Bhavsar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var table : UITableView!
    
    var models = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "First", imageName: "card6"))
        models.append(Model(text: "Second", imageName: "card7"))
        models.append(Model(text: "Third", imageName: "card8"))
        models.append(Model(text: "Fourth", imageName: "card9"))
        models.append(Model(text: "Fifth", imageName: "card10"))
        
        models.append(Model(text: "First", imageName: "card6"))
        models.append(Model(text: "Second", imageName: "card7"))
        models.append(Model(text: "Third", imageName: "card8"))
        models.append(Model(text: "Fourth", imageName: "card9"))
        models.append(Model(text: "Fifth", imageName: "card10"))
        
        models.append(Model(text: "First", imageName: "card6"))
        models.append(Model(text: "Second", imageName: "card7"))
        models.append(Model(text: "Third", imageName: "card8"))
        models.append(Model(text: "Fourth", imageName: "card9"))
        models.append(Model(text: "Fifth", imageName: "card10"))
        
        
        
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier : CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        
   }
    //Table
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        cell.configure(with: models)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
}
    
struct Model{
    let text: String
    let imageName: String
    
    init(text: String, imageName: String){
        self.text = text
        self.imageName = imageName
    }
}


