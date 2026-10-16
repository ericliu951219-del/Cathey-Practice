import SwiftUI

struct BottomBarView: View {
    let mainColor: Color

    var body: some View {
        HStack(spacing: 0) {
            VStack(spacing: 5) {
                Image("MarketCandles")
                    .resizable().scaledToFit().frame(width: 23, height: 23)
                Text("行情").font(.system(size: 10))
            }
            .foregroundStyle(mainColor)
            .frame(maxWidth: .infinity)
            .frame(height: 49)
            NavigationItemView(title: "選股", icon: "doc.text.image", color: .gray)
            NavigationItemView(title: "定期投資", icon: "calendar", color: .gray)
            NavigationItemView(title: "下單", icon: "arrow.triangle.2.circlepath", color: .gray)
            NavigationItemView(title: "帳務", icon: "chart.pie", color: .gray)
            NavigationItemView(title: "我的", icon: "person", color: .gray)
        }
        .padding(.top, 4)
        .background(.white)
    }
}
