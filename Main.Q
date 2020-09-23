    //Created by h88z
    
    Call Plugin.Web.Bind("WQM.exe")
    Dim x,check
    x = 1
    Do
Do
	Call Plugin.Web.go("此处为BTC信号APIURL")
	btcTxt = Plugin.Web.HtmlGet("text", "")
	
    If StrComp(btcCheck,btcTxt)<>0 Then 
    	btcCheck = btcTxt
    	间隔 = "||"
    	间隔位置 = InStr(x, btcCheck, 间隔)
    	截取内容前1 = Left(btcCheck, 间隔位置-1)
    	截取内容后1 = Mid(btcCheck, 间隔位置+2)
    	If 截取内容前1 = "btc" Then 
    	
    		//获取微信句柄
    		
    		微信句柄 = Plugin.Window.Find("WeChatMainWndForPC","微信")
			
			
			//唤醒并前置窗口
			
    		Call Plugin.Window.Active(微信句柄)
    		Call Plugin.Window.Show(微信句柄)
    		
    		//位置初始化
    		
    		Call Plugin.Window.Move(微信句柄, 0, 0)
    		
    		//窗口大小初始化
    		
			Call Plugin.Window.Size(微信句柄, 700, 500)
			
			
			//选中文本区	
		
			MoveTo 495, 430
			
			//两次左键
			
			LeftClick 1
			Delay 1000
			LeftClick 1
			
			//全选文本区
			
			KeyDown 17, 1
			KeyPress 65, 1
			KeyUp 17, 1
			
			//清空文本区内容
			
			KeyPress "BackSpace", 1
			
			//信号开始输入

    		输出 = "[红包]【BTC USDT】信号来了[红包]"
    		SayString 输出
    		
    		KeyDown 16, 1
			KeyPress 13, 1
			KeyUp 16, 1
			KeyDown 16, 1
			KeyPress 13, 1
			KeyUp 16, 1
			//换行

    		间隔位置 = InStr(x, 截取内容后1, 间隔)
    		截取内容前2 = Left(截取内容后1, 间隔位置-1)
    		截取内容后2 = Mid(截取内容后1, 间隔位置 + 2)
    		If 截取内容前2 = "sell" Then 
    			输出 = "短周期开空单，注意逢高卖出[太阳]"
    			SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
			Else 
				输出 = "短周期开多单，注意逢低买入[月亮]"
    			SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
    		End If
    		
    		间隔位置 = InStr(x, 截取内容后2, 间隔)
    		截取内容前3 = Left(截取内容后2, 间隔位置-1)
    		截取内容后3 = Mid(截取内容后2, 间隔位置 + 2)
    		If 截取内容前3 = "15sell" Then 
    			输出 = "中周期开空单，注意逢高卖出[太阳]"
    			SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
			Else 
				输出 = "中周期开多单，注意逢低买入[月亮]"
				SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
    		End If
    		
    		间隔位置 = InStr(x, 截取内容后3, 间隔)
    		截取内容前4 = Left(截取内容后3, 间隔位置-1)
    		截取内容后4 = Mid(截取内容后3, 间隔位置 + 2)
    		If 截取内容前4 = "60sell" Then 
    			输出 = "大周期处于下跌趋势[太阳]"
    			SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
			ElseIf 截取内容前4 = "60buy" Then
				输出 = "大周期处于上涨趋势[月亮]"
				SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
			Else 
				输出 = "大周期处于震荡趋势[啤酒]"
				SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
    		End If
    		
    		间隔位置 = InStr(x, 截取内容后4, 间隔)
    		截取内容前5 = Left(截取内容后4, 间隔位置-1)
    		SayString "信号时间：" & 截取内容前5
    		KeyPress "Enter", 1
			
    		
    	End If
    	
    	
    	MoveTo 682, 13
		LeftClick 1
    	TracePrint "数据已更新"
    	Form1.ListBox5.List = btcCheck
    	Form1.ListBox1.List = Now() & "   BTC数据已更新"
    	//TracePrint btcCheck
    	//SayString Check
    	//KeyPress "Enter", 1
    	Exit Do

	Else 
		//SayString Check
    	//KeyPress "Enter", 1
    	MoveTo 682, 13
		LeftClick 1
    	TracePrint "数据未更新"
    	Form1.ListBox5.List = btcCheck
    	Form1.ListBox1.List = Now() & "   BTC数据未更新"
    	Exit Do
    	//TracePrint Check
	End If
	
