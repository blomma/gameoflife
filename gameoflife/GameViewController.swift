//
//  GameViewController.swift
//  gameoflife
//
//  Created by Mikael Hultgren on 01/06/16.
//  Copyright (c) 2016 Mikael Hultgren. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()

		let scene = GameScene(size: view.bounds.size)
		// Configure the view.
		let skView = self.view as! SKView
		skView.showsFPS = true
		skView.showsNodeCount = true

		/* Sprite Kit applies additional optimizations to improve rendering performance */
		skView.ignoresSiblingOrder = true

		/* Set the scale mode to scale to fit the window */
		scene.scaleMode = .resizeFill

		skView.presentScene(scene)
	}

//	override func shouldAutorotate() -> Bool {
//		return true
//	}

//	override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
//		if UIDevice.current().userInterfaceIdiom == .phone {
//			return .allButUpsideDown
//		} else {
//			return .all
//		}
//	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Release any cached data, images, etc that aren't in use.
	}

//	override func prefersStatusBarHidden() -> Bool {
//		return true
//	}
}
