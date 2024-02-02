//
//  ViewController.swift
//  FetchDataViaURLSession
//
//  Created by Melody Lee on 2024/2/3.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var stationAddressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        // Do any additional setup after loading the view.
    }
    
    struct Station: Decodable, Equatable {
        var stationID: String
        var stationName: String
        var stationAddress: String
    }
    
    func fetchData() {
        let session = URLSession(configuration: .default)
        let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station")
        var request = URLRequest(url: url!)
        request.httpMethod = "Get"
        
        let task = session.dataTask(with: request) {
            (data, response, error) in
            guard let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode == 200 else { 
                print("Not 200 OK")
                return
            }
            
            guard let data = data else {
                print(error.debugDescription)
                return
            }
            
            do {
                let jsonDecoder = JSONDecoder()
                let station = try jsonDecoder.decode(Station.self, from: data)
                print(station)
                
                OperationQueue.main.addOperation {
                    self.stationIDLabel.text = station.stationID
                    self.stationNameLabel.text = station.stationName
                    self.stationAddressLabel.text = station.stationAddress
                }
            }
            catch {
                print("error")
            }
        }
        task.resume()
    }

}

