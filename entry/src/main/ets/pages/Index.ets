// import radio from '@ohos.telephony.radio'
import { ButtonComponent } from '../../components/ButtonComponent'
import {Main} from '../pages/main'
import {MyPage} from '../pages/MyPage'
import {DeviceManagementPage} from '../pages/DeviceManegement'

@Entry
@Component
struct HomePage {
  title: string = 'home'
  @State currentPage: string = 'Main';
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

      // 中间部分，根据 currentPage 的值决定显示哪个组件
      if (this.currentPage === 'MyPage') {
        MyPage();
      } else if (this.currentPage === 'DeviceManagementPage') {
        DeviceManagementPage();
      }else if (this.currentPage === 'Main') {
        Main();
      }
      // 底部 Tab 栏
      Row() {
        Flex({direction:FlexDirection.Row,justifyContent:FlexAlign.SpaceAround}){
          ButtonComponent({content:"家庭"}).onClick(() => {
            this.currentPage = 'Main';
            // this.componentList = [];
            // GlobalState.getInstance().componentList = []; // 更新全局状态
          });
          ButtonComponent({content:"设备管理"}).onClick(() => {
            this.currentPage = 'DeviceManagementPage';
          });
          ButtonComponent({content:"我的"}).onClick(() => {
            this.currentPage = 'MyPage';
          });

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

