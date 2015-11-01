//
//  ProfileViewController.swift
//  ExchangeAGram
//
//  Created by Niclas Günther on 08.11.14.
//  Copyright (c) 2014 Niclas Günther. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var fbLoginView: FBSDKLoginButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.fbLoginView.readPermissions = ["public_profile"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mapViewButtonTapped(sender: UIButton) {
        performSegueWithIdentifier("mapSegue", sender: nil)
    }
    
    func loginViewShowingLoggedInUser(loginView: FBSDKLoginManager!) {
        profileImageView.hidden = false
        nameLabel.hidden = false
    }
    
    func loginViewFetchedUserInfo(loginView: FBSDKLoginManager!, user: FBSDKProfile!) {
        print(user)
        
        nameLabel.text = user.name
        
        
        /*let userImageURL = "https://graph.facebook.com/\(user.objectID)/picture?type=small"
        let url = NSURL(string: userImageURL)
        let imageData = NSData(contentsOfURL: url!)
        let image = UIImage(data: imageData!)
        profileImageView.image = image*/
    }
    
    func loginViewShowingLoggedOutUser(loginView: FBSDKLoginManager!) {
        profileImageView.hidden = true
        nameLabel.hidden = true
    }
    
    func loginView(loginView: FBSDKLoginManager!, handleError error: NSError!) {
        print("Error: \(error.localizedDescription)")
    }
}
