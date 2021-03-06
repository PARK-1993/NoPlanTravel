//
//  RandomPlaceViewController.swift
//  NoPlanTravel
//
//  Created by Joonhyun park on 2021/03/01.
//

import UIKit
import CoreLocation

class RandomPlaceViewController: UIViewController, CLLocationManagerDelegate {

    var mapManager : MapManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapManager = MapManager(VC: self)
    }
    
    func selectRandomTouristSpot(){
        
        // 현재위치 파악
        let presentLocation : (Double, Double) = mapManager.getPresentLocation()
        
        // 주변 관광지 검색
        let lstTouristSpotList : [TouristSpot] = mapManager.getTouristSpotListNearby()
        
        // 관광지 리스트에서 랜덤으로 한곳 결정
        
        // 출력

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
