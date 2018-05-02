//
//  RadarNode.swift
//  ARTechRadar
//
//  Created by Shuwen Li on 2018/4/10.
//  Copyright © 2018 Songbai Yan. All rights reserved.
//

import Foundation
import SceneKit

class RadarDotNode: SCNNode {
    private let y: Float = 0.08
    
    var sphere: SphereNode!
    var title: TextNode!
    
    init(radarDot: RadarDot) {
        super.init()
        
        self.sphere = SphereNode.init(radarDot.color)
        self.sphere.position = SCNVector3.init(radarDot.position.x, y, radarDot.position.z)
        
        self.title = TextNode.init(radarDot.name, radarDot.color)
        title.position = SCNVector3.init(radarDot.position.x, y, radarDot.position.z)
        
        self.addChildNode(sphere)
        self.addChildNode(title)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}