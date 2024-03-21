//
//  EmbedInNavigationStack.swift
//
//
//  Created by Neo Golightly on 21.03.24.
//

import SwiftUI

public extension View {
  /// Embeds the view in a `NavigationStack`
  func embedInNavigationStack() -> some View {
    NavigationStack{ self }
  }
  
  /// Embeds the view in a `NavigationStack`
  /// - Parameter path: A `Binding` to the navigation state for this stack.
  /// - Returns: A view embaded in a `NavigationStack`
  func embedInNavigationStack(path: Binding<NavigationPath>) -> some View {
    NavigationStack(path: path){ self }.bold()
  }
  
  /// Embeds the view in a `NavigationStack`
  /// - Parameter path: A `Binding` to the navigation state for this stack.
  /// - Returns: A view embaded in a `NavigationStack`
  func embedInNavigationStack(path: Binding<Data>) -> some View {
    NavigationStack(path: path){ self }
  }
}
