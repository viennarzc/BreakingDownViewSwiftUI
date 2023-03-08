//
//  ProfileDetailsListView.swift
//  Profilo
//
//  Created by Viennarz Curtiz on 3/8/23.
//

import SwiftUI

struct ProfileDetailsListView<Abstraction>: View where Abstraction: ProfileDetailsListProtocol {
    @ObservedObject var details: Abstraction
    
    var body: some View {
        VStack {
            ForEach(details.sections) { section in
       
                Section {

                    ForEach(section.items) { item in
                        Divider()
                        LabeledContent(item.label, value: item.value)
                    }
                } header: {
                    Spacer().frame(height: 48)
                    
                    Text(section.sectionTitle)
                        .font(.title3)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.horizontal)

            }
        }
    }
}

struct ProfileDetailsListView_Previews: PreviewProvider {
    
    static var previews: some View {
        ProfileDetailsListView(details: ProfileDetailsViewModel(sections: [
            DetailSection(sectionTitle: "Skills", items: [
                .init(label: "Programming Language", value: "Swift, C++"),
                .init(label: "Tools", value: "Xcode, Git"),
            ]),
            
            DetailSection(sectionTitle: "Education", items: [
                .init(label: "College/University", value: "Mapua Institute of Technology"),
                .init(label: "High School", value: "Maginhawang Buhay High School"),
            ]),
        ]))
    }
}


