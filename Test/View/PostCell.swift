//
//  PostCell.swift
//  Test
//
//  Created by Dillon Davis on 3/13/20.
//  Copyright © 2020 Dillon Davis. All rights reserved.
//

import SwiftUI

struct PostCell: View {
    @ObservedObject var model = PostListViewModel()
//    var posts = [Post]()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell()
    }
}
