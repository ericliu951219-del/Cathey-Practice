import SwiftUI

struct ContentView: View {
    let mainColor = Color(red: 0.12, green: 0.67, blue: 0.56)
    let fallColor = Color(red: 0.28, green: 0.73, blue: 0.51)
    let riseColor = Color(red: 1, green: 0.16, blue: 0.18)
    let backgroundColor = Color(red: 0.965, green: 0.965, blue: 0.965)

    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            VStack(spacing: 0) {
                MarketHeaderView(mainColor: mainColor)
                    .background(backgroundColor)
                HStack(spacing: 16) {
                    Text("證券-敦南三分公司 1059718")
                        .font(.system(size: 14))
                        .padding(.horizontal, 16)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(height: 41)
                        .background(.white)
                        .clipShape(.rect(cornerRadius: 9))
                    Image(systemName: "list.bullet")
                        .font(.system(size: 24)).foregroundStyle(.gray)
                }
                .padding(.leading, 16).padding(.trailing, 19)
                .padding(.top, 9).padding(.bottom, 13)
                .background(backgroundColor)
                ScrollView {
                    VStack(spacing: 7) {
                        HStack(spacing: 10) {
                            StockCardView(name: "元大台灣", code: "50", price: "108.90", change: "4.10", percent: "3.63%", icon: "arrow.down.right.circle.fill", color: fallColor)
                            StockCardView(name: "聯電", code: "2303", price: "133.50", change: "8.50", percent: "5.99%", icon: "arrow.down.right.circle.fill", color: fallColor)
                        }
                        HStack(spacing: 10) {
                            StockCardView(name: "鴻海", code: "2317", price: "239.50", change: "3.50", percent: "1.44%", icon: "arrow.down.right.circle.fill", color: fallColor)
                            StockCardView(name: "國巨*", code: "2327", price: "573.00", change: "54.00", percent: "8.61%", icon: "arrow.down.right.circle.fill", color: fallColor)
                        }
                        HStack(spacing: 10) {
                            StockCardView(name: "台積電", code: "2330", price: "2440.00", change: "50.00", percent: "2.01%", icon: "arrow.down.right.circle.fill", color: fallColor)
                            StockCardView(name: "王品", code: "2727", price: "246.00", change: "4.00", percent: "1.65%", icon: "arrow.up.right.circle.fill", color: riseColor)
                        }
                        HStack(spacing: 10) {
                            StockCardView(name: "中美晶", code: "5483", price: "195.50", change: "13.00", percent: "6.24%", icon: "arrow.down.right.circle.fill", color: fallColor)
                            StockCardView(name: "環球晶", code: "6488", price: "923.00", change: "97.00", percent: "9.51%", icon: "arrow.down.right.circle.fill", color: fallColor)
                        }
                    }
                    .padding(.horizontal, 7)
                }
                .background(backgroundColor)
                BottomBarView(mainColor: mainColor)
            }
        }
        .foregroundStyle(Color(red: 0.22, green: 0.22, blue: 0.22))
    }
}
