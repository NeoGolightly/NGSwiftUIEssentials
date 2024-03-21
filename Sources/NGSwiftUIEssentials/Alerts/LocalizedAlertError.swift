//
//  LocalizedAlertError.swift
//
//
//  Created by Neo Golightly on 21.03.24.
//
//  Based on https://www.avanderlee.com/swiftui/error-alert-presenting/

import SwiftUI

public extension View {
  
  /// A View extension to present an Alert when an Binding<Error?> is not nil
  ///
  /// The Alert use an underlaying ``LocalizedAlertError``.  It use ``LocalizedAlertError/errorDescription`` as the title and ``LocalizedAlertError/recoverySuggestion`` as the message.
  /// - Parameters:
  ///   - error: A Binding to an optional Error
  ///   - buttonTitle: A custom button title for the alert
  /// - Returns: An Alert view which is presented when the Error Binding is not nil and is type of ``LocalizedAlertError``
  func errorAlert(error: Binding<Error?>, buttonTitle: String = "OK") -> some View {
    let localizedAlertError = LocalizedAlertError(error: error.wrappedValue)
    return alert(isPresented: .constant(localizedAlertError != nil), error: localizedAlertError) { _ in
      Button(buttonTitle) {
        error.wrappedValue = nil
      }
    } message: { error in
      Text(error.recoverySuggestion ?? "")
    }
  }
}


/// A LocalizedError wrapper
///
/// Use it in conjunction with ``SwiftUI/View/errorAlert(error:buttonTitle:)``
public struct LocalizedAlertError: LocalizedError {
  /// The underlying LocalizedError
  public let underlyingError: LocalizedError
  /// A description of the error
  public var errorDescription: String? {
    underlyingError.errorDescription
  }
  /// A recovery suggestion for the user
  public var recoverySuggestion: String? {
    underlyingError.recoverySuggestion
  }
  
  /// Creates an instance of the ``LocalizedAlertError``
  /// - Parameter error: An error type. If the type is not an LocalizedError the initalizer returns nil
  public init?(error: Error?) {
    guard let localizedError = error as? LocalizedError else { return nil }
    underlyingError = localizedError
  }
}
