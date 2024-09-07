@Component
export struct ButtonComponent {
  private content:string;

  build(){
    Text(this.content)
      .fontColor('white')
      .padding(8)
      .border({color:Color.White,width:0.7})
      .borderRadius(20)
  }
}