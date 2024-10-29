@CustomDialog
@Component
export struct WarningDialog {
  controller?: CustomDialogController;

  constructor(controller?: CustomDialogController) {
    super();
    this.controller = controller;
  }

  build() {
    Column() {
      Text('输入不能为空，请检查。').fontSize(20);
    }
    .padding(20)
    .borderRadius(10);
  }
}