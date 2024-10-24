// import radio from '@ohos.telephony.radio'
import { ButtonComponent } from '../../components/ButtonComponent'
import {ComponentTypeA} from '../../components/ComponentTypeA'
import {GlobalState} from '../../utils/state'
const globalState = GlobalState.getInstance();
@Component
export struct Main {
  title: string = 'home'
  // 响应式数组，用于存储 ComponentTypeA 的数据
  @State componentList: Array<any> = globalState.componentList;
  build() {
    Flex({direction:FlexDirection.Column,justifyContent:FlexAlign.SpaceBetween})
    {
      // 中间滑动区域
      Scroll() {
        Column(){

          Text("home")
            .fontSize(24)
            .width("100%")
            .alignSelf(ItemAlign.Start)
            .margin({top:20,left:20,bottom:20})

          Flex({direction:FlexDirection.Column,justifyContent:FlexAlign.SpaceBetween}){
            Image($r('app.media.add'))
              .padding(10)
              .width(50)
              .aspectRatio(1)
              .backgroundColor('#9D9C9D')
              .border({width:0.8,color:'#9D9C9D'})
              .borderRadius(50)
            Text('加入配件').onClick(()=>{
              globalState.add({ name: 'light3', data: '50%', isOn: false, url: $r('app.media.light') });
            })
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

          // 动态渲染 ComponentTypeA 组件
          Column() {
            ForEach(this.componentList, (item) => {
              ComponentTypeA({
                name: item.name,
                data: item.data,
                isOn: item.isOn,
                url: item.url
              })
            })
          }
          .alignSelf(ItemAlign.Start)

        }
        .height('100%')

      }
      .height('100%')
      .width('100%')
      // .border({
      //   width:0.7,
      //   color:Color.White
      // })
  }
}}

