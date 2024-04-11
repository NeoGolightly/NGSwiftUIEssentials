//
//  StatefulPreviewContainer.swift
//
//
//  Created by Neo Golightly on 01.04.24.
//

import SwiftUI

#warning("Needs documentation")
public struct StatefulPreviewContainer<Value, Content: View>: View {
  @State private var value: Value
  private var content: (Binding<Value>) -> Content
  
  public var body: some View {
    content($value)
  }
  
<<<<<<< HEAD
  public init(_ value: Value, content: @escaping (Binding<Value>) -> Content) {
=======
  init(_ value: Value, content: @escaping (Binding<Value>) -> Content) {
>>>>>>> 6380901 (Added StatefulPreviewContainer for Previews)
    self._value = State(wrappedValue: value)
    self.content = content
  }
}
