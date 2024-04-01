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
  
  public init(_ value: Value, content: @escaping (Binding<Value>) -> Content) {
    self._value = State(wrappedValue: value)
    self.content = content
  }
}
