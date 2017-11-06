//
//  ViewController.swift
//  sced
//
//  Created by Ryan on 10/16/17.
//  Copyright © 2017 Ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    @IBOutlet var pencilBar: UIButton!
   
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet var purpleButton: UIButton!
    @IBOutlet var yellowButton: UIButton!
    @IBOutlet var orangeButton: UIButton!
    @IBOutlet weak var palette: UIButton!
    @IBOutlet var whiteButton: UIButton!
    @IBOutlet var blackButton: UIButton!
    
    var blueButtonCenter: CGPoint!
    var redButtonCenter: CGPoint!
    var greenButtonCenter: CGPoint!
    var yellowButtonCenter: CGPoint!
    var orangeButtonCenter: CGPoint!
    var purpleButtonCenter: CGPoint!
    var whiteButtonCenter: CGPoint!
    var blackButtonCenter: CGPoint!
    
    @IBOutlet weak var toolImage: UIButton!
    @IBOutlet var bar2: UIImageView!
    @IBOutlet var bar: UIImageView!
    @IBOutlet var settings: UIButton!
    @IBOutlet var about: UIButton!
    @IBOutlet var save: UIButton!
    @IBOutlet var choose: UIButton!
    @IBOutlet var reset: UIButton!
    @IBOutlet var paint: UIButton!
    @IBOutlet var eraser: UIButton!
    @IBOutlet var marker: UIButton!
    @IBOutlet var pen: UIButton!
    @IBOutlet var pencil: UIButton!
    @IBOutlet var border2: UIImageView!
    @IBOutlet var border: UIImageView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    var swiped = false
    
    var red: CGFloat = 0.0
    var green: CGFloat = 0.0
    var blue: CGFloat = 0.0
    
    var brushSize:CGFloat = 5.0
    var opacityValue:CGFloat = 1.0
    
    var tool: UIImageView!
   
    var isDrawing = true

    var selectedImage:UIImage!
    var lastPoint = CGPoint.zero
    
    let path = UIBezierPath()

    @IBAction func paint(_ sender: AnyObject) {
   
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: opacityValue)
}
    @IBAction func eraser(_ sender: AnyObject) {
       
        if (isDrawing) {
            UIView.animate(withDuration: 0.3, animations: {
                self.palette.alpha = 0
                self.redButton.alpha = 0
                self.blueButton.alpha = 0
                self.greenButton.alpha = 0
                self.orangeButton.alpha = 0
                self.purpleButton.alpha = 0
                self.yellowButton.alpha = 0
                self.blackButton.alpha = 0
                self.whiteButton.alpha = 0
                
                
            })
            
            
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseInOut, animations: {
                self.pencilBar.frame.origin.x = 195
            }, completion: nil)
        }
    
            (red, green, blue) = (1,1,1)
            tool.image = #imageLiteral(resourceName: "eraser")
            brushSize = 10
            opacityValue = 1
        }

    @IBAction func pencil(_ sender: AnyObject) {
        if (isDrawing) {
            blueButton.center = palette.center
            greenButton.center = palette.center
            redButton.center = palette.center
            yellowButton.center = palette.center
            orangeButton.center = palette.center
            purpleButton.center = palette.center
            whiteButton.center = palette.center
            blackButton.center = palette.center
            UIView.animate(withDuration: 0.3, animations: {
                self.palette.alpha = 1
                self.redButton.alpha = 0
                self.blueButton.alpha = 0
                self.greenButton.alpha = 0
                self.orangeButton.alpha = 0
                self.purpleButton.alpha = 0
                self.yellowButton.alpha = 0
                self.blackButton.alpha = 0
                self.whiteButton.alpha = 0
            })
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseInOut, animations: {
                self.pencilBar.frame.origin.x = 345
            }, completion: nil)
        }
            (red, green, blue) = (0,0,0)
        tool.image = #imageLiteral(resourceName: "Image-11")
            brushSize = 5
            opacityValue = 1
    }

    @IBAction func pen(_ sender: AnyObject) {
        if (isDrawing) {
            blueButton.center = palette.center
            greenButton.center = palette.center
            redButton.center = palette.center
            yellowButton.center = palette.center
            orangeButton.center = palette.center
            purpleButton.center = palette.center
            whiteButton.center = palette.center
            blackButton.center = palette.center
            UIView.animate(withDuration: 0.3, animations: {
                self.palette.alpha = 1
                self.redButton.alpha = 0
                self.blueButton.alpha = 0
                self.greenButton.alpha = 0
                self.orangeButton.alpha = 0
                self.purpleButton.alpha = 0
                self.yellowButton.alpha = 0
                self.blackButton.alpha = 0
                self.whiteButton.alpha = 0
            })
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseInOut, animations: {
                self.pencilBar.frame.origin.x = 295
            }, completion: nil)
        }
            (red, green, blue) = (0,0,0)
            tool.image = #imageLiteral(resourceName: "Image-10")
            brushSize = 3
            opacityValue = 1
        }
    
    @IBAction func markerObject(_ sender: Any) {
        if (isDrawing) {
            blueButton.center = palette.center
            greenButton.center = palette.center
            redButton.center = palette.center
            yellowButton.center = palette.center
            orangeButton.center = palette.center
            purpleButton.center = palette.center
            whiteButton.center = palette.center
            blackButton.center = palette.center
            UIView.animate(withDuration: 0.3, animations: {
                self.palette.alpha = 1
                self.redButton.alpha = 0
                self.blueButton.alpha = 0
                self.greenButton.alpha = 0
                self.orangeButton.alpha = 0
                self.purpleButton.alpha = 0
                self.yellowButton.alpha = 0
                self.blackButton.alpha = 0
                self.whiteButton.alpha = 0
            })
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseInOut, animations: {
                self.pencilBar.frame.origin.x = 245
            }, completion: nil)
        }
            (red, green, blue) = (0,0,0)
            tool.image = #imageLiteral(resourceName: "maker")
            brushSize = 10
            opacityValue = 0.5
        }
    
    
    @IBAction func pick(_ sender: AnyObject) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = false
        imagePicker.delegate = self
        
        self.present(imagePicker, animated: true, completion: nil)
    
    }
    
    @IBAction func save(_ sender: AnyObject) {
            if let image = self.imageView.image {
                UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
                
                let success = SCLAlertView()
                
                success.showSuccess("Saved!", subTitle: "Your drawing has been saved to your Photo Album")
        }
            
    }

    @IBAction func reset(_ sender: AnyObject) {
       let success = SCLAlertView()
        let actionSheet = UIAlertController(title: "Choose your option", message: "", preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Clear Drawing", style: .default, handler: { (_) in
            self.imageView.image = nil
            self.view.backgroundColor = UIColor .white
            success.showInfo("Drawing Cleared", subTitle: "Your drawing has been cleared", closeButtonTitle: "Okay")
        }))
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        present(actionSheet, animated: true, completion: nil)
        }
    

    override func viewDidLoad() {
        super.viewDidLoad()
  
        blueButtonCenter = blueButton.center
        redButtonCenter = redButton.center
        greenButtonCenter = greenButton.center
        yellowButtonCenter = yellowButton.center
        orangeButtonCenter = orangeButton.center
        purpleButtonCenter = purpleButton.center
        whiteButtonCenter = whiteButton.center
        blackButtonCenter = blackButton.center
       
        blueButton.center = palette.center
        greenButton.center = palette.center
        redButton.center = palette.center
        yellowButton.center = palette.center
        orangeButton.center = palette.center
        purpleButton.center = palette.center
        whiteButton.center = palette.center
        blackButton.center = palette.center
        
        tool = UIImageView()
        tool.frame = CGRect(x: self.view.bounds.size.width/2, y: self.view.bounds.size.height/2, width: 38, height: 38)
        tool.image = #imageLiteral(resourceName: "Image-11")
        self.view.addSubview(tool)
    }
    @IBAction func paletteClicked(_ sender: UIButton) {
        if palette.currentImage == #imageLiteral(resourceName: "palette") {
        UIView.animate(withDuration: 0.3, animations: {
            
            self.blueButton.alpha = 1
            self.greenButton.alpha = 1
            self.redButton.alpha = 1
            self.yellowButton.alpha = 1
            self.orangeButton.alpha = 1
            self.purpleButton.alpha = 1
            self.whiteButton.alpha = 1
            self.blackButton.alpha = 1
            
            self.blueButton.center = self.blueButtonCenter
            self.greenButton.center = self.greenButtonCenter
            self.redButton.center = self.redButtonCenter
            self.yellowButton.center = self.yellowButtonCenter
            self.orangeButton.center = self.orangeButtonCenter
            self.purpleButton.center = self.purpleButtonCenter
            self.blackButton.center = self.blackButtonCenter
            self.whiteButton.center = self.whiteButtonCenter
        })
    }
    else{
        UIView.animate(withDuration: 0.3, animations: {
            
            self.blueButton.alpha = 0
            self.greenButton.alpha = 0
            self.redButton.alpha = 0
            self.yellowButton.alpha = 0
            self.orangeButton.alpha = 0
            self.purpleButton.alpha = 0
            self.whiteButton.alpha = 0
            self.blackButton.alpha = 0
            
            self.blueButton.center = self.palette.center
            self.greenButton.center = self.palette.center
            self.redButton.center = self.palette.center
            self.yellowButton.center = self.palette.center
            self.orangeButton.center = self.palette.center
            self.purpleButton.center = self.palette.center
            self.whiteButton.center = self.palette.center
            self.blackButton.center = self.palette.center
        })
   
    }
 toggleButton(button: sender, onImage: #imageLiteral(resourceName: "palette2"), offImage: #imageLiteral(resourceName: "palette"))
        
}
        
    func toggleButton(button: UIButton, onImage: UIImage, offImage: UIImage){
        if button.currentImage == offImage {
            button.setImage(onImage, for: .normal)
        }else{
            button.setImage(offImage, for: .normal)
        }
    }
    @IBAction func blueClicked(_ sender: UIButton) {
        (red, green, blue) = (0.12,0.18,0.77)

    }
    @IBAction func purpleC(_ sender: UIButton) {
        (red, green, blue) = (0.52,0.24,0.61)

    }
    @IBAction func yellowC(_ sender: UIButton) {
        (red, green, blue) = (1,0.87,0.06)

    }

    @IBAction func orangeC(_ sender: UIButton) {
        (red, green, blue) = (1,0.486,0.06)

    }
    
    @IBAction func whiteC(_ sender: UIButton) {
        (red, green, blue) = (1,1,1)
    }
    @IBAction func blackC(_ sender: UIButton) {
        (red, green, blue) = (0.0,0.0,0.0)
        
    }
    @IBAction func greenClicked(_ sender: UIButton) {
        (red, green, blue) = (0.12,0.54,0.066)

    }
    @IBAction func redClicked(_ sender: UIButton) {
        (red, green, blue) = (0.6117,0,0.0745)

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        swiped = false
        
        if let touch = touches.first {
            lastPoint = touch.preciseLocation(in: self.view)
           
            }
        }
        
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        swiped = true
        if let touch = touches.first {
            let currentPoint = touch.preciseLocation(in: self.view)
            drawLines(fromPoint: lastPoint, toPoint: currentPoint)
            
            lastPoint = currentPoint
            tool.center = currentPoint
            
           
            }
        }

    func drawLines(fromPoint: CGPoint, toPoint: CGPoint) {
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        imageView.image?.draw(in: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        
        let context = UIGraphicsGetCurrentContext()
        context?.move(to: CGPoint(x: fromPoint.x, y: fromPoint.y))
        context?.addLine(to: CGPoint(x: toPoint.x, y: toPoint.y))
        context?.setStrokeColor(UIColor(red: red, green: green, blue: blue, alpha: opacityValue).cgColor)
        context?.setBlendMode(CGBlendMode.normal)
        context?.setLineCap(CGLineCap.round)
        context?.setLineWidth(brushSize)
        context?.strokePath()
        
        imageView.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !swiped {
            drawLines(fromPoint: lastPoint, toPoint: lastPoint)
           
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        touchesEnded(touches, with: event)
        
    }
    
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        let settingsVC = segue.destination as! SettingsVCViewController
        settingsVC.delegate = self
        settingsVC.red = red
        settingsVC.green = green
        settingsVC.blue = blue
        settingsVC.brushSize = brushSize
        settingsVC.opacityValue = opacityValue
}

}
extension ViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate, SettingsVCDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
            if let imagePicked = info[UIImagePickerControllerOriginalImage] as? UIImage {
             
                self.selectedImage = imagePicked
                self.imageView.image = selectedImage
             
                dismiss(animated: true, completion: nil)
            }
        }
    
    internal func imagePickerControllerDidCancel(_ _picker: UIImagePickerController) {
            dismiss(animated: true, completion: nil)
        
        }
    func settingsViewControllerDidFinish(_ settingsVC: SettingsVCViewController){
        self.red = settingsVC.red
        self.green = settingsVC.green
        self.blue = settingsVC.blue
        self.brushSize = settingsVC.brushSize
        self.opacityValue = settingsVC.opacityValue
    }







}

