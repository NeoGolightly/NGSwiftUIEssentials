//
//  EmbadInNavigationStack.swift
//
//
//  Created by Neo Golightly on 21.03.24.
//

import SwiftUI

extension View {
  /// Em
  public func embadInNavigationStack() -> some View {
    NavigationStack{ self }
  }
  
  /// <#Description#>
  /// - Parameter path: A ``Binding`` to the navigation state for this stack.
  /// - Returns: <#description#>
  public func embadInNavigationStack(path: Binding<NavigationPath>) -> some View {
    NavigationStack(path: path){ self }
  }
  
  /// <#Description#>
  /// - Parameter path: A ``Binding`` to the navigation state for this stack.
  /// - Returns: <#description#>
  public func embadInNavigationStack(path: Binding<Data>) -> some View {
    NavigationStack(path: path){ self }
  }
}
