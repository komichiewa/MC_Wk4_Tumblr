//
//  ComposeViewController.swift
//  MC_Wk4_Tumblr
//
//  Created by Michie Cao on 10/7/15.
//  Copyright © 2015 Michie Cao. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    

  //  let blueBG = UIColor(red: 38/255, green: 52/255, blue: 73/255, alpha: 0.8)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func viewWillAppear(animated:Bool){
        
        print("viewWillAppear called")
        super.viewWillAppear(animated)
    //    self.view.backgroundColor = blueBG
        
        UIView.animateWithDuration(0.5, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.photoButton.center.y = 185
            print("done")}
            , completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.quoteButton.center.y = 185
            print("done")}
            , completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.4, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.textButton.center.y = 185
            self.chatButton.center.y = 315
            print("done")}
            , completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.45, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.linkButton.center.y = 315
            print("done")}
            , completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.5, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.videoButton.center.y = 315
            print("done")}
            , completion: nil)

        
    }

    @IBAction func onNevermind(sender: AnyObject) {
        
        UIView.animateWithDuration(0.5, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.photoButton.center.y = -50
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.textButton.center.y = -80
            }, completion: nil)
        
        UIView.animateWithDuration(0.4, delay: 0.4, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.quoteButton.center.y = -120
            
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.25, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.chatButton.center.y = -50
            }, completion:nil)
        
        UIView.animateWithDuration(0.5, delay: 0.4, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.linkButton.center.y = -80
            }, completion: nil)
        
        UIView.animateWithDuration(0.4, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.videoButton.center.y = -120
            }, completion: nil)
        
        delay(0.5)
            {self.dismissViewControllerAnimated(true, completion:nil)}
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
       
    }
    
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        modalPresentationStyle = UIModalPresentationStyle.Custom
        transitioningDelegate = self
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
