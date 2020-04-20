//
//  PostListViewModel.swift
//  Test
//
//  Created by Dillon Davis on 2/13/20.
//  Copyright © 2020 Dillon Davis. All rights reserved.
//

import Foundation
import SwiftUI
import Combine


final class PostListViewModel: ObservableObject {
    
    init() {
        fetchPosts()
    }
    
    @Published var posts = [Post]()
    
    private func fetchPosts() {
        Webservice().getAllPosts {
            self.posts = $0
        }

    
}

}

final class PostListViewByIdModel: ObservableObject {

  @Published var postsById = [PostById]()

  func fetchPostsById(for posts: [Post]) { // not private now
      for post in posts {
         SecondWebService(id: post.id).getAllPostsById {
         self.postsById = $0
      }
}


}
    
}

//final class UserViewModel {
//    
//    init() {
//    fetchPosts()
//    }
//    
//    var users = [UsersClass]()
//    
//    private func fetchPosts() {
//        GetUsersWebservice().getAllPosts {
//            self.users = $0
//            print("Users \(self.users)")
//        }
//
//    
//}
//
//}
