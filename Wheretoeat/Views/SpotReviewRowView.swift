//
//  SpotReviewRowView.swift
//  Wheretoeat
//
//  Created by kewei zeng on 11/11/2024.
//

import SwiftUI

struct SpotReviewRowView: View {
    @State var review: Review
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(review.title)
                .font(.title2)
            HStack {
                StarSelectionView(rating: $review.rating, interactive: false, font: .callout)
                Text(review.body)
                    .font(.callout)
                    .lineLimit(1)
            }
        }
    }
}

struct SpotReviewRowView_Previews: PreviewProvider {
    static var previews: some View {
        SpotReviewRowView(review: Review(title: "Great Food!", body: "I love this place so much.the location near NEU. The only thing preventing 5 stars is the price", rating: 4))
    }
}
