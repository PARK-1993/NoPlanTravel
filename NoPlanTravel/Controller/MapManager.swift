//
//  MapManager.swift
//  NoPlanTravel
//
//  Created by Joonhyun park on 2021/03/01.
//

import UIKit
import CoreLocation

class MapManager
{
    //LocationManager 선언
    var locationManager:CLLocationManager!
    
//    private var latitude : Double
//    private var longitude: Double
    
    init(VC: UIViewController  ) {
        locationManager = CLLocationManager()
        locationManager.delegate = VC as? CLLocationManagerDelegate;
        
        //포그라운드 상태에서 위치 추적 권한 요청
        locationManager.requestWhenInUseAuthorization()
        
        //배터리에 맞게 권장되는 최적의 정확도
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        //위치업데이트
        locationManager.startUpdatingLocation()

    }
    
    public func getPresentLocation() -> (Double, Double){
        let coor = locationManager.location?.coordinate
        if let lat = coor?.latitude{
            if let lon = coor?.longitude{
                return (lat, lon)
            }
        }
        return (0.0,0.0)
    }
    
    public func getTouristSpotListNearby() -> [TouristSpot]{
        let lstTouristSpot : [TouristSpot]
        
    }
}
