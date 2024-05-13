//
//  EmailValidation.swift
//
//
//  Created by Neo Golightly on 13.05.24.
//

import Foundation

public extension String {
  
  /// A Helper on String to validate that the value is an actual email address
  /// - Returns: A boolean indicating if the given string is an email address or not
  func isValidEmail() -> Bool {
    let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
    return emailPredicate.evaluate(with: self)
  }
}