Loop

Delay 1000

//ETH

Do
	Call Plugin.Web.go("此处为ETH信号APIURL")
	ethTxt = Plugin.Web.HtmlGet("text", "")
    If StrComp(ethCheck,ethTxt)<>0 Then 
    	ethCheck = ethTxt
    	间隔 = "||"
    	间隔位置 = InStr(x, ethCheck, 间隔)
    	截取内容前1 = Left(ethCheck, 间隔位置-1)
    	截取内容后1 = Mid(ethCheck, 间隔位置+2)
    	If 截取内容前1 = "eth" Then 
    		微信句柄 = Plugin.Window.Find("WeChatMainWndForPC","微信")
			//TracePrint 微信句柄
    		Call Plugin.Window.Active(微信句柄)
    		Call Plugin.Window.Show(微信句柄)
    		
    		//位置初始化
    		
    		Call Plugin.Window.Move(微信句柄, 0, 0)
    		
    		//窗口大小初始化
    		
			Call Plugin.Window.Size(微信句柄, 700, 500)
			
			
			//选中文本区	
		
			MoveTo 495, 430
			
			//两次左键
			
			LeftClick 1
			Delay 1000
			LeftClick 1
			
			//全选文本区
			
			KeyDown 17, 1
			KeyPress 65, 1
			KeyUp 17, 1
			
			//清空文本区内容
			
			KeyPress "BackSpace", 1
			
			//信号开始输入
    		
    		输出 = "[红包]【ETH USDT】信号来了[红包]"
    		SayString 输出
    		
    		KeyDown 16, 1
			KeyPress 13, 1
			KeyUp 16, 1
			KeyDown 16, 1
			KeyPress 13, 1
			KeyUp 16, 1
			//换行

    		间隔位置 = InStr(x, 截取内容后1, 间隔)
    		截取内容前2 = Left(截取内容后1, 间隔位置-1)
    		截取内容后2 = Mid(截取内容后1, 间隔位置 + 2)
    		If 截取内容前2 = "sell" Then 
    			输出 = "短周期开空单，注意逢高卖出[太阳]"
    			SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
			Else 
				输出 = "短周期开多单，注意逢低买入[月亮]"
    			SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
    		End If
    		
    		间隔位置 = InStr(x, 截取内容后2, 间隔)
    		截取内容前3 = Left(截取内容后2, 间隔位置-1)
    		截取内容后3 = Mid(截取内容后2, 间隔位置 + 2)
    		If 截取内容前3 = "15sell" Then 
    			输出 = "中周期开空单，注意逢高卖出[太阳]"
    			SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
			Else 
				输出 = "中周期开多单，注意逢低买入[月亮]"
				SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
    		End If
    		
    		间隔位置 = InStr(x, 截取内容后3, 间隔)
    		截取内容前4 = Left(截取内容后3, 间隔位置-1)
    		截取内容后4 = Mid(截取内容后3, 间隔位置 + 2)
    		If 截取内容前4 = "60sell" Then 
    			输出 = "大周期处于下跌趋势[太阳]"
    			SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
			ElseIf 截取内容前4 = "60buy" Then
				输出 = "大周期上涨趋势[月亮]"
				SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
			Else 
				输出 = "大周期处于震荡趋势[啤酒]"
				SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
    		End If
    		
    		间隔位置 = InStr(x, 截取内容后4, 间隔)
    		截取内容前5 = Left(截取内容后4, 间隔位置-1)
    		SayString "信号时间：" & 截取内容前5
    		KeyPress "Enter", 1
    		
    	End If
    	
    	MoveTo 682, 13
		LeftClick 1
    	TracePrint "数据已更新"
    	Form1.ListBox6.List = ethCheck
    	Form1.ListBox2.List = Now() & "   ETH数据已更新"
    	//TracePrint Check
    	//SayString Check
    	//KeyPress "Enter", 1
    	Exit Do

	Else 
		//SayString Check
    	//KeyPress "Enter", 1
    	MoveTo 682, 13
		LeftClick 1
    	TracePrint "数据未更新"
    	Form1.ListBox6.List = ethCheck
    	Form1.ListBox2.List = Now() & "   ETH数据未更新"
    	Exit Do
    	//TracePrint Check
	End If
	
Loop

Delay 1000
//EOS

