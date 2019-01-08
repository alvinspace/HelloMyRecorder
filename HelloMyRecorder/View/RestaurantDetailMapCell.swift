//
//  RestaurantDetailMapCell.swift
//  HelloMyRecorder
//
//  Created by 林欣鼎 on 2019/1/8.
//  Copyright © 2019年 林欣鼎. All rights reserved.
//

import UIKit
import MapKit

class RestaurantDetailMapCell: UITableViewCell {

    @IBOutlet weak var mapView: MKMapView!
    
    // 宣告LocationManager變數
    var locationManager = CLLocationManager()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - Get Restaurant Location
    func configure(location: String) {
        // 取得位置
        let geoCoder = CLGeocoder()
        
        
        print(location)
        geoCoder.geocodeAddressString(location) { (placemarks, error) in
            if let error = error {
                NSLog("🎃error: \(error.localizedDescription)")
            }
            
            if let placemarks = placemarks {
                // 取得第一個地點標記
                let placemark = placemarks[0]
                
                // 加上標記
                let annotation = MKPointAnnotation()
                
                if let location = placemark.location {
                    // 顯示標記
                    annotation.coordinate = location.coordinate
                    self.mapView.addAnnotation(annotation)

                    // 設定縮放程度 半徑200公尺
                    let region = MKCoordinateRegion.init(center: annotation.coordinate, latitudinalMeters: 200, longitudinalMeters: 200)
                    self.mapView.setRegion(region, animated: false)
                }
            }
        }
    }
}
