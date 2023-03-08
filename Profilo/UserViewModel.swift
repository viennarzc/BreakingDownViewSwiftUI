//
//  UserViewModel.swift
//  Profilo
//
//  Created by Viennarz Curtiz on 3/8/23.
//

import Foundation

class UserViewModel: ObservableObject {
    let photoImageName: String
    let name: String
    let jobRole: String
    
    init(photoImageName: String, name: String, jobRole: String) {
        self.photoImageName = photoImageName
        self.name = name
        self.jobRole = jobRole
    }
}
