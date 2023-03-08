//
//  UserView.swift
//  Profilo
//
//  Created by Viennarz Curtiz on 3/8/23.
//

import SwiftUI

struct UserView: View {
    let photoImageName: String
    let name: String
    let jobRole: String
    
    var body: some View {
        VStack {
            Image(photoImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80)
            .clipShape(Circle())
            
            Text(name)
                .font(.title)
                .fontWeight(.semibold)
            Text(jobRole)
                .font(.subheadline)
            
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(photoImageName: "profile-photo", name: "Jernamyn Shickszchkia", jobRole: "Software Engineer")
    }
}
