// storage.ts
import {ComponentItemTypeA} from '../utils/interface'
export class GlobalState {
  private static instance: GlobalState;
  public componentList: Array<ComponentItemTypeA> = [

  ];
  // { name: 'light1', data: '30%', isOn: false, url: $r('app.media.light') },
  //   { name: 'light2', data: '30%', isOn: false, url: $r('app.media.light') },
  // public emitter = new EventEmitter(); // 创建事件发射器

  public static getInstance(): GlobalState {
    if (!GlobalState.instance) {
      GlobalState.instance = new GlobalState();
    }
    return GlobalState.instance;
  }
  public add({ name, data, isOn: boolean, url: string }) {
    this.componentList.push({ name, data, isOn: boolean, url: string });
  }
}


