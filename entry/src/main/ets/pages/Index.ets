// import radio from '@ohos.telephony.radio'
import {ComponentTypeA} from '../../components/ComponentTypeA'
@Entry
@Component
struct MainPage {
  title: string = 'home'

  build() {
    Flex({direction:FlexDirection.Column,justifyContent:FlexAlign.SpaceBetween})
    {
      // 顶部 Tab 栏
      Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.End }) {
        Text(this.title)
          .fontSize(22)
          .alignSelf(ItemAlign.Center)
        Image($r('app.media.add'))
          .margin({ right: 10 })
          .width(30)
          .aspectRatio(1)
          .alignSelf(ItemAlign.Center)
        Image($r('app.media.Edit'))
          .margin({ right: 10 })
          .width(30)
          .aspectRatio(1)
          .alignSelf(ItemAlign.Center)
      }
      .align(Alignment.Center)
      .height(80)
      .width('100%')
      .border({ color: Color.Grey, width: 0.5 })
      .zIndex(1)
      .backgroundImage($r('app.media.bg'))
      .backgroundImageSize(ImageSize.Cover)
      .backgroundImagePosition(Alignment.Top)
      .opacity(1)
      .align(Alignment.Top)

      // 中间滑动区域
        Scroll() {
          Column(){

            Text("home")
              .fontSize(24)
              .width("100%")
              .alignSelf(ItemAlign.Start)
              .margin({top:20,left:20,bottom:20})
            ComponentTypeA({name:'name',data:'30%',isOn:false})
            }
            .height('100%')

        }
        .height('100%')
        .width('100%')
        .border({
          width:0.7,
          color:Color.White
        })

      // 底部 Tab 栏
      Row() {
        Text("Bottom Tab")
          .fontColor('white')
      }
      .height(80)
      .width('100%')
      .zIndex(1)
      .align(Alignment.Bottom)
      .backgroundColor(Color.Grey)
    }
    .backgroundImage($r('app.media.bg'))
    .backgroundImageSize(ImageSize.Cover)
    .backgroundImagePosition(Alignment.Center)
    .width('100%')
    .height('100%')
    }
  }

