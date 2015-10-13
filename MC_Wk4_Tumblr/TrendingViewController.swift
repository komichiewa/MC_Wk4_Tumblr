//
//  TrendingViewController.swift
//  MC_Wk4_Tumblr
//
//  Created by Michie Cao on 10/7/15.
//  Copyright © 2015 Michie Cao. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var trendingFeed: UIImageView!
    @IBOutlet weak var loadingImage: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var images: [UIImage]!
    var animatedImage: UIImage!
    
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: 320, height: 1217)

        
        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        
        images = [loading_1, loading_2, loading_3]
        
        animatedImage = UIImage.animatedImageWithImages(images,duration: 1.0)
        loadingImage.image = animatedImage
        
        loadingImage.alpha = 1
        scrollView.alpha = 0
        
    }
    
    override func viewDidAppear(animated: Bool){
        
        UIView.animateWithDuration(0.5, delay: 2.0, options: [], animations:{ () -> Void in
            
            self.loadingImage.alpha = 0
            self.scrollView.alpha = 1}, completion:{ (Bool) -> Void in })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
