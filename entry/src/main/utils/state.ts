// storage.ts
export class GlobalState {
  private static instance: GlobalState;
  public componentList: Array<any> = [
    { name: 'light1', data: '30%', isOn: false, url: $r('app.media.light') },
    { name: 'light2', data: '30%', isOn: false, url: $r('app.media.light') },
  ];

  private constructor() {}

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


