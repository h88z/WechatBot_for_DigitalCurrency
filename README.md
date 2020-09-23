# 基于数字货币信号API的微信推送机器人

本项目是基于数字货币信号API的微信推送机器人，旨在将策略更新的数字货币信号通过webapi的形式获取然后使用 Q语言 （一种基于VBScript发展起来的脚本语言，多流行于中国）进行内容处理后通过模拟键盘鼠标的方式于微信电脑版（PC端）发送到指定群组或个人聊天框内。

## 背景

想要将数字货币信号通过API的形式发送给微信群内，作为群友的福利。然后看遍了各大开源项目，都是基于WEB网页端写的微信机器人，本着不造轮子的原则使用了

[ItChat微信机器人]: https://github.com/littlecodersh/ItChat

尝试下准备做二开，无奈下载完配置好环境后第一步就劝退了，微信借安全的借口已经将微信网页（web）版关闭了，无法用web协议登录微信那就只能用PC或安卓协议去尝试了，无奈我是个WEB狗逆向并不擅长（可以说是根本不会），在一番脑洞风暴后想到了当年玩游戏时使用的外挂脚本之祖国货之光——脚本精灵 采用纯键盘鼠标模拟的方式将获取的内容处理并发送，既解决了逆向鹅厂旗舰程序的痛苦又省时省力省心（因为懒和菜）

因为在这之前并未接触过所以简单了解了下看了看文档还是很简单的，一晚上两三个小时相对完美的实现了预期的功能，因为是免费项目自己也是现学现卖就一并开源出来了。大佬轻喷。

以下为简单的界面和源码截图


![https://github.com/h88z/WechatBot_for_DigitalCurrency/blob/master/1.png](https://github.com/h88z/WechatBot_for_DigitalCurrency/blob/master/1.png)

![https://github.com/h88z/WechatBot_for_DigitalCurrency/blob/master/2.png](https://github.com/h88z/WechatBot_for_DigitalCurrency/blob/master/2.png)
![https://github.com/h88z/WechatBot_for_DigitalCurrency/blob/master/2.png](https://github.com/h88z/WechatBot_for_DigitalCurrency/blob/master/2.png)

# 最后
## 欢迎炒币玩现货股票的朋友一起交流，感兴趣的朋友可以拉到信号群里一起赚钱。
## 可以扫下面的二维码添加我的微信
![https://github.com/h88z/WechatBot_for_DigitalCurrency/blob/master/3.png](https://github.com/h88z/WechatBot_for_DigitalCurrency/blob/master/3.png)
