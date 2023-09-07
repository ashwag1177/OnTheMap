//
//  Alert.swift
//  On the map
//
//  Created by  ashwaq marzouq on 28/09/1444 AH.
//

import UIKit

extension UIViewController {
    
     func showAlert (message: String) {
        
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: UIAlertController.Style.alert)
        
        let okAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) { action in self.dismiss(animated: true, completion: nil)
        }
        
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}

