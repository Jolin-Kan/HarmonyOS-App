import {GlobalState} from '../../utils/state'
import {ComponentItemTypeA} from '../../utils/interface'

const globalState = GlobalState.getInstance();
@Component
export struct DeviceManagementPage {
  title: string = '设备管理'

  // 响应式数组，用于存储设备数据
  @State componentList: Array<ComponentItemTypeA> = globalState.componentList;

  build() {
    Flex({direction:FlexDirection.Column,justifyContent:FlexAlign.SpaceBetween})
    {
      // 中间内容区域
      Scroll() {
        Column() {
          Text("设备列表")
            .fontSize(24)
            .width("100%")
            .alignSelf(ItemAlign.Start)
            .margin({top:20,left:20,bottom:20})

          // 动态渲染设备信息
          Column() {
            ForEach(this.componentList, (device:ComponentItemTypeA) => {
              Text(`${device.name}`)
                .fontSize(20)
                .margin({top:10,left:20})
              Text(`设备种类: ${device.name}`)
                .fontSize(16)
                .margin({top:5,left:40})
            })
          }
          .alignSelf(ItemAlign.Start)
        }
        .height('100%')
      }
      .height('100%')
      .width('100%')
  }
}}