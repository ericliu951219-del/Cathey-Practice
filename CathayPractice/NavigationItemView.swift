import SwiftUI

struct NavigationItemView: View {
    let title: String
    let icon: String
    let color: Color

    var body: some View {
        VStack(spacing: 5) {
            Image(systemName: icon)
                .font(.system(size: 21)).frame(height: 23)
            Text(title).font(.system(size: 10))
        }
        .foregroundStyle(color)
        .frame(maxWidth: .infinity)
        .frame(height: 49)
    }
}
