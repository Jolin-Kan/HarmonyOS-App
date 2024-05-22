@Entry
@Component
struct MainPage {
  @State dragging: boolean = false;
  @State initialScrollPosition: number = 0;

  build(){
    Stack(){
      Column(){
        Row()
          .height(80)
          .width('100%')
          .backgroundColor('blue')
          .zIndex(1)

        Scroll()
        {
          Column({space:20}){
            Text("Home")
              .fontColor('white')
              .align(Alignment.TopStart)
            Button("add")
          }
          .backgroundColor('black')
          .width('100%')
          .height(600)
          .onDragStart(() => {
            // 当拖拽开始时，设置 dragging 状态为 true，并记录初始滚动位置
            this.dragging = true;
            this.initialScrollPosition = this.getScrollPosition();
          })
          .onDrop(() => {
            // 当拖拽结束时，设置 dragging 状态为 false，并恢复滚动位置到初始位置
            this.dragging = false;
            this.scrollTo(this.initialScrollPosition);
          })
        }
        .width('100%')


        Row()
          .height(80)
          .width('100%')
          .backgroundColor('red')
          .zIndex(1)
          .align(Alignment.Bottom)
      }
      .justifyContent(FlexAlign.Center)
    }
    // .backgroundImage($r())
  }
  getScrollPosition(): number {
    // 在这里实现获取滚动位置的方法
    // 例如，你可以使用 Scroll 组件的属性或方法来获取当前滚动位置
    return 0; // 这里暂时返回 0，你需要根据实际情况来实现这个方法
  }

  scrollTo(position: number) {
    // 在这里实现将滚动位置设置回初始位置的方法
    // 例如，你可以使用 Scroll 组件的 scrollTo 方法来设置滚动位置
  }
}


