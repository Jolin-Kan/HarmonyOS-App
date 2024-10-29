@CustomDialog
@Component
export struct WarningDialog {
  controller?: CustomDialogController;
  @Link warnText: string; // 使用 Link 来链接动态文本

  constructor(controller?: CustomDialogController, warnText: string = '') {
    super();
    this.controller = controller;
    this.warnText = warnText; // 初始化 warnText
}

  build() {
    Column() {
      Text(this.warnText) // 动态显示警告文本
        .fontSize(20)
    }
    .padding(20)
    .borderRadius(10)
  }
}