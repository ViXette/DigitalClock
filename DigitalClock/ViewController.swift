//
//  ViewController.swift
//  DigitalClock
//
//  Created by VX on 18/12/2016.
//  Copyright © 2016 VXette. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var label: UILabel!
	
	var timer = Timer()
	
	@IBOutlet weak var settings_view: UIView!
	@IBOutlet weak var textColor_segment: UISegmentedControl!
	@IBOutlet weak var backgroundColor_segment: UISegmentedControl!
	@IBOutlet weak var settings_button: UIButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		timer = Timer.scheduledTimer(timeInterval: 1.0,
		                             target: self,
		                             selector: #selector(ViewController.updateTimer),
		                             userInfo: nil,
		                             repeats: true)
		
		settings_view.isHidden = true
	}

	
	func updateTimer() {
		settings_view.layer.cornerRadius = 5
		settings_button.layer.cornerRadius = 5
		
		let timeFormatter = DateFormatter()
		
		timeFormatter.timeStyle = .medium
		timeFormatter.dateFormat = "HH:mm:ss"
		
		label.text = timeFormatter.string(from: Date())
	}
	
	
	@IBAction func settingsTaped(_ sender: Any) {
		settings_view.isHidden = !settings_view.isHidden
		
		settings_button.alpha = settings_view.isHidden ? 0.4 : 1.0
	}
	
	
	@IBAction func textColorChanged(_ sender: Any) {
		switch textColor_segment.selectedSegmentIndex {
		case 0:
			label.textColor = UIColor(red: 230.0 / 255, green: 230.0 / 255, blue: 230.0 / 255, alpha: 1.0)
		case 1:
			label.textColor = UIColor(red: 128.0 / 255, green: 0.0 / 255, blue: 0.0 / 255, alpha: 1.0)
		case 2:
			label.textColor = UIColor(red: 64.0 / 255, green: 128.0 / 255, blue: 0.0 / 255, alpha: 1.0)
		case 3:
			label.textColor = UIColor(red: 0.0 / 255, green: 128.0 / 255, blue: 255.0 / 255, alpha: 1.0)
		default:
			label.textColor = UIColor(red: 230.0 / 255, green: 230.0 / 255, blue: 230.0 / 255, alpha: 1.0)
			
		}
	}
	
	
	@IBAction func backgroungColorChanged(_ sender: Any) {
		switch backgroundColor_segment.selectedSegmentIndex {
		case 0:
			label.backgroundColor = UIColor(red: 25.0 / 255, green: 25.0 / 255, blue: 25.0 / 255, alpha: 1.0)
		case 1:
			label.backgroundColor = UIColor(red: 179.0 / 255, green: 179.0 / 255, blue: 179.0 / 255, alpha: 1.0)
		case 2:
			label.backgroundColor = UIColor(red: 102.0 / 255, green: 204.0 / 255, blue: 255.0 / 255, alpha: 1.0)
		case 3:
			label.backgroundColor = UIColor(red: 255.0 / 255, green: 255.0 / 255, blue: 0.0 / 255, alpha: 1.0)
		default:
			label.backgroundColor = UIColor(red: 25.0 / 255, green: 25.0 / 255, blue: 25.0 / 255, alpha: 1.0)
			
		}
	}

}

