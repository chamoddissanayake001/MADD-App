//
//  LoginViewController.swift
//  Assignment
//
//  Created by user163815 on 5/4/21.
//  Copyright © 2021 it18120844. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txt_username: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    @IBOutlet weak var btn_eye: UIButton!
    
    @IBOutlet weak var btn_login: UIButton!
    var isHidden = true
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn_login.layer.cornerRadius = 25
        btn_eye.setImage(UIImage(systemName: "eye.slash"), for: .normal)
  
        passwordFieldSetup()
        // Do any additional setup after loading the view.
    }
    
    func passwordFieldSetup(){
        let imageView = UIImageView()
        let image = UIImage(systemName: "eye.slash")
        imageView.image = image
        imageView.frame = CGRect(x:5,y:0,width: txt_password.frame.height, height: txt_password.frame.height)
        txt_password.rightView = imageView
    }
    
    @IBAction func btn_eye_pressed(_ sender: UIButton) {

        if (isHidden == true){
            btn_eye.setImage(UIImage(systemName: "eye"), for: .normal)
            txt_password.isSecureTextEntry = false
            isHidden = false
        }else{
            btn_eye.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            txt_password.isSecureTextEntry = true
            isHidden = true
        }
            
    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        go_to_tab_view
        let login_btn_temp : UIButton = sender as! UIButton
        
        switch login_btn_temp {
            case btn_login:
                if txt_username.text == "" || txt_password.text == "" || (txt_username.text != "aaa" || txt_password.text != "bbb"){
                    showLoginError()
                    return false
                }else{
                    return true
            }
            default:
                return true
        }
        
    }
    
    func showLoginError(){
        var dialogMessage = UIAlertController(title: "Error", message: "Incorrect username or password", preferredStyle: .alert)
        
                        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
        
                        })
                        dialogMessage.addAction(ok)
                        self.present(dialogMessage, animated: true, completion: nil)
        
    }
    
    @IBAction func btn_login_pressed(_ sender: UIButton) {

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


extension LoginViewController{
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
