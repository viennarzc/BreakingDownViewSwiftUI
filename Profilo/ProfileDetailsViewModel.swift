//
//  ProfileDetailsViewModel.swift
//  Profilo
//
//  Created by Viennarz Curtiz on 3/8/23.
//

import Foundation

protocol ProfileDetailsListProtocol: ObservableObject {
    var sections: [DetailSection] { get set }
}

class ProfileDetailsViewModel: ProfileDetailsListProtocol, ObservableObject {
    @Published var sections: [DetailSection]
    
    init(sections: [DetailSection]) {
        self.sections = sections
    }
}

struct DetailItem: Identifiable {
    let id = UUID()
    let label: String
    let value: String
}

struct DetailSection: Identifiable {
    let id = UUID()
    
    let sectionTitle: String
    let items: [DetailItem]
}
