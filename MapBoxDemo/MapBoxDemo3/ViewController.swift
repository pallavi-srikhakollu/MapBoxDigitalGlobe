//
//  ViewController.swift
//  MapBoxDemo3
//
//  Created by webonise on 16/03/16.
//  Copyright © 2016 webonise. All rights reserved.
//

import UIKit
import Mapbox
let ZOOM_DISATNCE_FOR_MAP : CLLocationDistance = 1200
let PITCH_FOR_MAP : CGFloat = 0
let HEADING_FOR_MAP :CLLocationDirection = 0
class ViewController: UIViewController {

    @IBOutlet weak var maView: MGLMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
           maView?.styleURL = NSURL(string: "mapbox://styles/digitalglobe/civvd74h2000c2kp7kk5gwvtt") as URL! 
        let camera = MGLMapCamera(lookingAtCenter: CLLocationCoordinate2DMake(28.653458000000001, 77.123767000000001), fromDistance:ZOOM_DISATNCE_FOR_MAP, pitch: PITCH_FOR_MAP, heading: HEADING_FOR_MAP)
        maView.camera = camera
        maView.showsUserLocation = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

