//
//  ProxyInternet.swift
//  DesignPatterns
//
//  Created by Mariano Martin Battaglia on 07/09/2023.
//

import Foundation

class ProxyInternet: Internet {
    
    var internet = AccessToInternet()
    var bannedUrl = [String]()
    
    init() {
        bannedUrl.append("twitter.com")
        bannedUrl.append("google.com")
        bannedUrl.append("facebook.com")
    }
    
    func connectTo(url: String) {
        if (bannedUrl.contains(url)) {
            print("Intentando conectar \(url)")
            print("URL bloqueada - Acceso Denegado - Consulta a tu Administrador")
        } else {
            internet.connectTo(url: url)
        }
    }
}
