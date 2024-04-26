//
//  ViewController.swift
//  Buffalo Byte Remote Control
//
//  Created by Eric Xie  on 2/12/24.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    //Enter the server IP addess
    var Eric = "http://192.168.1.18/"
    
    @IBOutlet weak var WebView: WKWebView!
    @IBOutlet weak var Display_message: UILabel!
    
    var isForwardPressed = false
    var isBackPressed = false
    var isLeftPressed = false
    var isRightPressed = false
    
    //forward
    @IBAction func Forward_release(_ sender: Any) {
        isForwardPressed =  false
        checkAndSendCommand()
    }
    //stop forward
    @IBAction func Forward_Hold_down(_ sender: Any) {
        
        isForwardPressed = true
        checkAndSendCommand()
    }
    
    
    //right stop
    @IBAction func Right_release(_ sender: Any) {
        
        isRightPressed = false
        checkAndSendCommand()
    }
    // go right
    @IBAction func Right_Hold_down(_ sender: Any) {
        isRightPressed = true
        checkAndSendCommand()
    }
    
    // left stop
    @IBAction func Left_release(_ sender: Any) {
        isLeftPressed = false
        checkAndSendCommand()
    }
    //go left
    @IBAction func Left_Hold_down(_ sender: Any) {
        isLeftPressed = true
        checkAndSendCommand()
    }
    
    // stop back
    @IBAction func Backward_release(_ sender: Any) {
        
        isBackPressed = false
        checkAndSendCommand()
    }
    
    //go back
    @IBAction func Backward_Hold_down(_ sender: Any) {
        isBackPressed = true
        checkAndSendCommand()
    }
    
    func checkAndSendCommand() {
        var commandUrl: String?
        
        if isForwardPressed && isRightPressed {
            commandUrl = "\(Eric)forward_right"
            Display_message.text = "Going Forward Right"
            print("forward_right")
            
        } else if isForwardPressed && isLeftPressed {
            commandUrl = "\(Eric)forward_left"
            Display_message.text = "Going Forward Left"
            print("forward_left")
            
        } else if isBackPressed && isLeftPressed{
            
            commandUrl = "\(Eric)backward_left"
            Display_message.text = "Going backward Left"
            print("back_left is not implemented")
            
        }else if isBackPressed && isRightPressed{
            
            commandUrl = "\(Eric)backward_right"
            Display_message.text = "Going backward right"
            print("back_right is not implemented")
            
        }else if isForwardPressed {
            commandUrl = "\(Eric)Forward"
            Display_message.text = "Going Forward"
            print("forward")
            
        } else if isRightPressed {
            commandUrl = "\(Eric)Right"
            Display_message.text = "Going Right"
            print("right")
            
        } else if isLeftPressed {
            commandUrl = "\(Eric)Left"
            Display_message.text = "Going Left"
            print("left")
            
        } else if isBackPressed {
            commandUrl = "\(Eric)Backward"
            Display_message.text = "Going Backward"
            print("back")
            // if nothing is pressed
        } else {
            Display_message.text = ""
            commandUrl = "\(Eric)Stop"
            print("stop")
        }
        
        if let url = commandUrl {
            let request = NSURLRequest(url: NSURL(string: url)! as URL)
            WebView.load(request as URLRequest)
        }
    }
    
    //this establish the dark mode and white_mode of my device
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("hello world")
        
        //first load in check
        if traitCollection.userInterfaceStyle == .light {
            print("first load in as light mode")
            self.view.backgroundColor = .white
        }else{
            print("first load in as dark mode")
            self.view.backgroundColor = .black
        }
        
        
        //If user toggle between white mode and dark mode
        registerForTraitChanges([UITraitUserInterfaceStyle.self], handler: { (self: Self, previousTraitCollection: UITraitCollection) in
            if self.traitCollection.userInterfaceStyle == .dark {
                // Code to execute in light mode
                self.view.backgroundColor = .black
                print("App switched to dark mode")
                
            } else {
                // Code to execute in dark mode
                self.view.backgroundColor = .white
                print("App switched to light mode")
            }
        })
        
    }
    
    
    
    
}
