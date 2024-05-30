import http from '@ohos.net.http';
export function httpRequest(url:string)
{
  let httpRequest = http.createHttp()
  httpRequest.request(
    `"${url}"`,
    {
      method:http.RequestMethod.GET,
      header:
      {
        'Content-Type':'application/json'
      },
      readTimeout:15000,
      connectTimeout:15000,
      extraData:'extra data'
    },
    (error,data)=>
    {
      if(error)
      {
        console.log("Request error with code "+ error.code +", msg: "+ error.message)
      }
      else if(!error)
      {
        let code = data.responseCode
        if(code === 200)
        {
          
        }
      }
    }
  )
}