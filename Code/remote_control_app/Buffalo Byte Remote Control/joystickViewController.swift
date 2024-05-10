//
//  joystickViewController.swift
//  Buffalo Byte Remote Control
//
//  Created by Eric Xie on 4/26/24.
//

import UIKit
import BRHJoyStickView

class joystickViewController: UIViewController {
    
    @IBOutlet weak var Joystick_UIView: JoyStickView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let bundle = Bundle(for: JoyStickView.self).podResource(name: "BRHJoyStickView")
        Joystick_UIView.baseImage = UIImage(named: "FancyBase", in: bundle, compatibleWith: nil)
        Joystick_UIView.handleImage = UIImage(named: "Blue_handle", in: bundle, compatibleWith: nil)
        Joystick_UIView.monitor = .xy(monitor: handleXYReport)
    }
    
    func handleXYReport(xyReport: JoyStickViewXYReport) {
          print("Joystick X delta: \(xyReport.x), Joystick Y delta: \(xyReport.y)\n")
            
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
