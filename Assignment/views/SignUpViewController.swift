//
//  SignUpViewController.swift
//  Assignment
//
//  Created by user163815 on 5/4/21.
//  Copyright © 2021 it18120844. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var txt_fullname: UITextField!
    @IBOutlet weak var txt_email: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    @IBOutlet weak var txt_con_password: UITextField!
    
    @IBOutlet weak var btn_sign_up: UIButton!
    
    @IBOutlet weak var btn_eye_password: UIButton!
    
    @IBOutlet weak var btn_eye_re_password: UIButton!
    
     var isHidden = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn_sign_up.layer.cornerRadius = 25
        btn_eye_password.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        btn_eye_re_password.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func eye_password_pressed(_ sender: UIButton) {
        set_password_eye()
    }
    
    @IBAction func eye_repassword_pressed(_ sender: UIButton) {
        set_password_eye()
    }
    
    func set_password_eye(){
        if (isHidden == true){
                          btn_eye_password.setImage(UIImage(systemName: "eye"), for: .normal)
                           btn_eye_re_password.setImage(UIImage(systemName: "eye"), for: .normal)
                           txt_password.isSecureTextEntry = false
                           txt_con_password.isSecureTextEntry = false
                          isHidden = false
               }else{
                          btn_eye_password.setImage(UIImage(systemName: "eye.slash"), for: .normal)
                           btn_eye_re_password.setImage(UIImage(systemName: "eye.slash"), for: .normal)
                           txt_password.isSecureTextEntry = true
                           txt_con_password.isSecureTextEntry = true
                          isHidden = true
               }
    }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


extension SignUpViewController{
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

