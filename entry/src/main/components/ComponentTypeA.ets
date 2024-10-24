// import http from '@ohos.net.http';
@Component
export struct ComponentTypeA {
  private on: string = '#EFEDEE'
  private off: string = '#AFAFAE'
  private name: string
  private data: string
  @Prop isOn: boolean
  private url:Resource;
  // private src:string = `"app.media.${this.name}"`

  private toggleState() {
    this.isOn = !this.isOn;
  }

  build() {
    Flex({ direction: FlexDirection.Row, alignItems: ItemAlign.Center, justifyContent: FlexAlign.SpaceAround }) {
      Image(this.url)
        .width(30)
        .aspectRatio(1)
      Column() {
        Text(this.name)
        Text(this.data)
          .fontSize(12)
      }
    }
    .aspectRatio(2.4)
    .width(100)
    .borderRadius(30)
    .alignSelf(ItemAlign.Start)
    .margin(10)
    .backgroundColor(this.isOn ? this.on : this.off)
    .onClick(() =>{
        this.toggleState()
    })
  }
}


// .onTouch((event) => {
//   if (event.type === TouchType.Down) {
//     this.isDragging = true;
//     this.initialY = event.touches[0].screenY;
//   }
//   if (event.type === TouchType.Move) {
//     if (this.isDragging) {
//       const deltaY = event.touches[0].screenY - this.initialY;
//       this.scrollY += deltaY;
//       this.initialY = event.touches[0].screenY;
//     }
//   }
//   if (event.type === TouchType.Up) {
//     animateTo({
//       duration: 400,
//       curve: 'cubic-bezier(.62,-0.14,.62,1.25)'
//     }, () => {
//       this.isDragging = false;
//       this.scrollY = 0;
//       this.TopTextOpacity = 0;
//     });
//   }
//   if (event.type === TouchType.Cancel) {
//     this.isDragging = false;
//     this.scrollY = 0;
//   }
//   if (this.scrollY <= -20) {
//     this.TopTextOpacity = 1;
//   }
//   if (this.scrollY >= -20) {
//     this.TopTextOpacity = 0;
//   }
// })