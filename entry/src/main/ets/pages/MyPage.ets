import { ButtonComponent } from '../../components/ButtonComponent'
// @Entry
@Component
export struct MyPage {
  title: string = '我的'

  build() {
    Flex({direction:FlexDirection.Column,justifyContent:FlexAlign.SpaceBetween})
    {
      // 中间内容
      Scroll() {
        Column() {
          Text("个人信息")
            .fontSize(24)
            .width("100%")
            .alignSelf(ItemAlign.Start)
            .margin({top:20,left:20,bottom:20})

          // 个人数据展示区域
          Column() {
            Text("用户名: John Doe")
              .fontSize(20)
              .margin({top:10,left:20})
            Text("邮箱: johndoe@example.com")
              .fontSize(20)
              .margin({top:10,left:20})
            Text("会员等级: 黄金会员")
              .fontSize(20)
              .margin({top:10,left:20})
          }
          .alignSelf(ItemAlign.Start)
        }
        .height('100%')
      }
      .height('100%')
      .width('100%')
  }
}}