// import radio from '@ohos.telephony.radio'
import { ButtonComponent } from '../../components/ButtonComponent'
import {ComponentTypeA} from '../../components/ComponentTypeA'
import {NewComponent} from '../../components/NewComponent'
@Entry
@Component
struct MainPage {
  title: string = 'home'

  build() {
    Flex({direction:FlexDirection.Column,justifyContent:FlexAlign.SpaceBetween})
    {
      // 顶部 Tab 栏
      Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.End}) {
        Text(this.title)
          .fontSize(22)
          .alignSelf(ItemAlign.Center)
          .margin({right:'50%'})
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
      .backgroundBlurStyle(BlurStyle.Thin)
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
            Row()
            {
              ComponentTypeA({name:'light',data:'30%',isOn:false,url:"app.media.light"})
              ComponentTypeA({name:'fridge',data:'30%',isOn:false})

            }
            .alignSelf(ItemAlign.Start)
            Flex({direction:FlexDirection.Column,justifyContent:FlexAlign.SpaceBetween}){
              Image($r('app.media.add'))
                .padding(10)
                .width(50)
                .aspectRatio(1)
                .backgroundColor('#9D9C9D')
                .border({width:0.8,color:'#9D9C9D'})
                .borderRadius(50)
              Text('加入配件')
            }
            .width(180)
            .aspectRatio(1)
            .border({width:2,color:'#ABABAB'})
            .alignSelf(ItemAlign.Start)
            .margin({left:10,top:20})
            .padding(20)
            .borderRadius(30)
            .backgroundColor('#ABABAB')
            .opacity(0.6)

          }
          .height('100%')

        }
        .height('100%')
        .width('100%')
        // .border({
        //   width:0.7,
        //   color:Color.White
        // })

      // 底部 Tab 栏
      Row() {
        Flex({direction:FlexDirection.Row,justifyContent:FlexAlign.SpaceAround}){
          ButtonComponent({content:"家庭"})
          ButtonComponent({content:"设备管理"})
          ButtonComponent({content:"我的"})
        }
      }
      .height(80)
      .width('100%')
      .zIndex(1)
      .align(Alignment.Bottom)
      .opacity(1)
      .backgroundBlurStyle(BlurStyle.Thin)
    }
    .backgroundImage($r('app.media.bg'))
    .backgroundImageSize(ImageSize.Cover)
    .backgroundImagePosition(Alignment.Center)
    .width('100%')
    .height('100%')
    }
  }

