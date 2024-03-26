//
//  IsPadeDeviceEnvironmentKey.swift
//
//
//  Created by Neo Golightly on 26.03.24.
//

import SwiftUI

@available(iOS 17.0, *)
struct IsPadeDeviceEnvironmentKey: EnvironmentKey {
  static var defaultValue: Bool = false
}

@available(iOS 17.0, *)
public extension EnvironmentValues {
  var isPadDevice: Bool {
    get { self[IsPadeDeviceEnvironmentKey.self] }
    set { self[IsPadeDeviceEnvironmentKey.self] = newValue }
  }
}

#if os(iOS)
extension IsPadeDeviceEnvironmentKey: UITraitBridgedEnvironmentKey{
  static func read(from traitCollection: UITraitCollection) -> Bool {
    return traitCollection.userInterfaceIdiom == .pad
  }
  static func write(to mutableTraits: inout UIMutableTraits, value: Bool) {}
}
#endif

