@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State imageWidth: number = 30;
  build() {
    Column({space : 10}){
      Text('学鸿蒙 我就不来黑马程序员')
        .fontWeight(FontWeight.Bolder)
        .width('100%')
        .fontSize(20)
      Row(){

        Text('置顶')
          .fontColor(Color.Red)
          .width(40)
          .height(30)
        Text('新华社')
          .fontColor(Color.Grey)
          .width(54)
          .height(30)
        Text('4689评论')
          .fontColor(Color.Grey)
          .width(70)
          .height(30)
      }.width('100%')
      Text('传智教育 黑马程序员研究院全新录制的鸿蒙教程haihdiuahsiudhai hduiashiudhaiudhiuashdhauihdiuahdiuahsdiuahsdiuhiudhiuashduihasiudhsiahdiuashdiuahdiahsiudhiuashdiusahdiuahdsiuahsdh')
        .lineHeight(24)
        .textOverflow({
          overflow:TextOverflow.Ellipsis
        }).maxLines(2)
        .width('100%')

      Row() {
        Image($r('app.media.startIcon'))
          .width(this.imageWidth)
      }.width('100%')
      .height('30%')
      .justifyContent(FlexAlign.Center)


      TextInput({
        placeholder : '请输入用户名/手机号'
      }).type(InputType.Normal)

      TextInput({
        placeholder : '请输入密码'
      }).type(InputType.Password)

      Button('登录')

      Slider({
        min:100,
        max:300,
        value: this.imageWidth,
        step: 10
      })
        .blockColor(Color.Orange)
        .width('90%')
        .trackThickness(7)
        .showTips(true)
        .onChange(value => {
          this.imageWidth = value
        })
    }.width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)




  }
}
