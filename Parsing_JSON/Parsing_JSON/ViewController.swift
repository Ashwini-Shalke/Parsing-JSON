//
//  ViewController.swift
//  Parsing_JSON
//
//  Created by Ashwini shalke on 29/08/19.
//  Copyright © 2019 Ashwini Shalke. All rights reserved.
//

import UIKit

struct courses {
    let id : Int
    let name : String
    let link : String
    let imageURL  : String
    let numberOfLesson : Int
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsonURLString = "https://api.letsbuildthatapp.com/jsondecodable/course"
        guard let url = URL(string: jsonURLString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            guard let data = data else {return}
            
            // converting JSON data into String
            //            let dataAsString = String(data: data, encoding: .utf8 )
            // print (dataAsString)

            // Swift 2/3 uses JSONSeriliazation
            do {
                let json = try JSONSerialization.jsonObject(with: data, options:.mutableContainers)
                print(json)
            } catch let jsonErr {
                print("Error in JSON Serilization", jsonErr)
            }
            
            
            
            }.resume()
    }
    
    
}

