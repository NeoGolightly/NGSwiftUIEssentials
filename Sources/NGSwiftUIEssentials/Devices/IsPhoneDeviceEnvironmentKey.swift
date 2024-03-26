//
//  IsPhoneDeviceEnvironmentKey.swift
//
//
//  Created by Neo Golightly on 26.03.24.
//

import SwiftUI

@available(iOS 17.0, *)
struct IsPhoneDeviceEnvironmentKey: EnvironmentKey {
  static var defaultValue: Bool = false
}

@available(iOS 17.0, *)
public extension EnvironmentValues {
  var isPhoneDevice: Bool {
    get { self[IsPhoneDeviceEnvironmentKey.self] }
    set { self[IsPhoneDeviceEnvironmentKey.self] = newValue }
  }
}

#if os(iOS)
extension IsPhoneDeviceEnvironmentKey: UITraitBridgedEnvironmentKey{
  static func read(from traitCollection: UITraitCollection) -> Bool {
    return traitCollection.userInterfaceIdiom == .phone
  }
  static func write(to mutableTraits: inout UIMutableTraits, value: Bool) {}
}
#endif
