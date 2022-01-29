//
//  Plane.swift
//  ICE-2
//
//  Created by Aishwarya Shrestha on 23/01/2022.
//

import GameplayKit
import SpriteKit

//plane inherit from gameobject
class Plane : GameObject
{
    //initializer
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle
    
    override func CheckBounds()
    {
        // constrain on the left boundary
        if(position.x <= -310)
        {
            position.x = -310
        }
        
        // constrain on the right boundary
        if(position.x >= 310)
        {
            position.x = 310
        }
    }
    
    // Initialization
    override func Start()
    {
        zPosition = 2
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    func TouchMove(newPos: CGPoint)
    {
        //jump to new position
        position = newPos
    }
}
