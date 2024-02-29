@Component
export struct  Header {
  private title:ResourceStr
  build(){
    Row(){
      Image($r('app.media.back'))
        .width(30)
      Text(this.title)
        .fontSize(30)
        .fontWeight(FontWeight.Bolder)
      Blank()
      Image($r('app.media.refresh'))
        .width(30)

    }
    .width('100%')
    .height(30)
  }
}

