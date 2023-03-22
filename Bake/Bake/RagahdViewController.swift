//
//  RagahdViewController.swift
//  Bake
//
//  Created by Raghad on 22/03/2023.
//

import UIKit

class RagahdViewController: UIViewController {

    var iconClick = true
    let imageicon = UIImageView()
    
    
    @IBOutlet weak var frameView: UIView!
    
    @IBOutlet weak var userImg: UIImageView!
    
    @IBOutlet var button: UIButton!
    
    @IBOutlet var EmailTF: UITextField!
    @IBOutlet var PasswordTF: UITextInputPasswordRules!
    @IBOutlet var SignInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
