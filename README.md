# SwiftUI-PDFKit

## 🤔 Why and What
URL로 된 웹 PDF 를 SwiftUI 에서 간편하게 보여줄 수 있도록 UIViewRepresentable 로 감싼 형태로 만들었습니다.  
PDFKit 를 이용해 만들었습니다. 사실 뭐 딱히 특별한건 없지만 경험을 기록하기 위해 레포를 팠습니다.

## 📱 Example Code and Screenshot
```
import SwiftUI
import PDFKit

struct ContentView: View {
    
    let urlString = "https://www.africau.edu/images/default/sample.pdf"
    
    var body: some View {
        PDFWeb(urlString)
    }
}
```

<img width="200" alt="스크린샷 2023-05-03 오전 12 01 19" src="https://user-images.githubusercontent.com/85481204/235705715-d9822f69-edf4-4866-b544-b15f44ae35a6.png">
