//
//  NextViewController.swift
//  SendDataBetween2Controller
//
//  Created by SOFTLIGHT on 1/15/16.
//  Copyright © 2016 SOFTLIGHT. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    @IBOutlet weak var textField: UITextField?
    @IBOutlet weak var btnBack: UIButton?
    var delegate : NextProtocol!
    var textValue : String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.textField?.text = textValue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    override func unwindForSegue(unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
//        print("unwind")
//        delegate.updateLabel((textField?.text)!)
//    }

    @IBAction func updateAndBack(sender: AnyObject) {
        
        delegate.updateLabel((textField?.text)!)
        self.navigationController?.popViewControllerAnimated(true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func viewWillDisappear(animated: Bool) {
        if self.isMovingFromParentViewController()
        {
        print("moving")
            delegate.updateLabel((textField?.text)!)

        }
        print("next controller back")

        
    }
   
}

protocol NextProtocol{
    func updateLabel(value:String)
}