import SwiftUI

struct MarketHeaderView: View {
    let mainColor: Color

    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Text("行情").font(.system(size: 18))
                HStack {
                    Spacer()
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 22))
                        .foregroundStyle(.gray)
                }
                .padding(.horizontal, 20)
            }
            .frame(height: 49)
            HStack(spacing: 27) {
                VStack(spacing: 7) {
                    Text("自選").foregroundStyle(mainColor)
                    Circle().foregroundStyle(mainColor).frame(width: 5, height: 5)
                }
                Text("行情").foregroundStyle(.gray).padding(.bottom, 12)
                Spacer()
            }
            .font(.system(size: 18))
            .padding(.leading, 29)
            .frame(height: 44)
            HStack(spacing: 0) {
                ScrollView(.horizontal) {
                    HStack(spacing: 0) {
                        CategoryView(title: "台股庫存", color: mainColor, lineColor: mainColor)
                        CategoryView(title: "海外股票庫存", color: .gray, lineColor: .clear)
                        CategoryView(title: "行動自選1", color: .gray, lineColor: .clear)
                        CategoryView(title: "行動自選2", color: .gray, lineColor: .clear)
                    }
                }
                .scrollIndicators(.hidden)
                Image(systemName: "chevron.down")
                    .foregroundStyle(.gray).padding(.horizontal, 12)
            }
            .frame(height: 42)
        }
    }
}

struct CategoryView: View {
    let title: String
    let color: Color
    let lineColor: Color

    var body: some View {
        VStack(spacing: 0) {
            Text(title)
                .font(.system(size: 17))
                .foregroundStyle(color)
                .padding(.horizontal, 13)
                .frame(height: 40)
            Rectangle().foregroundStyle(lineColor).frame(height: 2)
        }
    }
}
