//
//  ViewController.swift
//  SendDataBetween2Controller
//
//  Created by SOFTLIGHT on 1/15/16.
//  Copyright © 2016 SOFTLIGHT. All rights reserved.
//

import UIKit

class ViewController: UIViewController,NextProtocol {
    @IBOutlet weak var lbController: UILabel?
    @IBOutlet weak var btnNext: UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let str = "Hello"
        print("str address: \(unsafeAddressOf(str))")
        let newstr = str;
        print("newstr address: \(unsafeAddressOf(newstr))")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if lbController?.text != nil
//        {
//            let nextController = self.storyboard?.instantiateViewControllerWithIdentifier("NextController") as! NextViewController
//            print("\(lbController?.text)")
//            nextController.textField?.text = lbController?.text
//            
//        }
//    }

    @IBAction func moveToNext(sender: AnyObject) {
//                if lbController?.text != nil
//                {
                    let nextController = self.storyboard?.instantiateViewControllerWithIdentifier("NextController") as! NextViewController
                    nextController.textValue = self.lbController?.text
                    nextController.delegate = self
                    self.navigationController?.pushViewController(nextController, animated: true)
        
//                }
    }
    func updateLabel(value: String) {
        lbController?.text = value
    }
    override func viewWillAppear(animated: Bool) {
        if self.isMovingFromParentViewController() {
            print("isMovingParent")
        }
        print("call when press back")
    }
}

