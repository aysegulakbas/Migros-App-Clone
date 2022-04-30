//
//  Urunler.swift
//  ODEV6MIGROS
//
//  Created by aysegul on 30.04.2022.
//

import Foundation

class Urunler {
    
    var urunId:Int?
    var urunAd:String?
    var urunMiktar:String?
    var urunFiyat:Double?
    var urunResimAdi:String?
    
    init(urunId:Int,urunAd:String,urunMiktar:String,urunFiyat:Double,urunResimAdi:String) {
        
        self.urunId = urunId
        self.urunAd = urunAd
        self.urunMiktar = urunMiktar
        self.urunFiyat = urunFiyat
        self.urunResimAdi = urunResimAdi
        
    } // Shadowing
}
