import {WarningDialog} from './WarningDialog'
import {GlobalState} from '../utils/state'
const globalState = GlobalState.getInstance();

@CustomDialog
@Component
export struct CustomDialogExample {
  @Link textValue1: string;
  @Link textValue2: string;
  dialogController: CustomDialogController;
  // 响应式数组，用于存储 ComponentTypeA 的数据
  @State componentList: Array<any> = globalState.componentList;

  constructor(textValue1: string = '', textValue2: string = '') {
    super();
    this.textValue1 = textValue1;
    this.textValue2 = textValue2;
  }

  build() {
    Column() {
      Text('添加设备').fontSize(20).margin({ bottom: 10 });

      // 第一个输入框
      TextInput({
        placeholder: '请输入设备种类',
        text: this.textValue1,
      })
        .onChange((value: string) => {
          this.textValue1 = value;
        })
        .height(60)
        .width('90%')
        .margin({ bottom: 10 });

      // 第二个输入框
      TextInput({
        placeholder: '请输入设备名称',
        text: this.textValue2,
      })
        .onChange((value: string) => {
          this.textValue2 = value;
        })
        .height(60)
        .width('90%')
        .margin({ bottom: 10 });

      // 按钮区
      Flex({ justifyContent: FlexAlign.SpaceAround }) {
        Button('取消')
          .onClick(() => {
            if (this.dialogController) {
              this.dialogController.close();
              // 清空输入框内容
              this.textValue1 = '';
              this.textValue2 = '';
            }
          })
          .backgroundColor(0xffffff)
          .fontColor(Color.Black);

        Button('确认')
          .onClick(() => {
            if (this.dialogController) {
              // 检查输入框是否为空
              if (this.textValue1.trim() === '' || this.textValue2.trim() === '') {
                const reminderDialog = new CustomDialogController({
                  builder: WarningDialog(this.dialogController),
                  autoCancel: true,
                  alignment: DialogAlignment.Center,
                });
                reminderDialog.open();
                return; // 结束当前函数
              }
              // 处理输入值
              // const links = "app.media." + this.textValue1
              // globalState.add({ name: this.textValue2, data: '50%', isOn: false, url: $r('app.media.light') });
              globalState.add({ name: 'light3', data: '50%', isOn: false, url: $r('app.media.light') });
              this.componentList = globalState.componentList;
              this.dialogController.close();
            }
          })
          .backgroundColor(0xffffff)
          .fontColor(Color.Red);
      }
      .margin({ top: 10 });
    }
    .padding(20)
    .borderRadius(10);
  }
}
