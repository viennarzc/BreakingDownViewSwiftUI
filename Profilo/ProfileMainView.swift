//
//  ProfileMainView.swift
//  Profilo
//
//  Created by Viennarz Curtiz on 3/8/23.
//

import SwiftUI

struct ProfileMainView: View {
    @StateObject private var viewModel = ProfileMainViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                UserView(photoImageName: viewModel.userViewModel.photoImageName, name: viewModel.userViewModel.name, jobRole: viewModel.userViewModel.jobRole)
                ProfileDetailsListView(details: viewModel.detailsVM)
            }
        }
        .toolbar {
            ToolbarItem {
                Button(action: {
                    viewModel.addDetails()
                    viewModel.updateUser()
                }, label: {
                    Label("Add", systemImage: "plus")
                })
            }
        }
    }
}

struct ProfileMainView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileMainView()
    }
}

