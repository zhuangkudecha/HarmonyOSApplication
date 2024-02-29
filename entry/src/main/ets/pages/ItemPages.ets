import colorSpaceManager from '@ohos.graphics.colorSpaceManager'
import {Header} from '../components/CommonComponents'

class Item {
  name: string
  image: ResourceStr
  price: number
  discount: number

  constructor(name: string, image: ResourceStr, price: number, discount:number = 0) {
    this.name = name
    this.image = image
    this.price = price
    this.discount = discount
  }
}

@Styles function fillScreen(){
  .width('100%')
  .padding(10)
  .height(120)
  .backgroundColor('#ffd0d0d0')
  .borderRadius(20)
}

@Extend(Text) function fontStyles(){
    .fontColor(Color.Red)
    .fontSize(16)
}

@Builder function ItemCard(item: Item) {
  Row({space:10}) {
    Image(item.image)
      .width(100)

    Column() {
      Text(item.name)
        .fontWeight(FontWeight.Bold)
      if (item.discount) {
        Text('原价：￥' + item.price)
          .fontSize(14)
          .decoration({ type: TextDecorationType.LineThrough })
        Text('折扣价：￥' + (item.price - item.discount))
          .fontColor(Color.Red)
        Text('补贴：￥' + item.discount)
          .fontColor('#F36')
      } else {
        Text('￥' + item.price)
          .fontStyles()
      }

    }.alignItems(HorizontalAlign.Start)
    .margin(40)
  }.fillScreen()

}


@Entry
@Component
struct ItemPages {
  private items: Array<Item> = [
    new Item('华为mate60pro', $r('app.media.mate60'), 6999, 500),
    new Item('MateBookProX', $r('app.media.mateBookProX'), 13999),
    new Item('WatchGT4', $r('app.media.watchGT4'), 1438),
    new Item('FreeBuds Pro3', $r('app.media.freeBudsPro3'), 1499),
    new Item('FreeBuds Pro3', $r('app.media.freeBudsPro3'), 1499),
    new Item('FreeBuds Pro3', $r('app.media.freeBudsPro3'), 1499),
    new Item('Mate X5', $r('app.media.matex5'), 12999)
  ]
  build() {
    Column({space:10 }){
      Header({title:'商品列表'})
        .margin({top:10})

      List({space:10}){
        ForEach(
          this.items,
          (item: Item) => {
            ListItem() {
              ItemCard(item)
            }
          })
      }
      .width('100%')
      .layoutWeight(1)

    }.alignItems(HorizontalAlign.Start)

  }
}