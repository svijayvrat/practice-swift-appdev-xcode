//
//  ViewController.swift
//  SystemViewController
//
//  Created by svijayvrat on 15/01/26.
//

import UIKit
import SafariServices
import MessageUI

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, MFMailComposeViewControllerDelegate {

    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage else { return }
        imageView.image = image
        dismiss(animated: true)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: (any Error)?) {
        print("I am Working")
        dismiss(animated: true)
    }
    
    @IBAction func shareButtonTapped(_ sender: Any) {
        if let image = imageView.image{
            let activityVC = UIActivityViewController(activityItems: [image], applicationActivities: nil)
            activityVC.popoverPresentationController?.sourceView = sender as? UIView
            present(activityVC, animated: true)
        }
    }
    @IBAction func safariButtonTapped(_ sender: Any) {
        if let url = URL(string: "https://www.google.com"){
            let safariVC = SFSafariViewController(url: url)
            safariVC.modalPresentationStyle = .popover
            present(safariVC, animated: true)
        }
    }
    @IBAction func alertButtonTapped(_ sender: Any) {
        let alertVC = UIAlertController(title: "Alert", message: "Do you wish to proceed?", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){
            _ in print("Cancelled")
        }
        let yesAction = UIAlertAction(title: "Yes", style: .default){
            _ in print("Yes")
        }
        let noAction = UIAlertAction(title: "No", style: .destructive){
            _ in print("Deletion")
        }
        alertVC.addAction(cancelAction)
        alertVC.addAction(yesAction)
        alertVC.addAction(noAction)
        present(alertVC, animated: true)
    }
    @IBAction func photoButtonTapped(_ sender: Any) {
        let imagePickerVC = UIImagePickerController()
        imagePickerVC.delegate = self
        imagePickerVC.sourceType = .photoLibrary
        present(imagePickerVC, animated: true)
    }
    @IBAction func mailButtonTapped(_ sender: Any) {
        let mailComposerVC = MFMailComposeViewController()
        
        mailComposerVC.mailComposeDelegate = self
        mailComposerVC.setToRecipients(["abc@gmail.com"])
        mailComposerVC.setSubject("Hello")
        mailComposerVC.setMessageBody("This is a test email", isHTML: false)
        
        if MFMailComposeViewController.canSendMail(){
            present(mailComposerVC, animated: true)
        }else{
            print("Cannot send the mail")
        }
        
    }


}

