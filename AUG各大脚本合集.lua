local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

local function GetPlayerStartCount()
    local playerName = player.Name
    local count = 0
    
    if not isfolder("AUG_Script_Data") then
        makefolder("AUG_Script_Data")
    end
    
    local filePath = "AUG_Script_Data/" .. playerName .. "_count.txt"
    if isfile(filePath) then
        count = tonumber(readfile(filePath)) or 0
    end
    
    count = count + 1
    writefile(filePath, tostring(count))
    
    return count
end

local startCount = GetPlayerStartCount()

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

-- ===== 新增：显示启动信息 =====
game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "AUG脚本合集",
    Text = player.Name .. " 第 " .. startCount .. " 次使用",
    Duration = 5,
})
-- ===== 新增结束 =====

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "AUG脚本合集"; Text ="载入中"; Duration = 2; })wait("3")

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "AUG各大脚本"; Text ="没有师傅"; Duration = 2; })wait("2")

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "傻逼靓坤"; Text ="无聊的时候做的"; Duration = 2; })wait("2")

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "AUG脚本"; Text ="载入成功"; Duration = 3; })

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("现在时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/whenheer/iuop/refs/heads/main/Protected_7843953596944453.lua"))();		
local win = ui:new("AUG各大脚本合集🤯")

local UITab1 = win:Tab("信息",'16060333448')

local about = UITab1:section("作者信息",false)

about:Label("AUG各大脚本")
about:Label("作者：洛天依")
about:Label("无师傅")
about:Label("鳖老仔👍")

local about = UITab1:section("你的信息",false)

about:Label("你的账号:"..player.AccountAge.."世纪")
about:Label("你的注入器:"..identifyexecutor())
about:Label("你的用户名:"..game.Players.LocalPlayer.Character.Name)
about:Label("服务器名称:"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)

local UITab2 = win:Tab("脚本合集",'16060333448')

local about = UITab2:section("脚本合集",true)

about:Button("冷脚本",function()
getgenv().Leng="冷脚本QQ群815883059" loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/lenglenglenglenglenglenglenglenglenglenglengleng-cold-script-LBT-H/refs/heads/main/LENG-cold-script-LBT-H.txt"))()
end)


about:Button("星河脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AWDX-DYVB/test/main/%E6%B2%B3%E6%B5%81%E6%97%A0%E5%AF%86%E9%92%A5.lua"))()
end)

about:Button("静心脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/jxdjbx/gggggghjjnbb/main/jdjdd"))()
end)

about:Button("脚本中心",function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
end)

about:Button("皮脚本",function()
getgenv().XiaoPi="皮脚本QQ群1002100032" loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()
end)

about:Button("鱼脚本",function()
getgenv().Fish = "鱼脚本"loadstring(game:HelpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,115,104,122,46,97,108,47,126,70,105,115,104,83,99,114,105,112,116,78,101,119})end)())))();
 end)

about:Button("神经脚本",function()
loadstring(game:HttpGet("https://github.com/shenjin55/qq-927274889/raw/refs/heads/main/roblox-shen-jin.lua"))()
end)

about:Button("XA HUB",function()
loadstring(game:HttpGet("https://pastebin.com/raw/h8nC0fLb", true))()
end)

about:Button("落叶中星",function()
getgenv().LS="落叶中心" loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/Deciduous-center-LS/main/%E8%90%BD%E5%8F%B6%E4%B8%AD%E5%BF%83%E6%B7%B7%E6%B7%86.txt"))()
end)

about:Button("鬼脚本",function()
ROBLOX = "GHOST_SCRIPT"GS_TEAM = "QQ群858895377"loadstring(game:HttpGet("https://raw.githubusercontent.com/Ghost-Gui-888/Ghost-Script/main/QQ858895377"))()
end)

about:Button("安脚本",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/atoyayaya/ui/main/11451411919')))()
end)

about:Button("小灵脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/flyspeed7/Xiao-Ling-NEO.UI/main/%E2%82%AA%E5%B0%8F%E5%87%8C%E4%B8%AD%E5%BF%83(%E6%96%B0%E7%89%88ui).txt"))("小凌中心")("作者QQ:1211373508")
end)

about:Button("大死妈",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/whenheer/-v4/refs/heads/main/Protected_5320244476072095.lua"))()
end)

about:Button("霖溺中心脚本",function()
loadstring(game:HttpGet("https://shz.al/~LNINIGGD"))()
end)

