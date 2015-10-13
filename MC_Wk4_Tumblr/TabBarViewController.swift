//
//  TabBarViewController.swift
//  MC_Wk4_Tumblr
//
//  Created by Michie Cao on 10/7/15.
//  Copyright © 2015 Michie Cao. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var exploreBubble: UIImageView!
    
    var viewControllers: [UIViewController]!
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var selectedIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        exploreBubbleShadow()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated:Bool){
    }
    
    @IBAction func didPressTab(sender: UIButton) {
        
        exploreBubbleBounce()
        
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        buttons[previousIndex].selected = false;
        let previousVC = viewControllers[previousIndex]
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.selected = true;
        
        let vc = viewControllers[selectedIndex]
        
        if vc == viewControllers[1]{
            print("view controller 1 called")
            exploreBubble.alpha = 0
        }
        else{
            exploreBubble.alpha = 1
        }
        
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMoveToParentViewController(self)
    

    }
    
    func exploreBubbleBounce(){
        UIView.animateWithDuration(0.8, delay: 0, options: [UIViewAnimationOptions.Autoreverse, UIViewAnimationOptions.Repeat], animations: { () -> Void in
            self.exploreBubble.transform = CGAffineTransformMakeTranslation(0, -5)
            }, completion: nil)
    }
    
    func exploreBubbleShadow(){
        exploreBubble.layer.shadowOffset = CGSize(width: 1, height: 1)
        exploreBubble.layer.shadowOpacity = 0.3
        exploreBubble.layer.shadowRadius = 2
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
