//
//  MapViewController.swift
//  HelloMyRecorder
//
//  Created by 林欣鼎 on 2019/1/8.
//  Copyright © 2019年 林欣鼎. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    var restaurant = Restaurant()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // 地址轉換為座標後並標記在地圖上
        let geoCoder = CLGeocoder()
        
        geoCoder.geocodeAddressString(restaurant.location) { (placemarks, error) in
            if let error = error {
                NSLog("🎃error: \(error.localizedDescription)")
            }
            
            if let placemarks = placemarks {
                // 取得第一個地點標記
                let placemark = placemarks[0]
                
                // 加上標記
                let annotation = MKPointAnnotation()
                annotation.title = self.restaurant.name
                annotation.subtitle = self.restaurant.type
                
                if let location = placemark.location {
                    // 顯示標記
                    annotation.coordinate = location.coordinate
                    self.mapView.showAnnotations([annotation], animated: true)
                    self.mapView.selectAnnotation(annotation, animated: true)
                }
            }
        }
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