about:Button("云脚本",function()
loadstring(game:HttpGet("https://github.com/CloudX-ScriptsWane/White-ash-script/raw/main/Beta.lua", true))()
end)

about:Button("xk脚本",function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\66\73\78\106\105\97\111\98\122\120\54\47\66\73\78\106\105\97\111\47\109\97\105\110\47\88\75\46\84\88\84\34\41\41\40\41\10")()
end)

about:Button("bs",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xiao-xin-create/BS1.5/refs/heads/main/BS1.5.lua"))()
end)

about:Button("黑子",function()
loadstring(game:HttpGet("https://pastebin.com/raw/mnMaZwBQ"))()
end)

about:Button("导管",function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
end)
about:Button("苏脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/kukunb/kukulol/refs/heads/main/SUscript.txt"))();
end)


about:Button("七天",function()
loadstring(game:HttpGet("https://github.com/XiaoyeQWQ/state/raw/refs/heads/main/7days-live-free.lua"))()
end)
about:Button("名",function()
getgenv().WuMing="名脚本V2测试版" loadstring(game:HttpGet("https://raw.githubusercontent.com/wumingjiaoben/GongJuBao/refs/heads/main/%E5%90%8D%E8%84%9A%E6%9C%ACV2%E6%B5%8B%E8%AF%95%E7%89%88WuMing.LUA"))()
end)

about:Button("落陨中心",function()
getgenv().Leng="落陨中心QQ群1001493128" loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/LZYC/refs/heads/main/ZCLY.txt"))()
end)

about:Button("剑客高级版",function()
loadstring(request({Url="https://raw.githubusercontent.com/Zer0neK/JianKe/refs/heads/main/VIP"}).Body)()
end)

about:Button("脚本中心",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
end)

about:Button("星河",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AWDX-DYVB/test/main/%E6%B2%B3%E6%B5%81%E6%97%A0%E5%AF%86%E9%92%A5.lua"))()
end)

about:Button("刀刃球英文脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))()
end)

about:Button("青风",function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,116,53,87,75,53,72,48,72})end)())))("青风脚本")
end)

about:Button("sf",function()
SF_V7 = "作者_神罚"SheFa = "QQ群637340150"loadstring(game:HttpGet(('https://raw.githubusercontent.com/WDQi/SF/main/%E7%9C%8B%E4%BD%A0M.txt')))()
end)

about:Button("导管中心",function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
end)

about:Button("剑客v3",function()
jianke_V3 = "作者_初夏"jianke = "剑客QQ群601704430"loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/jianke_V3')))()
end)

about:Button("剑客v2",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/Sword-Guest/main/JKYYDS')))()
end)

about:Button("QB",function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,51,69,49,54,76,51,90,106})end)())))()
end)

about:Button("皇脚本",function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\80\100\84\55\99\65\82\84"))()
end)

about:Button("神光",function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,56,102,50,76,99,113,113,80})end)())))()
end)

about:Button("秋",function()
local SCC_CharPool={[1]= tostring(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,87,83,56,53,55,57,54,48,47,45,47,109,97,105,110,47,37,69,55,37,65,55,37,56,66,37,67,50,37,66,55,37,69,56,37,56,55,37,65,65,37,69,53,37,56,56,37,66,54,37,69,56,37,56,52,37,57,65,37,69,54,37,57,67,37,65,67,37,69,54,37,57,54,37,66,48,37,69,54,37,66,65,37,57,48,37,69,55,37,65,48,37,56,49,46,116,120,116})end)()))}loadstring(game:HttpGet(SCC_CharPool[1]))()
end)

about:Button("剑客doors",function()
jianke_V3 = "作者_初夏"jianke1 = "剑客QQ群347724155"jianke2 = "此脚本为剑客V3门脚本,不是剑客V3整合脚本"loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/Doors')))()
end)

about:Label("下面的脚本卡密是a")

about:Button("xsc",function()
getgenv().XC="作者XC"loadstring(game:HttpGet("https://pastebin.com/raw/PAFzYx0F"))()
end)

about:Label("猫王脚本卡密：猫王")

about:Button("猫王",function()
loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/9281/m%E8%84%9A%E6%9C%AC%E4%BA%8C%E4%BB%A3.txt?sign=JBB6aabVopKLdV2EdLGV0RUN1kDDNLxk7fWCcbZlDkk%3D%3A0"))()
end)