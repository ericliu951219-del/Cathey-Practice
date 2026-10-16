# 國泰證券 App 頁面仿作

使用 SwiftUI 模仿國泰證券 App 的行情／自選頁面，練習課堂介紹的排版元件、圖片、modifier，以及透過 property 客製自訂 View。

本專案為課程學習作品，非國泰證券官方 App。股價為固定展示資料，不提供即時行情、登入或交易功能。

## 成果展示

頁面包含行情標題、分類列、帳戶資訊、八張雙欄股票卡片，以及底部導覽列。

- 股票區域可以上下捲動。
- 上方分類列可以左右捲動。
- 底部導覽列固定，不跟著股票清單捲動。
- 股票卡片以紅色呈現上漲、綠色呈現下跌。

> 可在此加入實際執行截圖或操作 GIF。

## 開啟與執行

1. 下載或複製本專案。
2. 使用 Xcode 開啟 `CathayPractice.xcodeproj`。
3. 選擇 `CathayPractice` Scheme，以及已安裝的 iPhone 模擬器。
4. 按下 **⌘R** 編譯並執行。

專案最低部署版本為 **iOS 17.0**。若要在實體 iPhone 執行，請在 **Signing & Capabilities** 中設定自己的 Team，並視需要修改 Bundle Identifier。

## 檔案說明

| Swift 檔案 | 用途 |
| --- | --- |
| `CathayPracticeApp.swift` | App 啟動入口，將 `ContentView` 設為主要畫面。 |
| `ContentView.swift` | 組合頁首、帳戶資訊、股票清單與底部導覽列；手動排列八張股票卡片。 |
| `MarketHeaderView.swift` | 顯示行情標題、搜尋圖示與分類列；包含可傳入文字、顏色的 `CategoryView`。 |
| `StockCardView.swift` | 顯示單張股票卡片，接收名稱、代號、價格、漲跌金額、百分比、圖示與顏色。 |
| `BottomBarView.swift` | 排列底部六個導覽項目，行情圖示使用 Assets 圖片。 |
| `NavigationItemView.swift` | 以 `title`、`icon`、`color` 三個 property 客製底部圖示與文字。 |

圖片資源位於 `CathayPractice/Assets.xcassets`。

## 課堂技術應用

| 技術 | 實作方式 |
| --- | --- |
| `VStack` | 垂直排列主畫面、卡片內容與股票列。 |
| `HStack` | 每排放兩張股票卡片，並水平排列漲跌資訊及導覽項目。 |
| `ZStack` | 放置背景及組合頁首的置中標題。 |
| `Text` | 顯示股票名稱、股價及分類文字。 |
| `Image` | 同時使用 Assets 圖片與 SF Symbols。 |
| `ScrollView` | 製作股票區域的垂直捲動和分類列的水平捲動。 |
| `Spacer` | 推開漲跌金額與百分比，調整元件位置。 |
| 自訂 View 與 property | 重複使用股票卡片、分類與底部項目，傳入不同內容。 |
| 多個 Swift 檔案 | 分開管理主畫面、頁首、卡片與導覽列。 |

外觀透過 `.font()`、`.foregroundStyle()`、`.padding()`、`.frame()`、`.background()`、`.clipShape()`、`.overlay()` 與 `.strokeBorder()` 等 modifier 調整。

### 股票卡片範例

```swift
StockCardView(
    name: "王品",
    code: "2727",
    price: "246.00",
    change: "4.00",
    percent: "1.65%",
    icon: "arrow.up.right.circle.fill",
    color: riseColor
)
```

同一個 `StockCardView` 可以接收不同資料，因此不需要為每檔股票另外定義一個 View。

## 講義版的實作範圍

這個版本使用四個 `HStack`，每排手動放入兩張卡片，再以 `VStack` 組成完整清單。顏色與箭頭名稱直接透過 property 傳入。

畫面未使用 `@State`、`@Binding`、`ForEach`、`LazyVGrid`、`GeometryReader`、`Identifiable`、搜尋篩選或提示視窗。`@main`、`App`、`Scene` 與 `WindowGroup` 則保留為 Xcode App 專案的基本入口結構。

## 功能限制

- 搜尋、列表切換與底部導覽圖示為靜態展示，沒有點擊功能。
- 分類列可捲動，但不會切換股票資料。
- 股票名稱、價格與漲跌幅為參考截圖的固定內容，不會更新。
- 使用固定字級與高度，以一般直向 iPhone 畫面為主要展示目標。
- 系統狀態列顯示裝置實際的時間與電量。

## 驗證紀錄

講義版已在 Xcode 編譯，並於 **iPhone 18 Pro／iOS 27.0 模擬器**執行，確認雙欄股票卡片正常顯示、清單可以上下捲動、底部導覽列固定，以及捲到底沒有額外的課堂說明文字。

其他裝置尺寸與系統版本尚未逐一驗證。

## 作業參考
- 介面參考：國泰證券 App 畫面截圖
