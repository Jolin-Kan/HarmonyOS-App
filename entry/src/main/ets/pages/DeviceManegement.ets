import { ButtonComponent } from '../../components/ButtonComponent'
// @Entry
@Component
export struct DeviceManagementPage {
  title: string = '设备管理'

  // 响应式数组，用于存储设备数据
  deviceList: Array<any> = [
    { name: '空调', status: '开启', powerUsage: '120W' },
    { name: '洗衣机', status: '关闭', powerUsage: '0W' },
  ]

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
            ForEach(this.deviceList, (device) => {
              Text(`${device.name} - ${device.status}`)
                .fontSize(20)
                .margin({top:10,left:20})
              Text(`功耗: ${device.powerUsage}`)
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