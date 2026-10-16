import SwiftUI

struct StockCardView: View {
    let name: String
    let code: String
    let price: String
    let change: String
    let percent: String
    let icon: String
    let color: Color

    var body: some View {
        VStack(spacing: 0) {
            Text("\(name) \(code)")
                .font(.system(size: 24))
                .frame(maxWidth: .infinity)
                .frame(height: 33)
                .background(Color(red: 0.905, green: 0.905, blue: 0.905))
            Text(price)
                .font(.system(size: 43))
                .foregroundStyle(color)
                .frame(maxWidth: .infinity)
                .frame(height: 70)
            HStack(spacing: 3) {
                Text(change)
                Image(systemName: icon)
                    .font(.system(size: 16))
                Spacer()
                Text(percent)
            }
            .font(.system(size: 19))
            .foregroundStyle(color)
            .padding(.horizontal, 4)
            .frame(height: 30)
        }
        .frame(maxWidth: .infinity)
        .clipShape(.rect(cornerRadius: 2))
        .overlay {
            Rectangle().strokeBorder(color, lineWidth: 0.6)
        }
    }
}
