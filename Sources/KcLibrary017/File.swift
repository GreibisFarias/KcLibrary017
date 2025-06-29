//
//  File.swift
//  
//
//  Created by Greibis Farias on 6/28/25.
//
import Foundation
import KeychainSwift


public struct keyChainKC {
    
    public init(){}
    
    @discardableResult
    public func saveKC(key: String, value: String) -> Bool{
        if let data = value.data(using: .utf8){
            return KeychainSwift().set(data, forKey: key)
        }else{
            return false
        }
    }
    
    public func loadKC(key: String) -> String?{
        if let data = KeychainSwift().get(key){
            return data
        }else{
            return ""
        }
        
        @discardableResult
        public func deleteKC(key: String) -> Bool{
            KeychainSwift().delete(key)
        }
    }
}
