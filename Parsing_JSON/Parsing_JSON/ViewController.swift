//
//  ViewController.swift
//  Parsing_JSON
//
//  Created by Ashwini shalke on 29/08/19.
//  Copyright © 2019 Ashwini Shalke. All rights reserved.
//

import UIKit


struct WebsiteDescription: Decodable{
    let name : String
    let description : String
    let courses : [Courses]
}

struct Courses: Decodable{
    let id : Int?
    let name : String?
    let link : String?
    let imageURL  : String?
    let numberOfLesson : Int?
    
    //    init(json: [String: Any]){
    //
    //        id = json["id"] as? Int ?? -1
    //        name = json["name"] as? String ?? " "
    //        link = json["link"] as? String ?? " "
    //        imageURL = json["imageURL"] as?  String ?? " "
    //        numberOfLesson = json["numberOfLesson"] as? Int ?? -1
    //    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsonURLString = "https://api.letsbuildthatapp.com/jsondecodable/website_description"
        guard let url = URL(string: jsonURLString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            
            guard let data = data else { return }
            
            // converting JSON data into String
            // let dataAsString = String(data: data, encoding: .utf8 )
            // print (dataAsString)
            
            do {
                // Swift 2/3 uses JSONSeriliazation
                // guard let json = try JSONSerialization.jsonObject(with: data, options:.mutableContainers)
                // as? [String: Any] else { return}
                let course = try JSONDecoder().decode(WebsiteDescription.self, from: data)
                print(course.courses)
                
            } catch let jsonErr {
                print("Error in JSON Serilization", jsonErr)
            }
            }.resume()
    }
    
}

