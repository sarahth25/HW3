//
//  mosque.swift
//  hw3
//
//  Created by sarah alshammari on 5/7/20.
//  Copyright © 2020 sarah. All rights reserved.
//

import Foundation
import SwiftUI
struct mousque: Hashable,Identifiable {
var area = "مشرف"
    var names : String
    var sheikh :[String]
    var prayer = ["الفجر",
    "الشروق",
    "الظهر",
    "المعصر",
    "المغرب",
    "العشاء",]
    var time = ["4:00am",
    "5:00am",
    "11:55am",
    "3:10pm",
    "6:10pm",
    "7:50pm",]
    var id = UUID()
}
        let albeshr = mousque( names:"البشر",sheikh :
["الطرابلسي",
 "الكندري",
 "العفاسي",])
 let almashaan = mousque(names:"المشعان",sheikh :
["الطرابلسي",
 "الكندري",
 "العفاسي",])

let alshamrouk = mousque( names:"الشمروخ",sheikh :
["الطرابلسي",
 "الكندري",
 "العفاسي",])
let mouques = [almashaan,albeshr,alshamrouk]

