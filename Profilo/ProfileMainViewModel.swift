//
//  ProfileMainViewModel.swift
//  Profilo
//
//  Created by Viennarz Curtiz on 3/8/23.
//

import Foundation

class ProfileMainViewModel: ObservableObject {
    @Published var detailsVM: ProfileDetailsViewModel
    @Published var userViewModel: UserViewModel
    
    init() {
        detailsVM = ProfileDetailsViewModel(sections: [
            DetailSection(sectionTitle: "Skills", items: [
                .init(label: "Programming Language", value: "Swift, C++"),
                .init(label: "Tools", value: "Xcode, Git"),
            ]),
            
            DetailSection(sectionTitle: "Education", items: [
                .init(label: "College/University", value: "Mapua Institute of Technology"),
                .init(label: "High School", value: "Maginhawang Buhay High School"),
            ]),
        ])
        
        userViewModel = UserViewModel(photoImageName: "profile-photo", name: "Jernamyn Shickszchkia", jobRole: "Software Engineer")
    }
    
    func addDetails() {
        let section = DetailSection(sectionTitle: "Hobbies", items: [
            .init(label: "Instruments", value: "Guitar, Piano"),
        ])
        
        detailsVM.sections.append(section)
    }
    
    func updateUser() {
        self.userViewModel = UserViewModel(photoImageName: "profile-photo", name: "Jessica", jobRole: "Cloud Engineer")
    }
}
