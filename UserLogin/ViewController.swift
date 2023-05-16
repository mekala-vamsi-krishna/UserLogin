//
//  ViewController.swift
//  UserLogin
//
//  Created by Admin on 5/13/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var whiteSpaceView: UIView!
    @IBOutlet weak var passwordViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var otpButtonTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var otpButton: UIButton!
    @IBOutlet weak var getOtpButton: UIButton!
    @IBOutlet weak var otpTF: UITextField!
    @IBOutlet weak var otpView: UIView!
    @IBOutlet weak var eyeButton: UIButton!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var phoneViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var emailViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var phoneImageView: UIImageView!
    @IBOutlet weak var seperatorView: UIView!
    @IBOutlet weak var label91: UILabel!
    @IBOutlet weak var emilImageView: UIImageView!
    @IBOutlet weak var mobileTF: UITextField!
    @IBOutlet weak var mobileView: UIView!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var emailView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
                
        emailView.layer.borderWidth = 1.0
        emailView.layer.borderColor = UIColor.lightGray.cgColor
        emailView.layer.cornerRadius = 5.0
        emailView.backgroundColor = .white
        
        passwordView.layer.borderWidth = 1.0
        passwordView.layer.borderColor = UIColor.lightGray.cgColor
        passwordView.layer.cornerRadius = 5.0
        passwordView.backgroundColor = .white
        
        otpButton.layer.borderWidth = 1.0
        otpButton.layer.borderColor = UIColor.lightGray.cgColor
        otpButton.layer.cornerRadius = 5.0
        otpButton.backgroundColor = .white
        
        otpView.layer.borderWidth = 1.0
        otpView.layer.borderColor = UIColor.lightGray.cgColor
        otpView.layer.cornerRadius = 5.0
        otpView.backgroundColor = .white

        getOtpButton.layer.borderWidth = 1.0
        getOtpButton.layer.borderColor = UIColor.green.cgColor
        getOtpButton.layer.cornerRadius = 4.0
        getOtpButton.backgroundColor = .white
        
        self.mobileView.layer.borderWidth = 1.0
        self.mobileView.layer.borderColor = UIColor.lightGray.cgColor
        self.mobileView.layer.cornerRadius = 5.0
        mobileView.backgroundColor = .white
        
        let tapGes = UITapGestureRecognizer()
        tapGes.addTarget(self, action: #selector(phoneTapped))
        phoneImageView.addGestureRecognizer(tapGes)

        let tapGes1 = UITapGestureRecognizer()
        tapGes1.addTarget(self, action: #selector(emailTapped))
        emilImageView.addGestureRecognizer(tapGes1)

        let starMark = NSAttributedString(string: "*", attributes: [.foregroundColor: UIColor.red])

        let mobileAtrributedString = NSMutableAttributedString(string: "Email ")
        mobileAtrributedString.append(starMark)
        emailTF.attributedPlaceholder = mobileAtrributedString
        
        let mobileAtrributedString1 = NSMutableAttributedString(string: "Mobile ")
        mobileAtrributedString1.append(starMark)
        mobileTF.attributedPlaceholder = mobileAtrributedString1
        
        
        let mobileAtrributedString2 = NSMutableAttributedString(string: "Password ")
        mobileAtrributedString2.append(starMark)
        passwordTF.attributedPlaceholder = mobileAtrributedString2
        
        let mobileAtrributedString3 = NSMutableAttributedString(string: "One Time Password ")
        mobileAtrributedString3.append(starMark)
        otpTF.attributedPlaceholder = mobileAtrributedString3


        passwordTF.isSecureTextEntry = true
        
        emilImageView.isHidden = true
        label91.isHidden = true
        seperatorView.isHidden = true
        mobileTF.isHidden = true
        otpView.isHidden = true
        whiteSpaceView.isHidden = true
                

    }
    
    @IBAction func otpButtonTapped(_ sender: UIButton) {
        
        if sender.currentTitle == "OTP" {
            getOtpButton.isHidden = false
            sender.setTitle("***", for: .normal)
        }
        
    }
    @IBAction func getOtpButtonTapped(_ sender: UIButton) {
        
        getOtpButton.isHidden = true
        otpButton.setTitle("OTP", for: .normal)


    }
    @objc func phoneTapped() {
        
        phoneImageView.isHidden = true
        label91.isHidden = false
        seperatorView.isHidden = false
        mobileTF.isHidden = false
        passwordView.isHidden = true
        otpView.isHidden = false
        otpButton.isHidden = false
        whiteSpaceView.isHidden = false
        
        UIView.animate(withDuration: 2.0, delay: 0) {
            self.emailViewWidthConstraint.constant = 58.0
            self.phoneViewWidthConstraint.priority = UILayoutPriority(800)
            self.emailViewWidthConstraint.priority = UILayoutPriority(1000)
            self.view.layoutIfNeeded()
        } completion: { position in
            self.emailTF.isHidden = true
            self.emilImageView.isHidden = false
            self.whiteSpaceView.isHidden = true
        }
        
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 2.0, delay: 0) {
            let transpose = CGAffineTransform(translationX: 0, y: 78)
            let scale = CGAffineTransform(scaleX: 1, y: 1)
            self.otpView.transform = transpose.concatenating(scale)
        }
        
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 2.0, delay: 0) {
            let transpose = CGAffineTransform(translationX: 0, y: 78)
            let scale = CGAffineTransform(scaleX: 1, y: 1)
            self.otpButton.transform = transpose.concatenating(scale)
        }
        
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 2.0, delay: 0) {
            let transpose = CGAffineTransform(translationX: 0, y: 50)
            let scale = CGAffineTransform(scaleX: 1, y: 1)
            self.passwordView.transform = transpose.concatenating(scale)
        }
                
        
    }
    
    @objc func emailTapped() {
        
        emilImageView.isHidden = true
        emailTF.isHidden = false
        mobileTF.isHidden = false
        label91.isHidden = false
        seperatorView.isHidden = false
        otpView.isHidden = true
        otpButton.isHidden = true
        passwordView.isHidden = false
        self.whiteSpaceView.isHidden = false

        
        UIView.animate(withDuration: 2.0, delay: 0) {
            self.phoneViewWidthConstraint.constant = 58.0
            self.phoneViewWidthConstraint.priority = UILayoutPriority(1000)
            self.emailViewWidthConstraint.priority = UILayoutPriority(800)
            self.view.layoutIfNeeded()
        } completion: { position in
            self.label91.isHidden = true
            self.seperatorView.isHidden = true
            self.mobileTF.isHidden = true
            self.phoneImageView.isHidden = false
            self.whiteSpaceView.isHidden = true
        }
        
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 2.0, delay: 0) {
            let transpose = CGAffineTransform(translationX: 0, y: 0)
            let scale = CGAffineTransform(scaleX: 1, y: 1)
            self.otpView.transform = transpose.concatenating(scale)
        }
        
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 2.0, delay: 0) {
            let transpose = CGAffineTransform(translationX: 0, y: 0)
            let scale = CGAffineTransform(scaleX: 1, y: 1)
            self.otpButton.transform = transpose.concatenating(scale)
        }
        
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 2.0, delay: 0) {
            let transpose = CGAffineTransform(translationX: 0, y: 0)
            let scale = CGAffineTransform(scaleX: 1, y: 1)
            self.passwordView.transform = transpose.concatenating(scale)
        }
           
        
    }
    
    @IBAction func eyeButtonTapped(_ sender: UIButton) {
        
        if passwordTF.isSecureTextEntry == true {
            passwordTF.isSecureTextEntry = false
            eyeButton.setImage(UIImage(named: "eyeOpen"), for: .normal)
        } else {
            passwordTF.isSecureTextEntry = true
            eyeButton.setImage(UIImage(named: "eyeHide"), for: .normal)
        }
    }
}