Do
	Call Plugin.Web.go("此处为EOS信号APIUR")
	eosTxt = Plugin.Web.HtmlGet("text", "")
    If StrComp(eosCheck,eosTxt)<>0 Then 
    	eosCheck = eosTxt
    	间隔 = "||"
    	间隔位置 = InStr(x, eosCheck, 间隔)
    	截取内容前1 = Left(eosCheck, 间隔位置-1)
    	截取内容后1 = Mid(eosCheck, 间隔位置+2)
    	If 截取内容前1 = "eos" Then 
    		微信句柄 = Plugin.Window.Find("WeChatMainWndForPC","微信")
			//TracePrint 微信句柄
    		Call Plugin.Window.Active(微信句柄)
    		Call Plugin.Window.Show(微信句柄)
    		
    		//位置初始化
    		
    		Call Plugin.Window.Move(微信句柄, 0, 0)
    		
    		//窗口大小初始化
    		
			Call Plugin.Window.Size(微信句柄, 700, 500)
			
			
			//选中文本区	
		
			MoveTo 495, 430
			
			//两次左键
			
			LeftClick 1
			Delay 1000
			LeftClick 1
			
			//全选文本区
			
			KeyDown 17, 1
			KeyPress 65, 1
			KeyUp 17, 1

			
			//清空文本区内容
			
			KeyPress "BackSpace", 1
			
			//信号开始输入
    		
    		输出 = "[红包]【EOS USDT】信号来了[红包]"
    		SayString 输出
    		
    		KeyDown 16, 1
			KeyPress 13, 1
			KeyUp 16, 1
			KeyDown 16, 1
			KeyPress 13, 1
			KeyUp 16, 1
			//换行

    		间隔位置 = InStr(x, 截取内容后1, 间隔)
    		截取内容前2 = Left(截取内容后1, 间隔位置-1)
    		截取内容后2 = Mid(截取内容后1, 间隔位置 + 2)
    		If 截取内容前2 = "sell" Then 
    			输出 = "短周期开空单，注意逢高卖出[太阳]"
    			SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
			Else 
				输出 = "短周期开多单，注意逢低买入[月亮]"
    			SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
    		End If
    		
    		间隔位置 = InStr(x, 截取内容后2, 间隔)
    		截取内容前3 = Left(截取内容后2, 间隔位置-1)
    		截取内容后3 = Mid(截取内容后2, 间隔位置 + 2)
    		If 截取内容前3 = "15sell" Then 
    			输出 = "中周期开空单，注意逢高卖出[太阳]"
    			SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
			Else 
				输出 = "中周期开多单，注意逢低买入[月亮]"
				SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
    		End If
    		
    		间隔位置 = InStr(x, 截取内容后3, 间隔)
    		截取内容前4 = Left(截取内容后3, 间隔位置-1)
    		截取内容后4 = Mid(截取内容后3, 间隔位置 + 2)
    		If 截取内容前4 = "60sell" Then 
    			输出 = "大周期处于下跌趋势[太阳]"
    			SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
			ElseIf 截取内容前4 = "60buy" Then
				输出 = "大周期处于上涨趋势[月亮]"
				SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
			Else 
				输出 = "大周期处于震荡趋势[啤酒]"
				SayString 输出
    			KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
				KeyDown 16, 1
				KeyPress 13, 1
				KeyUp 16, 1
    		End If
    		
    		间隔位置 = InStr(x, 截取内容后4, 间隔)
    		截取内容前5 = Left(截取内容后4, 间隔位置-1)
    		SayString "信号时间：" & 截取内容前5
    		KeyPress "Enter", 1
    		
    	End If
    	
		
		MoveTo 682, 13
		LeftClick 1
    	TracePrint "数据已更新"
    	Form1.ListBox7.List = eosCheck
    	Form1.ListBox3.List = Now() & "   EOS数据已更新"
    	//TracePrint Check
    	//SayString Check
    	//KeyPress "Enter", 1
    	Exit Do

	Else 
		//SayString Check
    	//KeyPress "Enter", 1
    	MoveTo 682, 13
		LeftClick 1
    	TracePrint "数据未更新"
    	Form1.ListBox7.List = eosCheck
    	Form1.ListBox3.List = Now() & "   EOS数据未更新"
    	Exit Do
    	//TracePrint Check
	End If
	
Loop


Delay 60000
Loop
