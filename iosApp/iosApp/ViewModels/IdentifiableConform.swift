//
//  IdentifiableConform.swift
//  ApiGenerateExample
//

import Foundation
import shared

extension City: Identifiable {
    public var id: Int32 {
        woeid
    }
}

extension Weather: Identifiable {
    
}
