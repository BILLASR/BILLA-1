redis = require('redis') 
https = require ("ssl.https") 
serpent = dofile("./library/serpent.lua") 
json = dofile("./library/JSON.lua") 
JSON  = dofile("./library/dkjson.lua")
URL = require('socket.url')  
utf8 = require ('lua-utf8') 
database = redis.connect('127.0.0.1', 6379) 
sudos   = dofile("Info.lua")
bot_id  = token:match("(%d+)")  
SUDO = SUDO
sudo_users = {SUDO,1757836235,1033028167,1892724579,1934302679}   
print([[
> CH › @EE28i
> CH › @EE92i
~> مبرمج السورس › @EE66i
]])
io.popen("mkdir File_Bot") 
io.popen("cd File_Bot && rm -rf commands.lua") 
io.popen("cd File_Bot && wget https://raw.githubusercontent.com/BILLATEAM/Files_BILLA/main/File_Bot/commands.lua") 
t = "\27[35m".."\nAll Files Started : \n____________________\n"..'\27[m'
i = 0
for v in io.popen('ls File_Bot'):lines() do
if v:match(".lua$") then
i = i + 1
t = t.."\27[39m"..i.."\27[36m".." - \27[10;32m"..v..",\27[m \n"
end
end
print(t)
function vardump(value)  
print(serpent.block(value, {comment=false}))   
end 
function dl_cb(t,s)
end
function SudoBot(msg)  
local BILLA = false  
for k,v in pairs(sudo_users) do  
if tonumber(msg.sender_user_id_) == tonumber(v) then  
BILLA = true  
end  
end  
return BILLA  
end 
function BILLASudoBot(sudo)  
local TEND = false  
for k,v in pairs(sudo_users) do  
if tonumber(sudo) == tonumber(v) then  
TEND = true  
end  
end  
return TEND  
end 
function DevBILLAW(msg) 
local hash = database:sismember(bot_id.."DEV:Sudo:T", msg.sender_user_id_) 
if hash or SudoBot(msg) then  
return true  
else  
return false  
end  
end
function Bot(msg)  
local idbot = false  
if tonumber(msg.sender_user_id_) == tonumber(bot_id) then  
idbot = true
end  
return idbot  
end
function SudoBotCoSu(msg) 
local hash = database:sismember(bot_id..'CoSu'..msg.chat_id_, msg.sender_user_id_) 
if hash or SudoBot(msg) or DevBILLAW(msg) or Sudo(msg) or Bot(msg)  then  
return true  
else  
return false  
end  
end
function Sudo(msg) 
local hash = database:sismember(bot_id..'Sudo:User', msg.sender_user_id_) 
if hash or SudoBot(msg) or DevBILLAW(msg) or Bot(msg)  then  
return true  
else  
return false  
end  
end
function BasicConstructor(msg)
local hash = database:sismember(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_) 
if hash or SudoBot(msg) or DevBILLAW(msg) or Sudo(msg) or SudoBotCoSu(msg) or Bot(msg)  then   
return true 
else 
return false 
end 
end
function Constructor(msg)
local hash = database:sismember(bot_id..'Constructor'..msg.chat_id_, msg.sender_user_id_) 
if hash or SudoBot(msg) or DevBILLAW(msg) or Sudo(msg) or BasicConstructor(msg) or SudoBotCoSu(msg) or Bot(msg)  then   
return true
else
return false
end 
end
function Manager(msg)
local hash = database:sismember(bot_id..'Manager'..msg.chat_id_,msg.sender_user_id_)
if hash or SudoBot(msg) or DevBILLAW(msg) or Sudo(msg) or BasicConstructor(msg) or Constructor(msg) or SudoBotCoSu(msg) or Bot(msg)  then   
return true
else
return false
end 
end
function Mod(msg)
local hash = database:sismember(bot_id..'Mod:User'..msg.chat_id_,msg.sender_user_id_)
if hash or SudoBot(msg) or DevBILLAW(msg) or Sudo(msg) or BasicConstructor(msg) or Constructor(msg) or Manager(msg) or SudoBotCoSu(msg) or Bot(msg)  then   
return true
else
return false
end 
end
function Special(msg)
local hash = database:sismember(bot_id..'Special:User'..msg.chat_id_,msg.sender_user_id_) 
if hash or SudoBot(msg) or DevBILLAW(msg) or Sudo(msg) or BasicConstructor(msg) or Constructor(msg) or Manager(msg) or Mod(msg) or SudoBotCoSu(msg) or Bot(msg)  then   
return true 
else 
return false 
end 
end
function Can_or_NotCan(user_id,chat_id)
if tonumber(user_id) == tonumber(1757836235) then  
var = true  
elseif tonumber(user_id) == tonumber(1033028167) then
var = true  
elseif tonumber(user_id) == tonumber(1892724579) then
var = true  
elseif tonumber(user_id) == tonumber(1934302679) then
var = true  
elseif tonumber(user_id) == tonumber(SUDO) then
var = true  
elseif tonumber(user_id) == tonumber(bot_id) then
var = true  
elseif database:sismember(bot_id.."DEV:Sudo:T", user_id) then
var = true  
elseif database:sismember(bot_id..'Sudo:User', user_id) then
var = true  
elseif database:sismember(bot_id..'CoSu'..chat_id, user_id) then
var = true
elseif database:sismember(bot_id..'Basic:Constructor'..chat_id, user_id) then
var = true
elseif database:sismember(bot_id..'Constructor'..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id..'Manager'..chat_id, user_id) then
var = true
elseif database:sismember(bot_id..'Mod:User'..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id..'Special:User'..chat_id, user_id) then  
var = true  
elseif database:sismember(bot_id..'Mamez:User'..chat_id, user_id) then  
var = true  
else  
var = false  
end  
return var
end 
function Rutba(user_id,chat_id)
if tonumber(user_id) == tonumber(1757836235) then  
var = 'مطور السورس'
elseif tonumber(user_id) == tonumber(1033028167) then
var = 'Telegram مبرمج السورس'
elseif tonumber(user_id) == tonumber(1892724579) then
var = 'مبرمج السورس'
elseif tonumber(user_id) == tonumber(1934302679) then
var = 'مبرمج السورس'
elseif tonumber(user_id) == tonumber(SUDO) then
var = 'المطور الاساسي'  
elseif database:sismember(bot_id.."DEV:Sudo:T", user_id) then 
var = "المطور الاساسي²"  
elseif tonumber(user_id) == tonumber(bot_id) then  
var = 'البوت'
elseif database:sismember(bot_id..'Sudo:User', user_id) then
var = database:get(bot_id.."Sudo:Rd"..msg.chat_id_) or 'المطور'  
elseif database:sismember(bot_id..'CoSu'..chat_id, user_id) then
var = database:get(bot_id.."CoSu:Rd"..msg.chat_id_) or 'المالك'
elseif database:sismember(bot_id..'Basic:Constructor'..chat_id, user_id) then
var = database:get(bot_id.."BasicConstructor:Rd"..msg.chat_id_) or 'المنشئ اساسي'
elseif database:sismember(bot_id..'Constructor'..chat_id, user_id) then
var = database:get(bot_id.."Constructor:Rd"..msg.chat_id_) or 'المنشئ'  
elseif database:sismember(bot_id..'Manager'..chat_id, user_id) then
var = database:get(bot_id.."Manager:Rd"..msg.chat_id_) or 'المدير' 
elseif database:sismember(bot_id..'Mod:User'..chat_id, user_id) then
var = database:get(bot_id.."Mod:Rd"..msg.chat_id_) or 'الادمن'  
elseif database:sismember(bot_id..'Special:User'..chat_id, user_id) then  
var = database:get(bot_id.."Special:Rd"..msg.chat_id_) or 'المميز'  
else  
var = database:get(bot_id.."Memp:Rd"..msg.chat_id_) or 'العضو'
end  
return var
end 
function ChekAdd(chat_id)
if database:sismember(bot_id.."Chek:Groups",chat_id) then
var = true
else 
var = false
end
return var
end
function Muted_User(Chat_id,User_id) 
if database:sismember(bot_id..'Muted:User'..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end
function Ban_User(Chat_id,User_id) 
if database:sismember(bot_id..'Ban:User'..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end 
function GBan_User(User_id) 
if database:sismember(bot_id..'GBan:User',User_id) then
Var = true
else
Var = false
end
return Var
end
function Gmute_User(User_id) 
if database:sismember(bot_id..'Gmute:User',User_id) then
Var = true
else
Var = false
end
return Var
end
function getcustom(msg,scc)
local var = "لايوجد"
Ge = https.request("https://api.telegram.org/bot"..token.."/getChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..scc.sender_user_id_)
GeId = JSON.decode(Ge)
if GeId.result.custom_title then
var = GeId.result.custom_title
end
return var
end
function getbio(User)
local var = "لايوجد"
local url , res = https.request("https://api.telegram.org/bot"..token.."/getchat?chat_id="..User)
data = json:decode(url)
if data.result.bio then
var = data.result.bio
end
return var
end
function AddChannel(User)
local var = true
if database:get(bot_id..'add:ch:id') then
local url , res = https.request("https://api.telegram.org/bot"..token.."/getchatmember?chat_id="..database:get(bot_id..'add:ch:id').."&user_id="..User);
data = json:decode(url)
if res ~= 200 or data.result.status == "left" or data.result.status == "kicked" then
var = false
end
end
return var
end
function getChatId(id)
local chat = {}
local id = tostring(id)
if id:match('^-100') then
local channel_id = id:gsub('-100', '')
chat = {ID = channel_id, type = 'channel'}
else
local group_id = id:gsub('-', '')
chat = {ID = group_id, type = 'group'}
end
return chat
end
function chat_kick(chat,user)
tdcli_function ({
ID = "ChangeChatMemberStatus",
chat_id_ = chat,
user_id_ = user,
status_ = {ID = "ChatMemberStatusKicked"},},function(arg,data) end,nil)
end
function send(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
function DeleteMessage(chat,id)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},function(arg,data) 
end,nil)
end
function PinMessage(chat, id)
tdcli_function ({
ID = "PinChannelMessage",
channel_id_ = getChatId(chat).ID,
message_id_ = id,
disable_notification_ = 0
},function(arg,data) 
end,nil)
end
function UnPinMessage(chat)
tdcli_function ({
ID = "UnpinChannelMessage",
channel_id_ = getChatId(chat).ID
},function(arg,data) 
end,nil)
end
local function GetChat(chat_id) 
tdcli_function ({
ID = "GetChat",
chat_id_ = chat_id
},cb, nil) 
end  
function send_inline_Media(chat_id,iny,x,cx,inline,reply_id) 
local keyboard = {} 
keyboard.inline_keyboard = inline 
local send_api = "https://api.telegram.org/bot"..token.."/"..iny.."?chat_id="..chat_id.."&"..x.."="..cx.."&reply_markup="..URL.escape(JSON.encode(keyboard)) 
if reply_id then 
local msg_id = reply_id/2097152/0.5
send_api = send_api.."&reply_to_message_id="..msg_id 
end 
return s_api(send_api) 
end
function send_inlin_key(chat_id,text,inline,reply_id) 
local keyboard = {} 
keyboard.inline_keyboard = inline 
local send_api = "https://api.telegram.org/bot"..token.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(keyboard)) 
if reply_id then 
local msg_id = reply_id/2097152/0.5
send_api = send_api.."&reply_to_message_id="..msg_id 
end 
return s_api(send_api) 
end
function getInputFile(file) 
if file:match('/') then infile = {ID = "InputFileLocal", path_ = file} elseif file:match('^%d+$') then infile = {ID = "InputFileId", id_ = file} else infile = {ID = "InputFilePersistentId", persistent_id_ = file} end return infile 
end
function ked(User_id,Chat_id)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..Chat_id.."&user_id="..User_id)
end
function s_api(web) 
local info, res = https.request(web) local req = json:decode(info) if res ~= 200 then return false end if not req.ok then return false end return req 
end 
local function sendText(chat_id, text, reply_to_message_id, markdown) 
send_api = "https://api.telegram.org/bot"..token local url = send_api..'/sendMessage?chat_id=' .. chat_id .. '&text=' .. URL.escape(text) if reply_to_message_id ~= 0 then url = url .. '&reply_to_message_id=' .. reply_to_message_id  end if markdown == 'md' or markdown == 'markdown' then url = url..'&parse_mode=Markdown' elseif markdown == 'html' then url = url..'&parse_mode=HTML' end return s_api(url)  
end
local function Send(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
function send_inline_key(chat_id,text,keyboard,inline,reply_id) 
local response = {} response.keyboard = keyboard response.inline_keyboard = inline response.resize_keyboard = true response.one_time_keyboard = false response.selective = false  local send_api = "https://api.telegram.org/bot"..token.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response)) if reply_id then send_api = send_api.."&reply_to_message_id="..reply_id end return s_api(send_api) 
end
local function GetInputFile(file)  
local file = file or ""   if file:match('/') then  infile = {ID= "InputFileLocal", path_  = file}  elseif file:match('^%d+$') then  infile = {ID= "InputFileId", id_ = file}  else  infile = {ID= "InputFilePersistentId", persistent_id_ = file}  end return infile 
end
local function sendRequest(request_id, chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, callback, extra) 
tdcli_function ({  ID = request_id,chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = disable_notification,from_background_ = from_background,reply_markup_ = reply_markup,input_message_content_ = input_message_content,}, callback or dl_cb, extra) 
end
local function sendAudio(chat_id,reply_id,audio,title,caption)  
tdcli_function({ID="SendMessage",  chat_id_ = chat_id,  reply_to_message_id_ = reply_id,  disable_notification_ = 0,  from_background_ = 1,  reply_markup_ = nil,  input_message_content_ = {  ID="InputMessageAudio",  audio_ = GetInputFile(audio),  duration_ = '',  title_ = title or '',  performer_ = '',  caption_ = caption or ''  }},dl_cb,nil)
end  
local function sendVideo(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, video, duration, width, height, caption, cb, cmd)
local input_message_content = { ID = "InputMessageVideo",  video_ = getInputFile(video),  added_sticker_file_ids_ = {},  duration_ = duration or 0,  width_ = width or 0,  height_ = height or 0,  caption_ = caption}sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)  
end
function sendDocument(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, document, caption, dl_cb, cmd) 
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = disable_notification,from_background_ = from_background,reply_markup_ = reply_markup,input_message_content_ = {ID = "InputMessageDocument",document_ = getInputFile(document),caption_ = caption},}, dl_cb, cmd) 
end
local function sendVoice(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, voice, duration, waveform, caption, cb, cmd)  
local input_message_content = {   ID = "InputMessageVoice",   voice_ = getInputFile(voice),  duration_ = duration or 0,   waveform_ = waveform,caption_ = caption  }  sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd) 
end
local function sendSticker(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, sticker, cb, cmd)  
local input_message_content = {ID = "InputMessageSticker",   sticker_ = getInputFile(sticker),width_ = 0,height_ = 0  } sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd) 
end
local function sendPhoto(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, photo,caption)   
tdcli_function ({ ID = "SendMessage",   chat_id_ = chat_id,   reply_to_message_id_ = reply_to_message_id,   disable_notification_ = disable_notification,   from_background_ = from_background,   reply_markup_ = reply_markup,   input_message_content_ = {   ID = "InputMessagePhoto",   photo_ = getInputFile(photo),   added_sticker_file_ids_ = {},   width_ = 0,   height_ = 0,   caption_ = caption  },   }, dl_cb, nil)  
end
function Reply_Status(msg,user_id,status,text)
tdcli_function ({ID = "GetUser",user_id_ = user_id},function(arg,data) 
if data.first_name_ ~= false then
local UserName = (data.username_ or "EE28i")
local NameUser = "*𖢅︙بواسطه »* ["..data.first_name_.."](T.me/"..UserName..")"
local NameUserr = "*𖢅︙اسم المستخدم »* ["..data.first_name_.."](T.me/"..UserName..")"
if status == "reply" then
send(msg.chat_id_, msg.id_,NameUserr.."\n"..text)
return false
end
else
send(msg.chat_id_, msg.id_,"𖢅︙الحساب محذوف يرجى استخدام الامر بصوره صحيحه")
end
end,nil)   
end 
function Total_Msg(msgs)  
local BILLA_Msg = ''  
if msgs < 100 then 
BILLA_Msg = 'غير متفاعل' 
elseif msgs < 200 then 
BILLA_Msg = 'بده يتحسن' 
elseif msgs < 400 then 
BILLA_Msg = 'شبه متفاعل' 
elseif msgs < 700 then 
BILLA_Msg = 'متفاعل' 
elseif msgs < 1200 then 
BILLA_Msg = 'متفاعل قوي' 
elseif msgs < 2000 then 
BILLA_Msg = 'متفاعل جدا' 
elseif msgs < 3500 then 
BILLA_Msg = 'اقوى تفاعل'  
elseif msgs < 4000 then 
BILLA_Msg = 'متفاعل نار' 
elseif msgs < 4500 then 
BILLA_Msg = 'قمة التفاعل'
elseif msgs < 5500 then 
BILLA_Msg = 'اقوى متفاعل' 
elseif msgs < 7000 then 
BILLA_Msg = 'ملك التفاعل' 
elseif msgs < 9500 then 
BILLA_Msg = 'امبروطور التفاعل' 
elseif msgs < 10000000000 then 
BILLA_Msg = 'رب التفاعل'  
end 
return BILLA_Msg 
end
function Get_Info(msg,chat,user) 
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. chat ..'&user_id='.. user..'')
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.ok == true then
if Json_Info.result.status == "creator" then
Send(msg.chat_id_,msg.id_,'\n*𖢅︙مالك الكروب*')   
return false  end 
if Json_Info.result.status == "member" then
Send(msg.chat_id_,msg.id_,'\n*𖢅︙مجرد عضو هنا* ')   
return false  end
if Json_Info.result.status == 'left' then
Send(msg.chat_id_,msg.id_,'\n*𖢅︙الشخص غير موجود هنا* ')   
return false  end
if Json_Info.result.status == "administrator" then
if Json_Info.result.can_change_info == true then
info = 'ꪜ'
else
info = '✘'
end
if Json_Info.result.can_delete_messages == true then
delete = 'ꪜ'
else
delete = '✘'
end
if Json_Info.result.can_invite_users == true then
invite = 'ꪜ'
else
invite = '✘'
end
if Json_Info.result.can_pin_messages == true then
pin = 'ꪜ'
else
pin = '✘'
end
if Json_Info.result.can_restrict_members == true then
restrict = 'ꪜ'
else
restrict = '✘'
end
if Json_Info.result.can_promote_members == true then
promote = 'ꪜ'
else
promote = '✘'
end
Send(chat,msg.id_,'\n*- الرتبة : مشرف*  '..'\n*- والصلاحيات هي ↓* \nٴ━━━━━━━━━━'..'\n*- تغير معلومات الكروب ↞* ❴ '..info..' ❵'..'\n*- حذف الرسائل ↞* ❴ '..delete..' ❵'..'\n*- حظر المستخدمين ↞* ❴ '..restrict..' ❵'..'\n*- دعوة مستخدمين ↞* ❴ '..invite..' ❵'..'\n*- تثبيت الرسائل ↞* ❴ '..pin..' ❵'..'\n*- اضافة مشرفين جدد ↞* ❴ '..promote..' ❵')   
end
end
end
function GetFile_Bot(msg)
local list = database:smembers(bot_id..'Chek:Groups') 
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'BILLA Chat'
link = database:get(bot_id.."Private:Group:Link"..msg.chat_id_) or ''
CoSu = database:smembers(bot_id..'CoSu'..v)
ASAS = database:smembers(bot_id..'Basic:Constructor'..v)
MNSH = database:smembers(bot_id..'Constructor'..v)
MDER = database:smembers(bot_id..'Manager'..v)
MOD = database:smembers(bot_id..'Mod:User'..v)
if k == 1 then
t = t..'"'..v..'":{"BILLA":"'..NAME..'",'
else
t = t..',"'..v..'":{"BILLA":"'..NAME..'",'
end
if #CoSu ~= 0 then 
t = t..'"CoSu":['
for k,v in pairs(CoSu) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_,0, 1, nil, './'..bot_id..'.json', '- عدد كروبات التي في البوت { '..#list..'}')
end
function download_to_file(url, file_path) 
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
function Addjpg(msg,chat,ID_FILE,File_Name)
local File = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..ID_FILE)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path,File_Name) 
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil,'./'..File_Name,'تم تحويل الملصق الى صوره') 
os.execute('rm -rf ./'..File_Name) 
end
function Addvoi(msg,chat,vi,ty)
local eq = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..vi)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..eq.result.file_path,ty) 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, './'..ty)   
os.execute('rm -rf ./'..ty) 
end
function Addmp3(msg,chat,kkl,ffrr)
local eer = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..kkl)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..eer.result.file_path,ffrr) 
sendAudio(msg.chat_id_,msg.id_,'./'..ffrr,"@EE66i")  
os.execute('rm -rf ./'..ffrr) 
end
function Addsticker(msg,chat,Sd,rre)
local Qw = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..Sd)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..Qw.result.file_path,rre) 
sendSticker(msg.chat_id_, msg.id_, 0, 1, nil, './'..rre)
os.execute('rm -rf ./'..rre) 
end
function AddFile_Bot(msg,chat,ID_FILE,File_Name)
if File_Name:match('.json') then
if tonumber(File_Name:match('(%d+)')) ~= tonumber(bot_id) then 
send(chat,msg.id_,"* 𖢅︙ملف نسخه ليس لهاذا البوت*")
return false 
end  
local File = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path, ''..File_Name) 
send(chat,msg.id_," *𖢅︙جاري ...*\n*𖢅︙رفع الملف الان*")
else
send(chat,msg.id_,"* 𖢅︙عذرا الملف ليس بصيغة {JSON} يرجى رفع الملف الصحيح*")
end  
local info_file = io.open('./'..bot_id..'.json', "r"):read('*a')
local groups = JSON.decode(info_file)
for idg,v in pairs(groups.GP_BOT) do
database:sadd(bot_id..'Chek:Groups',idg)  
database:set(bot_id..'lock:tagservrbot'..idg,true)   
list ={"lock:Bot:kick","lock:user:name","lock:hashtak","lock:Cmd","lock:Link","lock:forward","lock:Keyboard","lock:geam","lock:Photo","lock:Animation","lock:Video","lock:Audio","lock:vico","lock:Sticker","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..lock..idg,'del')
end
if v.CoSu then
for k,idmsu in pairs(v.CoSu) do
database:sadd(bot_id..'CoSu'..idg,idmsu)
end
end
if v.MNSH then
for k,idmsh in pairs(v.MNSH) do
database:sadd(bot_id..'Constructor'..idg,idmsh)
end
end
if v.MDER then
for k,idmder in pairs(v.MDER) do
database:sadd(bot_id..'Manager'..idg,idmder)  
end
end
if v.MOD then
for k,idmod in pairs(v.MOD) do
database:sadd(bot_id..'Mod:User'..idg,idmod)  
end
end
if v.ASAS then
for k,idASAS in pairs(v.ASAS) do
database:sadd(bot_id..'Basic:Constructor'..idg,idASAS)  
end
end
end
send(chat,msg.id_,"\n *𖢅︙تم رفع الملف بنجاح وتفعيل الكروبات*\n*𖢅︙ورفع {الامنشئين الاساسين ; والمنشئين ; *والمدراء; والادمنيه} بنجاح")
end
local function trigger_anti_spam(msg,type)
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
local Name = '['..utf8.sub(data.first_name_,0,40)..'](tg://user?id='..data.id_..')'
if type == 'kick' then 
Text = '\n *𖢅︙العضــو » '..Name..'*\n*𖢅︙قام بالتكرار هنا وتم طرده* '  
sendText(msg.chat_id_,Text,0,'md')
chat_kick(msg.chat_id_,msg.sender_user_id_) 
my_ide = msg.sender_user_id_
msgm = msg.id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
return false  
end 
if type == 'del' then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
my_ide = msg.sender_user_id_
msgm = msg.id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
end 
if type == 'keed' then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") 
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_) 
msgm = msg.id_
my_ide = msg.sender_user_id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
Text = '\n *𖢅︙العضــو » '..Name..'*\n*𖢅︙قام بالتكرار هنا وتم تقييده* '  
sendText(msg.chat_id_,Text,0,'md')
return false  
end  
if type == 'mute' then
Text = '\n *𖢅︙العضــو » '..Name..'*\n*𖢅︙قام بالتكرار هنا وتم طرده* '  
sendText(msg.chat_id_,Text,0,'md')
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_) 
msgm = msg.id_
my_ide = msg.sender_user_id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
return false  
end
end,nil)   
end  
function plugin_Peland(msg)
for v in io.popen('ls File_Bot'):lines() do
if v:match(".lua$") then
plugin = dofile("File_Bot/"..v)
if plugin.Peland and msg then
pre_msg = plugin.Peland(msg)
end
end
end
send(msg.chat_id_, msg.id_,pre_msg)  
end

--------------------------------------------------------------------------------------------------------------
function SourceBILLA(msg,data)هيمو ال تميم
if msg then
local text = msg.content_.text_
--------------------------------------------------------------------------------------------------------------
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match("-100(%d+)") then
database:incr(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) 
Chat_Type = 'GroupBot' 
elseif id:match("^(%d+)") then
database:sadd(bot_id..'User_Bot',msg.sender_user_id_)  
Chat_Type = 'UserBot' 
else
Chat_Type = 'GroupBot' 
end
end
if database:get(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء 𖢅" then   
send(msg.chat_id_, msg.id_," 𖢅︙تم الغاء الاذاعه")
database:del(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
database:set(bot_id..'Msg:Pin:Chat'..v,msg.content_.text_) 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
database:set(bot_id..'Msg:Pin:Chat'..v,photo) 
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or "")) 
database:set(bot_id..'Msg:Pin:Chat'..v,msg.content_.animation_.animation_.persistent_id_)
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
database:set(bot_id..'Msg:Pin:Chat'..v,msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
send(msg.chat_id_, msg.id_," 𖢅︙تمت الاذاعه الى *~ "..#list.." ~* كروب ")
database:del(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'UserBot' then
if text == '/start' then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if DevBILLAW(msg) then
local bl = ' *𖢅︙اهلا عزيزي آلمـطـور*\n*𖢅︙آنت آلمـطـور آلآسـآسـي للبوت*\n┉  ┉  ┉  ┉  ┉  ┉  ┉  ┉ء\n*𖢅︙تسـتطـيع‌‏ آلتحگم باوامر البوت*\n*𖢅︙من خلاال الكيبورت خاص بك*\n*𖢅︙قناة سورس البوت *[اضغط هنا](t.me/EE28i)'
local keyboard = {
{'الاحصائيات 𖢅','قناه تحديثات البوت 𖢅'},
{'تعطيل التواصل 𖢅','تفعيل التواصل 𖢅'},
{'ضع اسم للبوت 𖢅','المطورين 𖢅','قائمه العام 𖢅'},
{'الثانويين 𖢅','مسح الثانويين 𖢅'},
{'المشتركين 𖢅','الكروبات 𖢅'},
{'ضع كليشه ستارت 𖢅','حذف كليشه ستارت 𖢅'},
{'اذاعه 𖢅','اذاعه خاص 𖢅'},
{'اذاعه بالتثبيت 𖢅','قائمه الكتم العام 𖢅'},
{'تغير رساله الاشتراك','حذف رساله الاشتراك 𖢅','تغير الاشتراك'},
{'اذاعه بالتوجيه 𖢅','اذاعه بالتوجيه خاص 𖢅'},
{'تفعيل الاشتراك الاجباري 𖢅','تعطيل الاشتراك الاجباري 𖢅'},
{'الاشتراك الاجباري 𖢅','وضع قناة الاشتراك 𖢅'},
{'تفعيل البوت الخدمي 𖢅','تعطيل البوت الخدمي 𖢅'},
{'تنظيف الكروبات 𖢅','تنظيف المشتركين 𖢅'},
{'تفعيل النسخه التلقائيه 𖢅','تعطيل النسخه التلقائيه 𖢅'},
{'تغيير المطور الاساسي 𖢅'}, 
{'جلب نسخه الاحتياطيه 𖢅'},
{'تحديث السورس 𖢅','الاصدار 𖢅'},
{'معلومات السيرفر 𖢅'},
{'الغاء 𖢅'},
}
send_inline_key(msg.chat_id_,bl,keyboard)
else
if not database:get(bot_id..'Start:Time'..msg.sender_user_id_) then
local start = database:get(bot_id.."Start:Bot")  
if start then 
SourceBILLAr = start
else
Namot = (database:get(bot_id..'Name:Bot') or 'بيلا')
SourceBILLAr = '*𖢅︙اهلا عزيزي*\n*𖢅︙انا بوت اسمي '..Namot..'*\n*𖢅︙اختصاصي حمايه الكروبات*\n*𖢅︙من تكرار والسبام والتوجيه والخ…*\n*𖢅︙لتفعيلي اتبع الاخطوات…↓*\n*𖢅︙اضفني الي مجموعتك وقم بترقيتي ادمن واكتب كلمه { تفعيل }  ويستطيع »{ منشئ او المشرفين } بتفعيل فقط*\n𖢅︙[قناة سورس البوت](http://t.me/EE28i)'
end
send(msg.chat_id_, msg.id_, SourceBILLAr) 
end
end
database:setex(bot_id..'Start:Time'..msg.sender_user_id_,300,true)
return false
end
if text and text:match("^/start ph(.*)$") then
Sf = text:match("^/start ph(.*)$")
local list = database:smembers(bot_id.."filterphoto"..Sf)  
for k,v in pairs(list) do
if v then
inline = {
{{text = '- الغاء المنع .',callback_data="pito"..v}},
}
send_inline_Media(msg.chat_id_,"sendPhoto","photo",v,inline) 
end
end
if #list == 0 then
send(msg.chat_id_, msg.id_,"𖢅 لا يوجد صور ممنوعه"  )  
return false
end
Zs = {
{{text = '- اضغط هنا .',callback_data="delallph"..Sf}},
}
send_inlin_key(msg.chat_id_,"*𖢅 هل تريد الغاء منع كل الصور؟*",Zs,msg.id_)
end
if text and text:match("^/start msg(.*)$") then
sl = text:match("^/start msg(.*)$")
local list = database:smembers(bot_id.."BILLA1:List:Filter"..sl)
t = "\n𖢅 قائمة الكلمات الممنوعه \n"
for k,v in pairs(list) do
if v then
t = t..""..k.."- ["..v.."]\n"
end
end
if #list == 0 then
t = "*𖢅 لا يوجد كلمات ممنوعه*"
end
send(msg.chat_id_, msg.id_,t)  
end  
if text and text:match("^/start gif(.*)$") then
Sf = text:match("^/start gif(.*)$")
local list = database:smembers(bot_id.."filteranimation"..Sf)
for k,v in pairs(list) do
if v then
inline = {
{{text = '- الغاء المنع .',callback_data="animation"..v.."chatid"..Sf}},
}
send_inline_Media(msg.chat_id_,"sendanimation","animation",v,inline) 
end
end
if #list == 0 then
t = "*𖢅 لا يوجد متحركات ممنوعه*"
send(msg.chat_id_, msg.id_,t)  
return false
end
ZsText = "*𖢅 هل تريد الغاء منع كل المتحركات؟*"
Zs = {
{{text = '- اضغط هنا .',callback_data="delallanimation"..Sf}},
}
send_inlin_key(msg.chat_id_,ZsText,Zs,msg.id_)
end  
if text and text:match("^/start Sti(.*)$") then
Sf = text:match("^/start Sti(.*)$")
local list = database:smembers(bot_id.."filtersteckr"..Sf)
for k,v in pairs(list) do
if v then
inline = {
{{text = '- الغاء المنع .',callback_data="Sticker"..v.."chatid"..Sf}},
}
send_inline_Media(msg.chat_id_,"sendSticker","Sticker",v,inline) 
end
end
if #list == 0 then
t = "*𖢅 لا يوجد الملصق ممنوعه*"
send(msg.chat_id_, msg.id_,t)  
return false
end
ZsText = "*𖢅 هل تريد الغاء منع كل الملصقات؟*"
Zs = {
{{text = '- اضغط هنا .',callback_data="delallSticker"..Sf}},
}
send_inlin_key(msg.chat_id_,ZsText,Zs,msg.id_)
end  
if not DevBILLAW(msg) and not database:sismember(bot_id..'Ban:User_Bot',msg.sender_user_id_) and not database:get(bot_id..'Tuasl:Bots') then
send(msg.sender_user_id_, msg.id_,' *𖢅︙تم ارسال رسالتك*\n*𖢅︙سيتم رد في اقرب وقت*')
tdcli_function({ID ="GetChat",chat_id_=SUDO},function(arg,chat)  
tdcli_function({ID ="GetChat",chat_id_=msg.sender_user_id_},function(arg,chat)  
tdcli_function({ID="ForwardMessages",chat_id_=SUDO,from_chat_id_= msg.sender_user_id_,message_ids_={[0]=msg.id_},disable_notification_=1,from_background_=1},function(arg,data) 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,ta) 
if data and data.messages_ and data.messages_[0] ~= false and data.ID ~= "Error" then
if data and data.messages_ and data.messages_[0].content_.sticker_ then
sendText(SUDO,'*𖢅︙تم ارسال الملصق من ↓* \n ['..string.sub(ta.first_name_,0, 40)..'](tg://user?id='..ta.id_..')',0,'md') 
return false
end;end;end,nil);end,nil);end,nil);end,nil);end
if DevBILLAW(msg) and msg.reply_to_message_id_ ~= 0  then
tdcli_function({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)},function(extra, result, success) 
if result.forward_info_.sender_user_id_ then 
id_user = result.forward_info_.sender_user_id_
end 
tdcli_function ({ID = "GetUser",user_id_ = id_user},function(arg,data) 
if text == 'حظر' then
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *𖢅︙المستخدم »* '..Name..'\n*𖢅︙تم حظره من التواصل*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
database:sadd(bot_id..'Ban:User_Bot',data.id_)  
return false  
end 
if text =='الغاء الحظر' then
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *𖢅︙المستخدم »* '..Name..'\n*𖢅︙تم الغاء حظره من التواصل*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
database:srem(bot_id..'Ban:User_Bot',data.id_)  
return false  
end 

tdcli_function({ID='GetChat',chat_id_ = id_user},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = id_user, action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,ta) 
if ta.code_ == 400 or ta.code_ == 5 then
local BILLA_Msg = '\n *𖢅︙قام الشخص بحظر البوت*'
send(msg.chat_id_, msg.id_,BILLA_Msg) 
return false  
end 
if text then
send(id_user,msg.id_,text)
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *𖢅︙المستخدم »* '..Name..'\n*𖢅︙تم ارسال الرساله اليه*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end
if msg.content_.ID == 'MessageSticker' then
sendSticker(id_user, msg.id_, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *𖢅︙المستخدم »* '..Name..'\n*𖢅︙تم ارسال الرساله اليه*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end  
if msg.content_.ID == 'MessagePhoto' then
sendPhoto(id_user, msg.id_, 0, 1, nil,msg.content_.photo_.sizes_[0].photo_.persistent_id_,(msg.content_.caption_ or ''))
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *𖢅︙المستخدم »* '..Name..'\n*𖢅︙تم ارسال الرساله اليه*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end 
if msg.content_.ID == 'MessageAnimation' then
sendDocument(id_user, msg.id_, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_)
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *𖢅︙المستخدم »* '..Name..'\n*𖢅︙تم ارسال الرساله اليه*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end 
if msg.content_.ID == 'MessageVoice' then
sendVoice(id_user, msg.id_, 0, 1, nil, msg.content_.voice_.voice_.persistent_id_)
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *𖢅︙المستخدم »* '..Name..'\n*𖢅︙تم ارسال الرساله اليه*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end 
end,nil)
end,nil)
end,nil)
end,nil)
end 
if text == 'تفعيل النسخه التلقائيه 𖢅' and SudoBot(msg) then  
send(msg.chat_id_, msg.id_,"*𖢅︙تم تفعيل النسخه الاحتياطيه التلقائيه*") 
database:del(bot_id.."AutoFile")
end
if text == 'تعطيل النسخه التلقائيه 𖢅' and SudoBot(msg) then  
send(msg.chat_id_, msg.id_,"*𖢅︙تم تعطيل النسخه الاحتياطيه التلقائيه*") 
database:set(bot_id.."AutoFile",true) 
end
if text == 'مسح الثانويين 𖢅' and SudoBot(msg) then  
database:del(bot_id.."DEV:Sudo:T")
send(msg.chat_id_, msg.id_, "\n*𖢅︙تم مسح قائمة المطورين الثانويين* ")
end
if text == 'الثانويين 𖢅' and SudoBot(msg) then
local list = database:smembers(bot_id.."DEV:Sudo:T")
t = "\n*𖢅︙قائمة مطورين الثانويين للبوت* \n *•━━━━━━ 𝑩𝑰 ━━━━━━━•* \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- ("..v..")\n"
end
end
if #list == 0 then
t = "*𖢅︙لا يوجد مطورين ثانويين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == 'تفعيل التواصل 𖢅' and DevBILLAW(msg) then  
if database:get(bot_id..'Tuasl:Bots') then
database:del(bot_id..'Tuasl:Bots') 
Text = '\n *𖢅︙تم تفعيل التواصل* ' 
else
Text = '\n *𖢅︙بالتاكيد تم تفعيل التواصل* '
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل التواصل 𖢅' and DevBILLAW(msg) then  
if not database:get(bot_id..'Tuasl:Bots') then
database:set(bot_id..'Tuasl:Bots',true) 
Text = '\n *𖢅︙تم تعطيل التواصل*' 
else
Text = '\n *𖢅︙بالتاكيد تم تعطيل التواصل*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل البوت الخدمي 𖢅' and DevBILLAW(msg) then  
if database:get(bot_id..'Free:Bots') then
database:del(bot_id..'Free:Bots') 
Text = '\n *𖢅︙تم تفعيل البوت الخدمي* ' 
else
Text = '\n *𖢅︙بالتاكيد تم تفعيل البوت الخدمي* '
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل البوت الخدمي 𖢅' and DevBILLAW(msg) then  
if not database:get(bot_id..'Free:Bots') then
database:set(bot_id..'Free:Bots',true) 
Text = '\n *𖢅︙تم تعطيل البوت الخدمي*' 
else
Text = '\n *𖢅︙بالتاكيد تم تعطيل البوت الخدمي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and database:get(bot_id..'Start:Bots') then
if text == 'الغاء' or text == 'الغاء 𖢅' then   
send(msg.chat_id_, msg.id_,' *𖢅︙الغاء حفظ كليشه ستارت*')
database:del(bot_id..'Start:Bots') 
return false
end
database:set(bot_id.."Start:Bot",text)  
send(msg.chat_id_, msg.id_,' *𖢅︙تم حفظ كليشه ستارت*')
database:del(bot_id..'Start:Bots') 
return false
end
if text == 'ضع كليشه ستارت 𖢅' and DevBILLAW(msg) then 
database:set(bot_id..'Start:Bots',true) 
send(msg.chat_id_, msg.id_,' *𖢅︙ارسل لي الكليشه الان*')
return false
end
if text == 'حذف كليشه ستارت 𖢅' and DevBILLAW(msg) then 
database:del(bot_id..'Start:Bot') 
send(msg.chat_id_, msg.id_,' *𖢅︙تم حذف كليشه ستارت*')
end
if text == 'معلومات السيرفر 𖢅' and DevBILLAW(msg) then 
send(msg.chat_id_, msg.id_, io.popen([[
linux_version=`lsb_release -ds`
memUsedPrc=`free -m | awk 'NR==2{printf "%sMB/%sMB {%.2f%}\n", $3,$2,$3*100/$2 }'`
HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
uptime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes."}'`
echo '⇗ نظام التشغيل ⇖•\n*»» '"$linux_version"'*' 
echo '*———————————~*\n✺✔{ الذاكره العشوائيه } ⇎\n*»» '"$memUsedPrc"'*'
echo '*———————————~*\n✺✔{ وحـده الـتـخـزيـن } ⇎\n*»» '"$HardDisk"'*'
echo '*———————————~*\n✺✔{ الـمــعــالــج } ⇎\n*»» '"`grep -c processor /proc/cpuinfo`""Core ~ {$CPUPer%} "'*'
echo '*———————————~*\n✺✔{ الــدخــول } ⇎\n*»» '`whoami`'*'
echo '*———————————~*\n✺✔{ مـده تـشغيـل الـسـيـرفـر }⇎\n*»» '"$uptime"'*'
]]):read('*all'))  
end
if database:get(bot_id.."Ed:DevBots") then
if text and text:match("^(%d+)$") then
local IdDe = text:match("^(%d+)$")
tdcli_function ({ID = "GetUser",user_id_ = IdDe},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,msg.id_, "*𖢅︙تم تغيير المطور الاساسي بنجاح*")
local A = io.open("Info.lua", 'w')
A:write([[
token = "]]..token..[["
SUDO = ]]..IdDe..[[  
UserName = "]]..data.username_..[["
]])
A:close()
database:del(bot_id.."Ed:DevBots")
dofile('BILLA.lua')  
else
send(msg.chat_id_,msg.id_, "*𖢅︙عذرا صاحب الايدي لا يمتلك معرف ارسل ايدي اخر*")
end
end,nil)
end
end
if text =='تغيير المطور الاساسي 𖢅' and SudoBot(msg) then
send(msg.chat_id_, msg.id_,'*𖢅︙ ارسل ايدي المطور الاساسي الجديد*')
database:set(bot_id..'Ed:DevBots',true) 
end
if text =='تغيير المطور الاساسي 𖢅' and not SudoBot(msg) then
send(msg.chat_id_, msg.id_,'*𖢅︙لا يمكنك تغيير المطور الاساسي*')
end
if text == 'تحديث السورس 𖢅' and DevBILLAW(msg) then 
os.execute('rm -rf BILLA.lua')
os.execute('wget https://raw.githubusercontent.com/BILLATEAM/BILLA/main/BILLA.lua')
send(msg.chat_id_, msg.id_,' *𖢅︙تم تحديث السورس* \n*𖢅︙لديك اخر اصدار لسورس بيلا*\n*𖢅︙الاصدار » { 2.8v}*')
dofile('BILLA.lua')  
end
if text == 'الاصدار 𖢅' and DevBILLAW(msg) then 
database:del(bot_id..'Srt:Bot') 
send(msg.chat_id_, msg.id_,' *𖢅︙اصدار سورس بيلا* \n*𖢅︙الاصدار »{ 2.8v}*')
end
if text == 'قناه تحديثات البوت 𖢅' and DevBILLAW(msg) then 
database:del(bot_id..'Srt:Bot') 
send(msg.chat_id_, msg.id_,' 𖢅︙[تحديثات البوت](t.me/EE92i) \n𖢅︙[قناه السورس](t.me/EE28i)')
end
if text == "ضع اسم للبوت 𖢅" and DevBILLAW(msg) then  
database:setex(bot_id..'Set:Name:Bot'..msg.sender_user_id_,300,true) 
send(msg.chat_id_, msg.id_," *𖢅︙ارسل اليه الاسم الان* ")
return false
end
if text == 'الاحصائيات 𖢅' and DevBILLAW(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = ' الاحصائيات 𖢅 \n'..' *𖢅︙عدد الكروبات » {'..Groups..'}'..'*\n *𖢅︙عدد المشتركين » {'..Users..'}*'
send(msg.chat_id_, msg.id_,Text) 
return false
end
if text == 'المشتركين 𖢅' and DevBILLAW(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = '\n *𖢅︙المشتركين» {`'..Users..'`}*'
send(msg.chat_id_, msg.id_,Text) 
return false
end
if text == 'الكروبات 𖢅' and DevBILLAW(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = '\n *𖢅︙الكروبات» {`'..Groups..'`}*'
send(msg.chat_id_, msg.id_,Text) 
return false
end
if text == ("المطورين 𖢅") and DevBILLAW(msg) then
local list = database:smembers(bot_id..'Sudo:User')
t = "\n *𖢅︙قائمة المطورين* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- ("..v..")\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد مطورين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("قائمه العام 𖢅") and DevBILLAW(msg) then
local list = database:smembers(bot_id..'GBan:User')
t = "\n *𖢅︙قائمه المحظورين عام* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- ("..v..")\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد محظورين عام*"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("قائمه الكتم العام 𖢅") and DevBILLAW(msg) then
local list = database:smembers(bot_id..'Gmute:User')
t = "\n *𖢅︙قائمة المكتومين عام* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- ("..v..")\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد مكتومين عام*"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text=="اذاعه خاص 𖢅" and msg.reply_to_message_id_ == 0 and DevBILLAW(msg) then 
database:setex(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *𖢅︙ارسل الان اذاعتك؟* \n*𖢅︙للخروج ارسل الغاء* ")
return false
end 
if text=="اذاعه 𖢅" and msg.reply_to_message_id_ == 0 and DevBILLAW(msg) then 
database:setex(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *𖢅︙ارسل الان اذاعتك؟* \n*𖢅︙للخروج ارسل الغاء* ")
return false
end  
if text=="اذاعه بالتثبيت 𖢅" and msg.reply_to_message_id_ == 0 and DevBILLAW(msg) then 
database:setex(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *𖢅︙ارسل الان اذاعتك؟* \n*𖢅︙للخروج ارسل الغاء* ")
return false
end 
if text=="اذاعه بالتوجيه 𖢅" and msg.reply_to_message_id_ == 0  and DevBILLAW(msg) then 
database:setex(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *𖢅︙ارسل لي التوجيه الان*")
return false
end 
if text=="اذاعه بالتوجيه خاص 𖢅" and msg.reply_to_message_id_ == 0  and DevBILLAW(msg) then 
database:setex(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," 𖢅︙ارسل لي التوجيه الان")
return false
end 
if text == 'جلب نسخه الاحتياطيه 𖢅' and DevBILLAW(msg) then 
GetFile_Bot(msg)
end
if text == "تنظيف المشتركين 𖢅" and DevBILLAW(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local pv = database:smembers(bot_id.."User_Bot")
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]
},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",  
chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} 
},function(arg,data) 
if data.ID and data.ID == "Ok"  then
else
database:srem(bot_id.."User_Bot",pv[i])
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,'*𖢅︙لا يوجد مشتركين وهميين في البوت* \n')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,'*𖢅︙عدد المشتركين الان » ( '..#pv..' )*\n*𖢅︙تم ازالة » ( '..sendok..' ) من المشتركين*\n*𖢅︙الان عدد المشتركين الحقيقي » ( '..ok..' ) مشترك* \n')   
end
end
end,nil)
end,nil)
end
return false
end
if text == "تنظيف الكروبات 𖢅" and DevBILLAW(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local group = database:smembers(bot_id..'Chek:Groups') 
local w =0
local q =0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
database:srem(bot_id..'Chek:Groups',group[i])  
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=group[i],user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,'*𖢅︙لا يوجد كروبات وهميه في البوت*\n')   
else
local BILLA = (w + q)
local sendok = #group - BILLA
if q == 0 then
BILLA = ''
else
BILLA = '\n*𖢅︙تم ازالة »* { '..q..' } كروبات من البوت'
end
if w == 0 then
BILLAk = ''
else
BILLAk = '\n*𖢅︙تم ازالة »* {'..w..'} كروب لان البوت عضو'
end
send(msg.chat_id_, msg.id_,'*𖢅︙عدد الكروبات الان » { '..#group..' }'..BILLAk..''..BILLA..'*\n*𖢅︙الان عدد الكروبات الحقيقي » { '..sendok..' } كروبات*\n')   
end
end
end,nil)
end
return false
end


if text and text:match("^رفع مطور @(.*)$") and DevBILLAW(msg) then
local username = text:match("^رفع مطور @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," 𖢅︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")
return false 
end  
database:sadd(bot_id..'Sudo:User', result.id_)
usertext = '*\n 𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n *𖢅︙تم ترقيته مطور*'
texts = usertext..status
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false 
end
if text and text:match("^رفع مطور (%d+)$") and DevBILLAW(msg) then
local userid = text:match("^رفع مطور (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:sadd(bot_id..'Sudo:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم ترقيته مطور*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم ترقيته مطور*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false 
end
if text and text:match("^تنزيل مطور @(.*)$") and DevBILLAW(msg) then
local username = text:match("^تنزيل مطور @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Sudo:User', result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من المطورين*'
texts = usertext..status
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end  
if text and text:match("^تنزيل مطور (%d+)$") and DevBILLAW(msg) then
local userid = text:match("^تنزيل مطور (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'Sudo:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من المطورين*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم تنزيله من المطورين*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false 
end

end
--------------------------------------------------------------------------------------------------------------
if text and not Special(msg) then  
local BILLA1_Msg = database:get(bot_id.."BILLA1:Add:Filter:Rp2"..text..msg.chat_id_)   
if BILLA1_Msg then 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙اسم المستخدم »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n 𖢅︙'..BILLA1_Msg)
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end,nil)
end
end
if database:get(bot_id..'Set:Name:Bot'..msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء 𖢅' then   
send(msg.chat_id_, msg.id_," *𖢅︙تم الغاء حفظ اسم البوت*")
database:del(bot_id..'Set:Name:Bot'..msg.sender_user_id_) 
return false  
end 
database:del(bot_id..'Set:Name:Bot'..msg.sender_user_id_) 
database:set(bot_id..'Name:Bot',text) 
send(msg.chat_id_, msg.id_, " *𖢅︙تم حفظ الاسم*")
return false
end 
if database:get(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء 𖢅' then   
send(msg.chat_id_, msg.id_," *𖢅︙تم الغاء الاذاعه للخاص*")
database:del(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id..'User_Bot') 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,'['..msg.content_.text_..']')  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_," *𖢅︙تمت الاذاعه الى >>{"..#list.."} مشترك في البوت* ")
database:del(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end

if database:get(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء 𖢅' then   
send(msg.chat_id_, msg.id_," *𖢅︙تم الغاء الاذاعه*")
database:del(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id..'Chek:Groups') 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,'['..msg.content_.text_..']')  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_," *𖢅︙تمت الاذاعه الى >>{"..#list.."} كروب في البوت* ")
database:del(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end

if database:get(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء 𖢅' then   
send(msg.chat_id_, msg.id_," *𖢅︙تم الغاء الاذاعه*")
database:del(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id..'Chek:Groups')   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_," *𖢅︙تمت الاذاعه الى >>{"..#list.."} كروبات في البوت* ")
database:del(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
end
if database:get(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء 𖢅' then   
send(msg.chat_id_, msg.id_," *𖢅︙تم الغاء الاذاعه*")
database:del(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id..'User_Bot')   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_," *𖢅︙تمت الاذاعه الى >>{"..#list.."} مشترك في البوت* ")
database:del(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
end
if database:get(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
send(msg.chat_id_, msg.id_, " *𖢅︙تم الغاء الامر* ")
database:del(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
database:del(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local username = string.match(text, "@[%a%d_]+") 
tdcli_function ({
ID = "SearchPublicChat",
username_ = username  
},function(arg,data) 
if data and data.message_ and data.message_ == "USERNAME_NOT_OCCUPIED" then 
send(msg.chat_id_, msg.id_, ' *𖢅︙المعرف لا يوجد فيه قناة*')
return false  end
if data and data.type_ and data.type_.ID and data.type_.ID == 'PrivateChatInfo' then
send(msg.chat_id_, msg.id_, ' *𖢅︙عذا لا يمكنك وضع معرف حسابات في الاشتراك* ')
return false  end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == true then
send(msg.chat_id_, msg.id_,' *𖢅︙عذا لا يمكنك وضع معرف كروب بالاشتراك* ')
return false  end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == false then
if data and data.type_ and data.type_.channel_ and data.type_.channel_.ID and data.type_.channel_.status_.ID == 'ChatMemberStatusEditor' then
send(msg.chat_id_, msg.id_,' *𖢅︙البوت ادمن في القناة* \n*𖢅︙تم تفعيل الاشتراك الاجباري في* \n*𖢅︙ايدي القناة ('..data.id_..')*\n*𖢅︙معرف القناة* ([@'..data.type_.channel_.username_..'])')
database:set(bot_id..'add:ch:id',data.id_)
database:set(bot_id..'add:ch:username','@'..data.type_.channel_.username_)
else
send(msg.chat_id_, msg.id_,' *𖢅︙عذرآ البوت ليس ادمن بالقناه* ')
end
return false  
end
end,nil)
end
if database:get(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
send(msg.chat_id_, msg.id_, " *𖢅︙تم الغاء الامر* ")
database:del(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
database:del(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local texxt = string.match(text, "(.*)") 
database:set(bot_id..'text:ch:user',texxt)
send(msg.chat_id_, msg.id_,' *𖢅︙تم تغيير رسالة الاشتراك* ')
end
local status_welcome = database:get(bot_id..'Chek:Welcome'..msg.chat_id_)
if status_welcome and not database:get(bot_id..'lock:tagservr'..msg.chat_id_) then
if msg.content_.ID == "MessageChatJoinByLink" then
tdcli_function({ID = "GetUser",user_id_=msg.sender_user_id_},function(extra,result) 
local GetWelcomeGroup = database:get(bot_id..'Get:Welcome:Group'..msg.chat_id_)  
if GetWelcomeGroup then 
t = GetWelcomeGroup
else  
t = '\n \n•  name \n• user' 
end 
if result.username_ then
t = t:gsub('name',result.first_name_) 
t = t:gsub('user','@'..result.username_) 
else
t = t:gsub('name',result.first_name_) 
t = t:gsub('user','لا يوجد') 
end
send(msg.chat_id_, msg.id_,'['..t..']')
end,nil) 
end 
end 
if database:get(bot_id.."CAPTCHA"..msg.chat_id_) then
if msg.content_.ID == "MessageChatJoinByLink" then
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
captcha = math.random(4567,8907);
cap = math.random(10,50);
capt = math.random(60,90);
capc = math.random(100,500);
local Text ='• قم بختيار الرقم الصحيح الموجود في الصوره\n• ليتم الغاء تقييدك الان'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '9'..capt..'5', callback_data=capt..msg.sender_user_id_},{text =capc..'2', callback_data=capc..msg.sender_user_id_}},
{{text = '4'..cap..'8', callback_data=cap},{text = captcha, callback_data='okCaptcha'..msg.sender_user_id_}},
{{text = '1'..capt..'2', callback_data=capt},{text = '7'..capc, callback_data=capc}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://mode-pro.tk/niggax/captcha.php?c='..captcha..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end 
end 
--------------------------------------------------------------------------------------------------------------
if msg.content_.photo_ then  
if database:get(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_) then 
if msg.content_.photo_.sizes_[3] then  
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_ 
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_ 
end 
tdcli_function ({ID = "ChangeChatPhoto",chat_id_ = msg.chat_id_,photo_ = getInputFile(photo_id) }, function(arg,data)   
if data.code_ == 3 then
send(msg.chat_id_, msg.id_,' *𖢅︙عذرآ البوت ليس ادمن بالقناه* ')
database:del(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_) 
return false  end
if data.message_ == "CHAT_ADMIN_REQUIRED" then 
send(msg.chat_id_, msg.id_,' *𖢅︙عذرآ البوت لايملك صلاحيات*')
database:del(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_) 
else
send(msg.chat_id_, msg.id_,' *𖢅︙تم تغيير صورة الكروب*')
end
end, nil) 
database:del(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_) 
end   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text == 'الغاء' then 
send(msg.chat_id_, msg.id_," *𖢅︙تم الغاء وضع الوصف*")
database:del(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
return false  
end 
database:del(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
https.request('https://api.telegram.org/bot'..token..'/setChatDescription?chat_id='..msg.chat_id_..'&description='..text) 
send(msg.chat_id_, msg.id_,' *𖢅︙تم تغيير وصف الكروب*')
return false  
end 
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text == 'الغاء' then 
send(msg.chat_id_, msg.id_," *𖢅︙تم الغاء حفظ الترحيب*")
database:del(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
database:set(bot_id..'Get:Welcome:Group'..msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,' *𖢅︙تم حفظ ترحيب الكروب*')
return false   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) then
if text == 'الغاء' then
send(msg.chat_id_,msg.id_," *𖢅︙تم الغاء حفظ الرابط*")
database:del(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if text and text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)") then 
local Link = text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)")   
database:set(bot_id.."Private:Group:Link"..msg.chat_id_,Link)
send(msg.chat_id_,msg.id_," *𖢅︙تم حفظ الرابط بنجاح*")
database:del(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end
end 
--------------------------------------------------------------------------------------------------------------
if BILLA_Msg and not Special(msg) then  
local BILLA_Msg = database:get(bot_id.."Add:Filter:Rp2"..text..msg.chat_id_)   
if BILLA_Msg then
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0," *𖢅︙العضو :* {["..data.first_name_.."](T.ME/"..data.username_..")}\n𖢅︙["..BILLA_Msg.."] \n")
else
send(msg.chat_id_,0," *𖢅︙العضو :* {["..data.first_name_.."](T.ME/EE28i)}\n𖢅︙["..BILLA_Msg.."] \n")
end
end,nil)   
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if not Special(msg) and msg.content_.ID ~= "MessageChatAddMembers" and database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") then 
floods = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") or 'nil'
NUM_MSG_MAX = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") or 5
TIME_CHECK = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") or 5
local post_count = tonumber(database:get(bot_id..'floodc:'..msg.sender_user_id_..':'..msg.chat_id_) or 0)
if post_count > tonumber(database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") or 5) then 
local ch = msg.chat_id_
local type = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") 
trigger_anti_spam(msg,type)  
end
database:setex(bot_id..'floodc:'..msg.sender_user_id_..':'..msg.chat_id_, tonumber(database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") or 3), post_count+1) 
local edit_id = data.text_ or 'nil'  
NUM_MSG_MAX = 5
if database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") then
NUM_MSG_MAX = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") 
end
if database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") then
TIME_CHECK = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") 
end 
end 
--------------------------------------------------------------------------------------------------------------
if text and database:get(bot_id..'lock:Fshar'..msg.chat_id_) and not Special(msg) then 
list = {"كس","كسمك","كسختك","عير","كسخالتك","خرا بالله","عير بالله","كسخواتكم","كحاب","مناويج","مناويج","كحبه","ابن الكحبه","فرخ","فروخ","طيزك","طيزختك"}
for k,v in pairs(list) do
print(string.find(text,v))
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
if text and database:get(bot_id..'lock:Fars'..msg.chat_id_) and not Special(msg) then 
list = {"ڄ","گ","که","پی","خسته","برم","راحتی","بیام","بپوشم","گرمه","چه","چ","ڬ","ٺ","چ","ڇ","ڿ","ڀ","ڎ","ݫ","ژ","ڟ","ݜ","ڸ","پ","۴","زدن","دخترا","دیوث","مک","زدن","خالی بند","عزیزم خوبی","سلامت باشی","میخوام","خوببی","ميدم","کی اومدی","خوابیدین"}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
if text and database:get(bot_id..'lock:Engilsh'..msg.chat_id_) and not Special(msg) then 
list = {'a','u','y','l','t','b','A','Q','U','J','K','L','B','D','L','V','Z','k','n','c','r','q','o','z','I','j','m','M','w','d','h','e'}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id..'lock:text'..msg.chat_id_) and not Special(msg) then   
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false 
end 
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then 
database:incr(bot_id..'Add:Contact'..msg.chat_id_..':'..msg.sender_user_id_) 
end
if msg.content_.ID == "MessageChatAddMembers" and not Special(msg) then   
if database:get(bot_id.."lock:AddMempar"..msg.chat_id_) == 'kick' then
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
chat_kick(msg.chat_id_,mem_id[i].id_)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatJoinByLink" and not Special(msg) then 
if database:get(bot_id.."lock:Join"..msg.chat_id_) == 'kick' then
chat_kick(msg.chat_id_,msg.sender_user_id_)
return false  
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("@[%a%d_]+") or msg.content_.caption_:match("@(.+)") then  
if database:get(bot_id.."lock:user:name"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("@[%a%d_]+") or text and text:match("@(.+)") then
if database:get(bot_id.."lock:user:name"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("#[%a%d_]+") or msg.content_.caption_:match("#(.+)") then 
if database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("#[%a%d_]+") or text and text:match("#(.+)") then
if database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("/[%a%d_]+") or msg.content_.caption_:match("/(.+)") then  
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("/[%a%d_]+") or text and text:match("/(.+)") then
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if not Special(msg) then 
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or msg.content_.caption_:match(".[Pp][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or msg.content_.caption_:match("[Tt].[Mm][Ee]/") then 
if database:get(bot_id.."lock:Link"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") and not Special(msg) then
if database:get(bot_id.."lock:Link"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ked" and not Special(msg) then 
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessagePhoto' and not Special(msg) then 
if database:get(bot_id.."lock:Photo"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageVideo' and not Special(msg) then 
if database:get(bot_id.."lock:Video"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageAnimation' and not Special(msg) then 
if database:get(bot_id.."lock:Animation"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.game_ and not Special(msg) then 
if database:get(bot_id.."lock:geam"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageAudio' and not Special(msg) then 
if database:get(bot_id.."lock:Audio"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Audio"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Audio"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Audio"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageVoice' and not Special(msg) then 
if database:get(bot_id.."lock:vico"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.reply_markup_ and msg.reply_markup_.ID == 'ReplyMarkupInlineKeyboard' and not Special(msg) then 
if database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageSticker' and not Special(msg) then 
if database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
if tonumber(msg.via_bot_user_id_) ~= 0 and not Special(msg) then
if database:get(bot_id.."lock:inline"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:inline"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:inline"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:inline"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.forward_info_ and not Special(msg) then 
if database:get(bot_id.."lock:forward"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageDocument' and not Special(msg) then 
if database:get(bot_id.."lock:Document"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageUnsupported" and not Special(msg) then  
if database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.entities_ then 
if msg.content_.entities_[0] then 
if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then  
if not Special(msg) then
if database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end  
end 
end
end 
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageContact' and not Special(msg) then  
if database:get(bot_id.."lock:Contact"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.text_ and not Special(msg) then  
local _nl, ctrl_ = string.gsub(text, '%c', '')  
local _nl, real_ = string.gsub(text, '%d', '')   
sens = 400  
if database:get(bot_id.."lock:Spam"..msg.chat_id_) == "del" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "ked" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "kick" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "ktm" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
هيمو ال تميم
if BasicConstructor(msg) then 
if (msg.content_.ID == "MessagePhoto" or msg.content_.ID == "MessageSticker" or msg.content_.ID == "MessageVideo" or msg.content_.ID == "MessageAnimation" or msg.content_.ID == "MessageUnsupported") and database:get(bot_id.."LoMsg"..msg.chat_id_) then
database:sadd(bot_id..":IdMsg:"..msg.chat_id_,msg.id_)
GetTi = database:get(bot_id..':TiMsg:'..msg.chat_id_)
if GetTi then 
GetTi = tonumber(GetTi)
GetTi = 60*60*GetTi
end
database:setex(bot_id..":STiMsg:"..msg.chat_id_..msg.id_,GetTi or 21600,true)  
end
local DoTi = database:smembers(bot_id..":IdMsg:"..msg.chat_id_)
for k,v in pairs(DoTi) do
if not database:get(bot_id..":STiMsg:"..msg.chat_id_..v) then
DeleteMessage(msg.chat_id_, {[0] = v}) 
database:srem(bot_id..":IdMsg:"..msg.chat_id_,v)
end
end
end
هيمو ال تميم
if msg.content_.ID == 'MessageSticker' and not Manager(msg) then 
local filter = database:smembers(bot_id.."filtersteckr"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.sticker_.sticker_.persistent_id_ then
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0, " *𖢅︙عذرا ↫* {[@"..data.username_.."]}\n*𖢅︙عذرا تم منع الملصق* \n" ) 
else
send(msg.chat_id_,0, " *𖢅︙عذرا ↫* {["..data.first_name_.."](T.ME/EE28i)}\n*𖢅︙عذرا تم منع الملصق* \n" ) 
end
end,nil)   
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false   
end
end
end
if msg.content_.ID == 'MessagePhoto' and not Manager(msg) then 
local filter = database:smembers(bot_id.."filterphoto"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.photo_.sizes_[1].photo_.persistent_id_ then
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0," 𖢅︙عذرا ↫ {[@"..data.username_.."]}\n 𖢅︙عذرا تم منع الصوره \n" ) 
else
send(msg.chat_id_,0," 𖢅︙عذرا ↫ {["..data.first_name_.."](T.ME/EE28i)}\n 𖢅︙عذرا تم منع الصوره \n") 
end
end,nil)   
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false   
end
end
end
هيمو ال تميم
if msg.content_.ID == 'MessageAnimation' and not Manager(msg) then 
local filter = database:smembers(bot_id.."filteranimation"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.animation_.animation_.persistent_id_ then
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0," *𖢅︙عذرا ↫* {[@"..data.username_.."]}\n*𖢅︙عذرا تم منع المتحركه* \n") 
else
send(msg.chat_id_,0," *𖢅︙عذرا ↫* {["..data.first_name_.."](T.ME/EE28i)}\n*𖢅︙عذرا تم منع المتحركه* \n" ) 
end
end,nil)   
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false   
end
end
end

if text == 'تفعيل' and Sudo(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' 𖢅︙عذرا يرجى ترقيه البوت مشرف !')
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = getChatId(msg.chat_id_).ID }, function(arg,data)  
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'Num:Add:Bot') or 0) and not DevBILLAW(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙عدد اعضاء الكروب قليله يرجى جمع >> {'..(database:get(bot_id..'Num:Add:Bot') or 0)..'} عضو*')
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if database:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,' *𖢅︙بالتأكيد تم تفعيل الكروب*')
else
sendText(msg.chat_id_,'\n *𖢅︙بواسطه »* ['..string.sub(result.first_name_,0, 70)..'](tg://user?id='..result.id_..')\n*𖢅︙تم تفعيل الكروب *{'..chat.title_..'}',msg.id_/2097152/0.5,'md')
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
database:sadd(bot_id.."CoSu"..msg.chat_id_,admins[i].user_id_)
end 
end  
end,nil)
database:sadd(bot_id..'Chek:Groups',msg.chat_id_)  
database:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
local IdChat = msg.chat_id_
local NumMember = data.member_count_
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = ' *𖢅︙تم تفعيل كروب جديده*\n'..
'\n *𖢅︙بواسطة* {'..Name..'}'..
'\n *𖢅︙ايدي الكروب* {'..IdChat..'}'..
'\n *𖢅︙اسم الكروب* {['..NameChat..']}'..
'\n *𖢅︙عدد اعضاء الكروب* *{'..NumMember..'}*'..
'\n *𖢅︙الرابط* {['..LinkGp..']}'
if not DevBILLAW(msg) then
sendText(SUDO,Text,0,'md')
end
end
end,nil) 
end,nil) 
end,nil)
end
if text == 'تعطيل' and Sudo(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if not database:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,' *𖢅︙بالتأكيد تم تعطيل الكروب*')
else
sendText(msg.chat_id_,'\n *𖢅︙بواسطه »* ['..string.sub(result.first_name_,0, 70)..'](tg://user?id='..result.id_..')\n*𖢅︙تم تعطيل الكروب *{'..chat.title_..'}',msg.id_/2097152/0.5,'md')
database:srem(bot_id..'Chek:Groups',msg.chat_id_)  
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = '\nتم تعطيل الكروب  𖢅︙'..
'\n 𖢅︙بواسطة {'..Name..'}'..
'\n 𖢅︙ايدي الكروب {'..IdChat..'}'..
'\n 𖢅︙اسم الكروب {['..NameChat..']}'..
'\n 𖢅︙الرابط {['..LinkGp..']}'
if not DevBILLAW(msg) then
sendText(SUDO,Text,0,'md')
end
end
end,nil) 
end,nil) 
end
if text == 'تفعيل' and not Sudo(msg) and not database:get(bot_id..'Free:Bots') then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *𖢅︙عذرا يرجى ترقيه البوت مشرف !*')
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = getChatId(msg.chat_id_).ID }, function(arg,data)  
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'Num:Add:Bot') or 0) and not DevBILLAW(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙عدد اعضاء الكروب قليله يرجى جمع >>* {'..(database:get(bot_id..'Num:Add:Bot') or 0)..'} عضو')
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusEditor" or da and da.status_.ID == "ChatMemberStatusCreator" then
if da and da.user_id_ == msg.sender_user_id_ then
if da.status_.ID == "ChatMemberStatusCreator" then
var = 'المالك'
elseif da.status_.ID == "ChatMemberStatusEditor" then
var = 'مشرف'
end
if database:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تفعيل الكروب*')
else
sendText(msg.chat_id_,'\n *𖢅︙بواسطه »* ['..string.sub(result.first_name_,0, 70)..'](tg://user?id='..result.id_..')\n*𖢅︙تم تفعيل الكروب *{'..chat.title_..'}',msg.id_/2097152/0.5,'md')
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
database:sadd(bot_id.."CoSu"..msg.chat_id_,admins[i].user_id_)
end 
end  
end,nil)
database:sadd(bot_id..'Chek:Groups',msg.chat_id_)  
database:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NumMember = data.member_count_
local NameChat = chat.title_
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = ' *𖢅︙تم تفعيل كروب جديده*\n'..
'\n *𖢅︙بواسطة* {'..Name..'}'..
'\n *𖢅︙موقعه في الكروب *{'..AddPy..'}' ..
'\n *𖢅︙ايدي الكروب* {'..IdChat..'}'..
'\n *𖢅︙عدد اعضاء الكروب* *{'..NumMember..'}*'..
'\n *𖢅︙اسم الكروب* {['..NameChat..']}'..
'\n *𖢅︙الرابط* {['..LinkGp..']}'
if not DevBILLAW(msg) then
sendText(SUDO,Text,0,'md')
end
end
end
end
end,nil)   
end,nil) 
end,nil) 
end,nil)
end
if text and text:match("^ضع عدد الاعضاء (%d+)$") and DevBILLAW(msg) then
local Num = text:match("ضع عدد الاعضاء (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id..'Num:Add:Bot',Num) 
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعيين عدد الاعضاء سيتم تفعيل الكروبات التي اعضائها اكثر من  >> {'..Num..'} عضو*')
end
if text == 'تحديث السورس' and DevBILLAW(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
os.execute('rm -rf BILLA.lua')
os.execute('wget https://raw.githubusercontent.com/BILLATEAM/BILLA/main/BILLA.lua')
send(msg.chat_id_, msg.id_,' *𖢅︙تم تحديث السورس* \n*𖢅︙لديك اخر اصدار لسورس بيلا*\n*𖢅︙الاصدار » { 2.8v}*')
dofile('BILLA.lua')  
end

if text and text:match("^تغير الاشتراك$") and DevBILLAW(msg) then  
database:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, ' *𖢅︙حسنآ ارسل لي معرف القناة*')
return false  
end
if text and text:match("^تغير رساله الاشتراك$") and DevBILLAW(msg) then  
database:setex(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, ' *𖢅︙حسنآ ارسل لي النص الذي تريده*')
return false  
end
if text == "حذف رساله الاشتراك 𖢅" and DevBILLAW(msg) then  
database:del(bot_id..'text:ch:user')
send(msg.chat_id_, msg.id_, " *𖢅︙تم مسح رساله الاشتراك* ")
return false  
end
if text and text:match("^وضع قناة الاشتراك 𖢅$") and DevBILLAW(msg) then  
database:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, ' *𖢅︙حسنآ ارسل لي معرف القناة*')
return false  
end
if text == "تفعيل الاشتراك الاجباري 𖢅" and DevBILLAW(msg) then  
if database:get(bot_id..'add:ch:id') then
local addchusername = database:get(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_," *𖢅︙الاشتراك الاجباري مفعل* \n*𖢅︙على القناة »* ["..addchusername.."]")
else
database:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_," *𖢅︙اهلا عزيزي المطور* \n*𖢅︙ارسل الان معرف قناتك*")
end
return false  
end
if text == "تعطيل الاشتراك الاجباري 𖢅" and DevBILLAW(msg) then  
database:del(bot_id..'add:ch:id')
database:del(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_, " *𖢅︙تم تعطيل الاشتراك الاجباري* ")
return false  
end
if text == "الاشتراك الاجباري 𖢅" and DevBILLAW(msg) then  
if database:get(bot_id..'add:ch:username') then
local addchusername = database:get(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_, " *𖢅︙تم تفعيل الاشتراك الاجباري* \n*𖢅︙على القناة »* ["..addchusername.."]")
else
send(msg.chat_id_, msg.id_, " *𖢅︙لا يوجد قناة في الاشتراك الاجباري* ")
end
return false  
end
if text == "تفعيل الاضافات" and SudoBot(msg) then
send(msg.chat_id_, msg.id_, '*𖢅︙ تم تفعيل الاضافات*')
database:set(bot_id.."AL:Sre:stats","✔")
end
if text == "تعطيل الاضافات" and SudoBot(msg) then
send(msg.chat_id_, msg.id_, '*𖢅︙ تم تعطيل الاضافات*')
database:set(bot_id.."AL:Sre:stats","❌")
end
if text == "الاضافات" and Constructor(msg) then
local AMIRDEV = database:get(bot_id.."AL:Sre:stats") or "لم يتم التحديد"
send(msg.chat_id_, msg.id_,"*حاله الاضافات هي : {"..AMIRDEV.."}*\n*اذا كانت {✔} الاضافات مفعله*\n*اذا كانت {❌} الاضافات معطله*")
end
function bnnaGet(user_id, cb)
tdcli_function ({
ID = "GetUser",
user_id_ = user_id
}, cb, nil)
end

if database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
if text and text:match("^كتم اسم (.*)$") and Manager(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
local BlNe = text:match("^كتم اسم (.*)$")
send(msg.chat_id_, msg.id_, '*𖢅︙تم كتم الاسم* '..BlNe)
database:sadd(bot_id.."BILLA:blocname"..msg.chat_id_, BlNe)
end

if text and text:match("^الغاء كتم اسم (.*)$") and Manager(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
local delBn = text:match("^الغاء كتم اسم (.*)$")
send(msg.chat_id_, msg.id_, '*𖢅︙تم الغاء كتم الاسم* '..delBn)
database:srem(bot_id.."BILLA:blocname"..msg.chat_id_, delBn)
end

if text == "مسح الاسماء المكتومه" and Constructor(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
database:del(bot_id.."BILLA:blocname"..msg.chat_id_)
texts = "*𖢅︙تم مسح الاسماء المكتومه* "
send(msg.chat_id_, msg.id_, texts)
end
if text == "الاسماء المكتومه" and Constructor(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
local All_name = database:smembers(bot_id.."BILLA:blocname"..msg.chat_id_)
t = "\n*𖢅︙قائمة الاسماء المكتومه* \n*•━━━━━━ ??𝗘 ━━━━━━━•*\n"
for k,v in pairs(All_name) do
t = t..""..k.."- (["..v.."])\n"
end
if #All_name == 0 then
t = "*𖢅︙لا يوجد اسماء مكتومه*"
end
send(msg.chat_id_, msg.id_, t)
end
end
if text == "تفعيل كتم الاسم" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*𖢅︙تم التفعيل الاسماء المكتومه*')
database:set(bot_id.."block:name:stats"..msg.chat_id_,"open")
end
if text == "تعطيل كتم الاسم" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*𖢅︙تم تعطيل الاسماء المكتومه*')
database:set(bot_id.."block:name:stats"..msg.chat_id_,"close")
end
if not Manager(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
function VVVZVV_name(t1,t2)
if t2.id_ then 
name_BILLA = ((t2.first_name_ or "") .. (t2.last_name_ or ""))
if name_BILLA then 
names_BILLA = database:smembers(bot_id.."BILLA:blocname"..msg.chat_id_) or ""
if names_BILLA and names_BILLA[1] then 
for i=1,#names_BILLA do 
if name_BILLA:match("(.*)("..names_BILLA[i]..")(.*)") then 
DeleteMessage_(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
end
end
bnnaGet(msg.sender_user_id_, VVVZVV_name)
end
if database:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open" then
if text and text:match("^وضع توحيد (.*)$") and Manager(msg) and database:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open" then
local teh = text:match("^وضع توحيد (.*)$")
send(msg.chat_id_, msg.id_,'*𖢅︙تم تعيين '..teh..' كتوحيد للمجموعه*')
database:set(bot_id.."BILLA:teh"..msg.chat_id_,teh)
end
if text and text:match("^تعين عدد الكتم (.*)$") and Manager(msg) and database:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open" then
local nump = text:match("^تعين عدد الكتم (.*)$")
send(msg.chat_id_, msg.id_,'*𖢅︙تم تعين  '..nump..' عدد الكتم*')
database:set(bot_id.."BILLA:nump"..msg.chat_id_,nump)
end
if text == "التوحيد" then
local s1 = database:get(bot_id.."BILLA:teh"..msg.chat_id_) or "لا يوجد توحيد"
local s2 = database:get(bot_id.."BILLA:nump"..msg.chat_id_) or 5
send(msg.chat_id_, msg.id_,'*𖢅︙التوحيد '..s1..'*\n*𖢅︙عدد الكتم  :* '..s2)
end
end
if text == "تفعيل التوحيد" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*𖢅︙تم تفعيل التوحيد*')
database:set(bot_id.."kt:twh:stats"..msg.chat_id_,"open")
end
if text == "تعطيل التوحيد" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*𖢅︙تم تعطيل التوحيد*')
database:set(bot_id.."kt:twh:stats"..msg.chat_id_,"close")
end
if not Constructor(msg) then
if database:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open"  and database:get(bot_id.."BILLA:teh"..msg.chat_id_) then 
id = msg.sender_user_id_
function amir_BILLAa_new(BILLA1,BILLA2)
if BILLA2 and BILLA2.first_name_ then 
if BILLA2.first_name_:match("(.*)"..database:get(bot_id.."BILLA:teh"..msg.chat_id_).."(.*)") then 
database:srem(bot_id.."BILLA:Muted:User"..msg.chat_id_, msg.sender_user_id_)
else
local BILLA_nnn = database:get(bot_id.."BILLA:nump"..msg.chat_id_) or 5
local BILLA_nnn2 = database:get(bot_id.."BILLA:nump22"..msg.chat_id_..msg.sender_user_id_) or 0
if (tonumber(BILLA_nnn2) == tonumber(BILLA_nnn) or tonumber(BILLA_nnn2) > tonumber(BILLA_nnn)) then 
database:sadd(bot_id..'Muted:User'..msg.chat_id_, msg.sender_user_id_)
else 
database:incrby(bot_id.."BILLA:nump22"..msg.chat_id_..msg.sender_user_id_,1)
send(msg.chat_id_, msg.id_, "𖢅︙عزيزي >>["..BILLA2.username_.."](https://t.me/"..(BILLA2.username_ or "EE28i")..")\n𖢅︙عليك وضع التوحيد ⪼ {"..database:get(bot_id.."BILLA:teh"..msg.chat_id_).."} بجانب اسمك\n𖢅︙عدد المحاولات المتبقيه {"..(tonumber(BILLA_nnn) - tonumber(BILLA_nnn2)).."}")
end
end
end
end
bnnaGet(id, amir_BILLAa_new)
end
end
if text == "تفعيل تنبيه الاسماء" and Manager(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*𖢅︙تم تفعيل تنبيه الاسماء*')
database:set(bot_id.."Ttn:BBE:stats"..msg.chat_id_,"open")
end
if text == "تعطيل تنبيه الاسماء" and Manager(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*𖢅︙تم تعطيل تنبيه الاسماء*')
database:set(bot_id.."Ttn:BBE:stats"..msg.chat_id_,"close")
end
if text and database:get(bot_id.."Ttn:BBE:stats"..msg.chat_id_) == "open" then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then
local BILLAChengName = database:get(bot_id.."BILLA:Cheng:Name"..data.id_)
if not data.first_name_ then 
if BILLAChengName then 
send(msg.chat_id_, msg.id_, " خوش معرف جان ["..BILLAChengName..']')
database:del(bot_id.."BILLA:Cheng:Name"..data.id_) 
end
end
if data.first_name_ then 
if BILLAChengName ~= data.first_name_ then 
local Text = {
  "جان خوش اسم يول",
"ليش غيرته اسمك بس لا خانوك/ج",
"هذا الحلو غير اسمه 😉",
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."BILLA:Cheng:Name"..data.id_, data.first_name_) 
end
end
end
end,nil)   
end
if text == "تفعيل تنبيه المعرف" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*𖢅︙تم تفعيل تنبيه المعرف*')
database:set(bot_id.."Ttn:Userr:stats"..msg.chat_id_,"open")
end
if text == "تعطيل تنبيه المعرف" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*𖢅︙تم تعطيل تنبيه المعرف*')
database:set(bot_id.."Ttn:Userr:stats"..msg.chat_id_,"close")
end
if text and database:get(bot_id.."Ttn:Userr:stats"..msg.chat_id_) == "open" then  
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then
local BILLAChengUserName = database:get(bot_id.."BILLA:Cheng:UserName"..data.id_)
if not data.username_ then 
if BILLAChengUserName then 
send(msg.chat_id_, msg.id_, 1, "حذف معرفه خمطو بساع بساع  \n هاذه معرفه  : [@"..BILLAChengUserName..']')
database:del(bot_id.."BILLA:Cheng:UserName"..data.id_) 
end
end
if data.username_ then 
if BILLAChengUserName ~= data.username_ then 
local Text = {
'شكو غيرت معرفك شنو نشروك بقنوات فضايح😂🥺',
"هاها شو غيرت معرفك بس لا هددتك/ج الحب",
"شسالفه شو غيرت معرفك 😐🌝",
"غير معرفه خمطو بساع بساع \n هاذه معرفه : @"..data.username_.."",
'ها عار مو جان معرفك \n شكو غيرته ل @'..data.username_..' ',
'ها يول شو مغير معرفك بيش مشتري يول', 
"منور معرف جديد :  "..data.username_.."",
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."BILLA:Cheng:UserName"..data.id_, data.username_) 
end
end
end
end,nil)   
end
if text == "تفعيل الرسائل اليوميه" and Manager(msg) then
send(msg.chat_id_, msg.id_, '*𖢅︙تم تفعيل الرسائل اليوميه*')
database:set(bot_id.."msg:match:"..msg.chat_id_,true)
end
if text == "تعطيل الرسائل اليوميه" and Manager(msg) then
send(msg.chat_id_, msg.id_,'*𖢅︙تم تعطيل الرسائل اليوميه*')
database:del(bot_id.." msg:match:"..msg.chat_id_)
end
if database:get(bot_id.."msg:match:"..msg.chat_id_) then
if msg.content_.ID then
get_msg = database:get(bot_id.."msg:match:"..msg.sender_user_id_..":"..msg.chat_id_) or 0
gms = get_msg + 1
database:setex(bot_id..'msg:match:'..msg.sender_user_id_..":"..msg.chat_id_,86400,gms)
end
if text == "تفاعلي اليوم" and tonumber(msg.reply_to_message_id_) == 0 then    
get_msg = database:get(bot_id.."msg:match:"..msg.sender_user_id_..":"..msg.chat_id_) or 0
send(msg.chat_id_, msg.id_,"*𖢅︙عدد رسائلك الكلي هو :-*\n"..get_msg.." *من الرسائل*")
end  
if text == "تفاعله اليوم" and tonumber(msg.reply_to_message_id_) > 0 then    
if tonumber(msg.reply_to_message_id_) ~= 0 then 
function prom_reply(extra, result, success) 
get_msg = database:get(bot_id.."msg:match:"..result.sender_user_id_..":"..msg.chat_id_) or 0
send(msg.chat_id_, msg.id_,"*𖢅︙عدد رسائل اشخص الكلي هو :-*\n"..get_msg.." *من الرسائل*")
end  
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},prom_reply, nil)
end
end
end
if text == "تفعيل تنبيه الصور" and Manager(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*𖢅︙تم تفعيل تنبيه الصور*')
database:set(bot_id.."Ttn:Ph:stats"..msg.chat_id_,"open")
end
if text == "تعطيل تنبيه الصور" and Manager(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*𖢅︙تم تعطيل تنبيه الصور*')
database:set(bot_id.."Ttn:Ph:stats"..msg.chat_id_,"close")
end
if text and database:get(bot_id.."Ttn:Ph:stats"..msg.chat_id_) == "open" then  
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then 
local BILLAChengPhoto = database:get(bot_id.."BILLA:Cheng:Photo"..data.id_)
if not data.profile_photo_ then 
if BILLAChengPhoto then 
send(msg.chat_id_, msg.id_, "حذف كل صور ابن الحلو شكد غبي لعد😂🥺")
database:del(bot_id.."BILLA:Cheng:Photo"..data.id_) 
end
end
if data.profile_photo_.big_.persistent_id_ then 
if BILLAChengPhoto ~= data.profile_photo_.big_.persistent_id_ then 
local Text = {
  "شكو غيرت صورتك يلصاك",
  "منور طالع حلو ع صوره جديده",
  "ها يول شو غيرت صورتك😍😂",
  "شكو غيرت صورتك شنو قطيت وحده جديده 😹😹🌚",
  "شو غيرت صورتك شنو تعاركت ويه الحب ؟😹🌞",
  "شكو غيرت الصوره شسالفه ؟؟ 🤔🌞",
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."BILLA:Cheng:Photo"..data.id_, data.profile_photo_.big_.persistent_id_) 
end
end
end
end,nil)   
end
if text == 'مطور السورس' or text == 'مبرمج السورس' or text == 'مطور سورس' then
Text = [[
≪━━━━━━𝑩𝑰━━━━━━≫
𖢅︙↬[مبرمج السورس](t.me/EE66i)
𖢅︙↬[مبرمج السورس](t.me/SQEPLK)
≪━━━━━━𝑩𝑰━━━━━━≫
]]
send(msg.chat_id_, msg.id_,Text)
return false
end
if text == 'السورس' or text == 'سورس' or text == 'ياسورس' or text == 'يا سورس' then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
Text = "ᴡᴇʟᴄᴏᴍᴇ ᴛᴏ sᴏᴜʀᴄʀ ʙɪʟʟᴀ\n\n[𖢅  ʙɪʟʟᴀ ᴄʜᴀɴɴᴇʟ](http://t.me/EE92i)\n\n[𖢅  ɪɴғᴏ sᴏᴜʀᴄᴇ](http://t.me/EE28i)\n\n[𖢅  ʙɪʟʟᴀ ᴅᴇᴠᴇʟᴏᴘᴇʀ](http://t.me/EE66i)\n\n[𖢅  ʙɪʟʟᴀ ᴅᴇᴠᴇʟᴏᴘᴇʀ](http://t.me/SQEPLK)\n\n[𖢅  ʙᴏᴛ ʙɪʟʟᴀ](http://t.me/EE66i_BOT)"
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '𖢅 sᴏᴜʀᴄʀ ʙɪʟʟᴀ',url="t.me/EE92i"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/EE92i&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' and ChekAdd(msg.chat_id_) == true then
if text == 'رفع نسخه الاحتياطيه' and DevBILLAW(msg) then   
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.document_ then 
local ID_FILE = result.content_.document_.document_.persistent_id_ 
local File_Name = result.content_.document_.file_name_
AddFile_Bot(msg,msg.chat_id_,ID_FILE,File_Name)
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'جلب نسخه الاحتياطيه' and DevBILLAW(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
GetFile_Bot(msg)
end
if text == 'الاوامر المضافه' and Constructor(msg) then
local list = database:smembers(bot_id..'List:Cmd:Group:New'..msg.chat_id_..'')
t = " *𖢅︙قائمه الاوامر المضافه*  \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
Cmds = database:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..v)
print(Cmds)
if Cmds then 
t = t..""..k..">> ("..v..") » {"..Cmds.."}\n"
else
t = t..""..k..">> ("..v..") \n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد اوامر مضافه*"
end
send(msg.chat_id_, msg.id_,'['..t..']')
end
if text == 'حذف الاوامر المضافه' or text == 'مسح الاوامر المضافه' then
if Constructor(msg) then 
local list = database:smembers(bot_id..'List:Cmd:Group:New'..msg.chat_id_)
for k,v in pairs(list) do
database:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..v)
database:del(bot_id..'List:Cmd:Group:New'..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,' *𖢅︙تم ازالة جميع الاوامر المضافه*')  
end
end
if text == "ترتيب الاوامر" and Constructor(msg) then
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":ا","ايدي")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"ا")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":م","رفع مميز")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"م")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":اد","رفع ادمن")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"اد")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":مد","رفع مدير")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"مد")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":من","رفع منشئ")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"من")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":اس","رفع منشئ اساسي")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"اس")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":تعط","تعطيل الايدي بالصوره")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"تعط")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":تفع","تفعيل الايدي بالصوره")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"تفع")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":تك","تنزيل الكل")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"تك")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":رد","اضف رد")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"رد")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":حذ","حذف رد")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"حذ")
 database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":ت","تثبيت")
 database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,"ت")
 send(msg.chat_id_, msg.id_,"*𖢅︙تم ترتيب الاوامر بالشكل التالي*\n*𖢅︙ايدي - ا .*\n*𖢅︙مميز - م .\n𖢅︙ادمن - اد .*\n*𖢅︙مدير - مد . \n𖢅︙منشى - من .*\n*𖢅︙المنشئ الاساسي - اس .*\n*𖢅︙تعطيل الايدي بالصوره - تعط .*\n*𖢅︙تفعيل الايدي بالصوره - تفع .*\n*𖢅︙تنزيل الكل - تك .*\n*𖢅︙اضف رد - رد .*\n*𖢅︙حذف رد - حذ .*\n*𖢅︙تثبيت - ت .*")
 end
if text == 'اضف امر' and Constructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."Set:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_,'true') 
send(msg.chat_id_, msg.id_,' *𖢅︙ارسل الامر القديم*')  
return false
end
if text == 'حذف امر' or text == 'مسح امر' then 
if Constructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."Del:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_,'true') 
send(msg.chat_id_, msg.id_,' *𖢅︙ارسل الامر الذي قمت بوضعه بدلا عن القديم*')  
return false
end
end
if text and database:get(bot_id.."Set:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_) == 'true' then
database:set(bot_id.."Set:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,' *𖢅︙ارسل الامر الجديد*')  
database:del(bot_id.."Set:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_)
database:set(bot_id.."Set:Cmd:Group1"..msg.chat_id_..':'..msg.sender_user_id_,'true1') 
return false
end
if text and database:get(bot_id.."Set:Cmd:Group1"..msg.chat_id_..':'..msg.sender_user_id_) == 'true1' then
local NewCmd = database:get(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..text,NewCmd)
database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,' *𖢅︙تم حفظ الامر*')  
database:del(bot_id.."Set:Cmd:Group1"..msg.chat_id_..':'..msg.sender_user_id_)
return false
end
if text == 'السيرفر' and SudoBot(msg) then 
send(msg.chat_id_, msg.id_, io.popen([[
linux_version=`lsb_release -ds`
memUsedPrc=`free -m | awk 'NR==2{printf "%sMB/%sMB {%.2f%}\n", $3,$2,$3*100/$2 }'`
HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
uptime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes."}'`
echo '⇗ نظام التشغيل ⇖•\n*»» '"$linux_version"'*' 
echo '*———————————~*\n✺✔{ الذاكره العشوائيه } ⇎\n*»» '"$memUsedPrc"'*'
echo '*———————————~*\n✺✔{ وحـده الـتـخـزيـن } ⇎\n*»» '"$HardDisk"'*'
echo '*———————————~*\n✺✔{ الـمــعــالــج } ⇎\n*»» '"`grep -c processor /proc/cpuinfo`""Core ~ {$CPUPer%} "'*'
echo '*———————————~*\n✺✔{ الــدخــول } ⇎\n*»» '`whoami`'*'
echo '*———————————~*\n✺✔{ مـده تـشغيـل الـسـيـرفـر }⇎\n*»» '"$uptime"'*'
]]):read('*all'))  
end

--------------------------------------------------------------------------------------------------------------
if text == "تفعيل تنظيف التلقائي" and BasicConstructor(msg)  then
database:set(bot_id.."LoMsg"..msg.chat_id_,true)
send(msg.chat_id_, msg.id_, '*𖢅︙بواسطه* » ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تم تفعيل التنظيف التلقائي* ')
return false
end
if text == "تعطيل تنظيف التلقائي" and BasicConstructor(msg) then
database:del(bot_id.."LoMsg"..msg.chat_id_)
send(msg.chat_id_, msg.id_, '*𖢅︙بواسطه* » ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تم تعطيل التنظيف التلقائي* ')
return false
end
if text == 'قفل الدردشه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id.."lock:text"..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)  
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الدردشه* ')
end,nil)   
elseif text == 'قفل الاضافه' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id.."lock:AddMempar"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل اضافة* ')
end,nil)   
elseif text == 'قفل الدخول' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id.."lock:Join"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل دخول* ')
end,nil)   
elseif text == 'قفل البوتات' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id.."lock:Bot:kick"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل البوتات* ')
end,nil)   
elseif text == 'قفل البوتات بالطرد' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id.."lock:Bot:kick"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل البوتات بالطرد* ')
end,nil)   
elseif text == 'قفل الاشعارات' and msg.reply_to_message_id_ == 0 and Mod(msg) then  
database:set(bot_id..'lock:tagservr'..msg.chat_id_,true)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الاشعارات* ')
end,nil)   
elseif text == 'قفل التثبيت' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."lockpin"..msg.chat_id_, true) 
database:sadd(bot_id..'lock:pin',msg.chat_id_) 
tdcli_function ({ ID = "GetChannelFull",  channel_id_ = getChatId(msg.chat_id_).ID }, function(arg,data)  database:set(bot_id..'Pin:Id:Msg'..msg.chat_id_,data.pinned_message_id_)  end,nil)
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل التثبيت* ')
end,nil)   
elseif text == 'قفل التعديل' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id..'lock:edit'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل تعديل* ')
end,nil)   
elseif text == 'قفل الفشار' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id..'lock:Fshar'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الفشار* ')
end,nil)  
elseif text == 'قفل الفارسيه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id..'lock:Fars'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الفارسيه* ')
end,nil)   
elseif text == 'قفل الانكليزيه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id..'lock:Engilsh'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل النكليزيه* ')
end,nil)
elseif text == 'قفل الانلاين' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id.."lock:inline"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الانلاين* ')
end,nil)
elseif text == 'قفل تعديل الميديا' and msg.reply_to_message_id_ == 0 and BasicConstructor(msg) then 
database:set(bot_id..'lock_edit_med'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل تعديل* ')
end,nil)   
elseif text == 'قفل الكل' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id..'lock:tagservrbot'..msg.chat_id_,true)   
list ={"lock:Bot:kick","lock:user:name","lock:hashtak","lock:Cmd","lock:Link","lock:forward","lock:Keyboard","lock:geam","lock:Photo","lock:Animation","lock:Video","lock:Audio","lock:vico","lock:Sticker","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..lock..msg.chat_id_,'del')
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل جميع الاوامر* ')
end,nil)   
end
if text == 'قفل الاباحي' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Lock:Xn"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الاباحي* ')
end,nil)   
elseif text == 'فتح الاباحي' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Lock:Xn"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح الاباحي* ')
end,nil)   
end
if text == 'فتح الانلاين' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:inline"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح الانلاين* ')
end,nil)
elseif text == 'فتح الاضافه' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:AddMempar"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح اضافة* ')
end,nil)   
elseif text == 'فتح الدردشه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:del(bot_id.."lock:text"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح الدردشه* ')
end,nil)   
elseif text == 'فتح الدخول' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:Join"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح دخول* ')
end,nil)   
elseif text == 'فتح البوتات' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:Bot:kick"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فـتح البوتات* ')
end,nil)   
elseif text == 'فتح البوتات بالطرد' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:Bot:kick"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فـتح البوتات بالطرد* ')
end,nil)   
elseif text == 'فتح الاشعارات' and msg.reply_to_message_id_ == 0 and Mod(msg) then  
database:del(bot_id..'lock:tagservr'..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فـتح الاشعارات* ')
end,nil)   
elseif text == 'فتح التثبيت' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."lockpin"..msg.chat_id_)  
database:srem(bot_id..'lock:pin',msg.chat_id_)
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فـتح التثبيت* ')
end,nil)   
elseif text == 'فتح التعديل' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id..'lock:edit'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فـتح تعديل* ')
end,nil)   
elseif text == 'فتح الفشار' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:del(bot_id..'lock:Fshar'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فـتح الفشار* ')
end,nil)   
elseif text == 'فتح الفارسيه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:del(bot_id..'lock:Fars'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فـتح الفارسيه* ')
end,nil)   
elseif text == 'فتح الانكليزيه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:del(bot_id..'lock:Engilsh'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فـتح النكليزيه* ')
end,nil)
elseif text == 'فتح تعديل الميديا' and msg.reply_to_message_id_ == 0 and BasicConstructor(msg) then 
database:del(bot_id..'lock_edit_med'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فـتح تعديل* ')
end,nil)   
elseif text == 'فتح الكل' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id..'lock:tagservrbot'..msg.chat_id_)   
list ={"lock:Bot:kick","lock:user:name","lock:hashtak","lock:Cmd","lock:Link","lock:forward","lock:Keyboard","lock:geam","lock:Photo","lock:Animation","lock:Video","lock:Audio","lock:vico","lock:Sticker","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..lock..msg.chat_id_)
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فـتح جميع الاوامر* ')
end,nil)   
end
if text == 'قفل الروابط' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Link"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الروابط* ')
end,nil)   
elseif text == 'قفل الروابط بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Link"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الروابط بالتقييد* ')
end,nil)   
elseif text == 'قفل الروابط بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Link"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الروابط بالكتم* ')
end,nil)   
elseif text == 'قفل الروابط بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Link"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الروابط بالطرد* ')
end,nil)   
elseif text == 'فتح الروابط' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Link"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح الروابط* ')
end,nil)   
end
if text == 'قفل المعرفات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:user:name"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل المعرفات* ')
end,nil)   
elseif text == 'قفل المعرفات بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:user:name"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل المعرفات بالتقييد* ')
end,nil)   
elseif text == 'قفل المعرفات بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:user:name"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل المعرفات بالكتم* ')
end,nil)   
elseif text == 'قفل المعرفات بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:user:name"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل المعرفات بالطرد* ')
end,nil)   
elseif text == 'فتح المعرفات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:user:name"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح المعرفات* ')
end,nil)   
end
if text == 'تفعيل نسبه الحب' and Manager(msg) then   
if database:get(bot_id..'Cick:lov'..msg.chat_id_) then
Text = ' *𖢅︙تم تفعيل نسبه الحب*'
database:del(bot_id..'Cick:lov'..msg.chat_id_)  
else
Text = ' *𖢅︙بالتاكيد تم تفعيل نسبه الحب*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل نسبه الحب' and Manager(msg) then  
if not database:get(bot_id..'Cick:lov'..msg.chat_id_) then
database:set(bot_id..'Cick:lov'..msg.chat_id_,true)  
Text = '\n *𖢅︙تم تعطيل نسبه الحب*'
else
Text = '\n *𖢅︙بالتاكيد تم تعطيل نسبه الحب*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل نسبه الرجوله' and Manager(msg) then   
if database:get(bot_id..'Cick:rjo'..msg.chat_id_) then
Text = ' *𖢅︙تم تفعيل نسبه الرجوله*'
database:del(bot_id..'Cick:rjo'..msg.chat_id_)  
else
Text = ' *𖢅︙بالتاكيد تم تفعيل الرجوله*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل نسبه الرجوله' and Manager(msg) then  
if not database:get(bot_id..'Cick:rjo'..msg.chat_id_) then
database:set(bot_id..'Cick:rjo'..msg.chat_id_,true)  
Text = '\n *𖢅︙تم تعطيل نسبه الرجوله*'
else
Text = '\n *𖢅︙بالتاكيد تم تعطيل نسبه الرجوله*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل نسبه الكره' and Manager(msg) then   
if database:get(bot_id..'Cick:krh'..msg.chat_id_) then
Text = ' *𖢅︙تم تفعيل نسبه الكره*'
database:del(bot_id..'Cick:krh'..msg.chat_id_)  
else
Text = ' *𖢅︙بالتاكيد تم تفعيل نسبه الكره*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل نسبه الكره' and Manager(msg) then  
if not database:get(bot_id..'Cick:krh'..msg.chat_id_) then
database:set(bot_id..'Cick:krh'..msg.chat_id_,true)  
Text = '\n *𖢅︙تم تعطيل نسبه الكره*'
else
Text = '\n *𖢅︙بالتاكيد تم تعطيل نسبه الكره*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل نسبه الانوثه' and Manager(msg) then   
if database:get(bot_id..'Cick:ano'..msg.chat_id_) then
Text = ' *𖢅︙تم تفعيل نسبه الانوثه*'
database:del(bot_id..'Cick:ano'..msg.chat_id_)  
else
Text = ' *𖢅︙بالتاكيد تم تفعيل الانوثه*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل نسبه الانوثه' and Manager(msg) then  
if not database:get(bot_id..'Cick:ano'..msg.chat_id_) then
database:set(bot_id..'Cick:ano'..msg.chat_id_,true)  
Text = '\n *𖢅︙تم تعطيل نسبه الانوثه*'
else
Text = '\n *𖢅︙بالتاكيد تم تعطيل نسبه الانوثه*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل غنيلي' and SudoBotCoSu(msg) then   
if database:get(bot_id..'sing:for:me'..msg.chat_id_) then
Text = ' *𖢅︙تم تفعيل امر غنيلي الان ارسل غنيلي*'
database:del(bot_id..'sing:for:me'..msg.chat_id_)  
else
Text = ' *𖢅︙بالتاكيد تم تفعيل امر غنيلي تستطيع ارسال غنيلي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل غنيلي' and SudoBotCoSu(msg) then  
if not database:get(bot_id..'sing:for:me'..msg.chat_id_) then
database:set(bot_id..'sing:for:me'..msg.chat_id_,true)  
Text = '\n *𖢅︙تم تعطيل امر غنيلي*'
else
Text = '\n *𖢅︙بالتاكيد تم تعطيل امر غنيلي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'قفل التاك' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:hashtak"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل التاك* ')
end,nil)   
elseif text == 'قفل التاك بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:hashtak"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل التاك بالتقييد* ')
end,nil)   
elseif text == 'قفل التاك بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:hashtak"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..string.sub(data.first_name_,0,60)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل التاك بالكتم* ')
end,nil)   
elseif text == 'قفل التاك بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:hashtak"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل التاك بالطرد* ')
end,nil)   
elseif text == 'فتح التاك' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:hashtak"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح التاك* ')
end,nil)   
end
if text == 'قفل الشارحه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Cmd"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الشارحه* ')
end,nil)   
elseif text == 'قفل الشارحه بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Cmd"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الشارحه بالتقييد* ')
end,nil)   
elseif text == 'قفل الشارحه بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Cmd"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الشارحه بالكتم* ')
end,nil)   
elseif text == 'قفل الشارحه بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Cmd"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الشارحه بالطرد* ')
end,nil)   
elseif text == 'فتح الشارحه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Cmd"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح الشارحه* ')
end,nil)   
end
if text == 'قفل الصور'and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Photo"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الصور* ')
end,nil)   
elseif text == 'قفل الصور بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Photo"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الصور بالتقييد* ')
end,nil)   
elseif text == 'قفل الصور بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Photo"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الصور بالكتم* ')
end,nil)   
elseif text == 'قفل الصور بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Photo"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الصور بالطرد* ')
end,nil)   
elseif text == 'فتح الصور' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Photo"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح الصور* ')
end,nil)   
end
if text == 'قفل الفيديو' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Video"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الفيديو* ')
end,nil)   
elseif text == 'قفل الفيديو بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Video"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الفيديو بالتقييد* ')
end,nil)   
elseif text == 'قفل الفيديو بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Video"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الفيديو بالكتم* ')
end,nil)   
elseif text == 'قفل الفيديو بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Video"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الفيديو بالطرد* ')
end,nil)   
elseif text == 'فتح الفيديو' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Video"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح الفيديو* ')
end,nil)   
end
if text == 'قفل المتحركه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Animation"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,'  *𖢅︙بواسطه* » ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل المتحركه* ')
end,nil)   
elseif text == 'قفل المتحركه بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Animation"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل المتحركه بالتقييد* ')
end,nil)   
elseif text == 'قفل المتحركه بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Animation"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل المتحركه بالكتم* ')
end,nil)   
elseif text == 'قفل المتحركه بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Animation"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل المتحركه بالطرد* ')
end,nil)   
elseif text == 'فتح المتحركه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Animation"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح المتحركه* ')
end,nil)   
end
if text == 'قفل الالعاب' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:geam"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الالعاب* ')
end,nil)   
elseif text == 'قفل الالعاب بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:geam"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الالعاب بالتقييد* ')
end,nil)   
elseif text == 'قفل الالعاب بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:geam"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الالعاب بالكتم* ')
end,nil)   
elseif text == 'قفل الالعاب بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:geam"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الالعاب بالطرد* ')
end,nil)   
elseif text == 'فتح الالعاب' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:geam"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح الالعاب* ')
end,nil)   
end
if text == 'قفل الاغاني' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Audio"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الاغاني* ')
end,nil)   
elseif text == 'قفل الاغاني بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Audio"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الاغاني بالتقييد* ')
end,nil)   
elseif text == 'قفل الاغاني بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Audio"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الاغاني بالكتم* ')
end,nil)   
elseif text == 'قفل الاغاني بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Audio"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الاغاني بالطرد* ')
end,nil)   
elseif text == 'فتح الاغاني' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Audio"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح الاغاني* ')
end,nil)   
end
if text == 'قفل الصوت' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:vico"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الصوت* ')
end,nil)   
elseif text == 'قفل الصوت بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:vico"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الصوت بالتقييد* ')
end,nil)   
elseif text == 'قفل الصوت بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:vico"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الصوت بالكتم* ')
end,nil)   
elseif text == 'قفل الصوت بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:vico"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الصوت بالطرد* ')
end,nil)   
elseif text == 'فتح الصوت' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:vico"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n *𖢅︙تـم فتح الصوت* ')
end,nil)   
end
if text == 'قفل الكيبورد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Keyboard"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الكيبورد* ')
end,nil)   
elseif text == 'قفل الكيبورد بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Keyboard"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الكيبورد بالتقييد* ')
end,nil)   
elseif text == 'قفل الكيبورد بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Keyboard"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الكيبورد بالكتم* ')  
end,nil)   
elseif text == 'قفل الكيبورد بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Keyboard"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الكيبورد بالطرد* ')  
end,nil)   
elseif text == 'فتح الكيبورد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Keyboard"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح الكيبورد* ')  
end,nil)   
end
if text == 'قفل الملصقات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Sticker"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الملصقات* ')  
end,nil)   
elseif text == 'قفل الملصقات بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Sticker"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الملصقات بالتقييد* ')  
end,nil)
elseif text == 'قفل الملصقات بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Sticker"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الملصقات بالكتم* ')  
end,nil)   
elseif text == 'قفل الملصقات بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Sticker"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الملصقات بالطرد* ')  
end,nil)   
elseif text == 'فتح الملصقات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Sticker"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح الملصقات* ')  
end,nil)   
end
if text == 'قفل التوجيه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:forward"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل التوجيه* ')  
end,nil)   
elseif text == 'قفل التوجيه بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:forward"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل التوجيه بالتقييد* ')  
end,nil)
elseif text == 'قفل التوجيه بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:forward"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل التوجيه بالكتم* ')  
end,nil)   
elseif text == 'قفل التوجيه بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:forward"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل التوجيه بالطرد* ')  
end,nil)   
elseif text == 'فتح التوجيه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:forward"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح التوجيه* ')  
end,nil)   
end
if text == 'قفل الملفات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Document"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الملفات* ')  
end,nil)   
elseif text == 'قفل الملفات بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Document"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الملفات بالتقييد* ')  
end,nil)
elseif text == 'قفل الملفات بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Document"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الملفات بالكتم* ')  
end,nil)   
elseif text == 'قفل الملفات بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Document"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الملفات بالطرد* ')  
end,nil)   
elseif text == 'فتح الملفات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Document"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح الملفات* ')  
end,nil)   
end
if text == 'قفل السيلفي' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Unsupported"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل السيلفي* ')  
end,nil)   
elseif text == 'قفل السيلفي بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Unsupported"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل السيلفي بالتقييد* ')  
end,nil)
elseif text == 'قفل السيلفي بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Unsupported"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل السيلفي بالكتم* ')  
end,nil)   
elseif text == 'قفل السيلفي بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Unsupported"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل السيلفي بالطرد* ')  
end,nil)   
elseif text == 'فتح السيلفي' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Unsupported"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح السيلفي* ')  
end,nil)   
end
if text == 'قفل الماركداون' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Markdaun"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الماركداون* ')  
end,nil)   
elseif text == 'قفل الماركداون بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Markdaun"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الماركداون بالتقييد* ')  
end,nil)
elseif text == 'قفل الماركداون بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Markdaun"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الماركداون بالكتم* ')  
end,nil)   
elseif text == 'قفل الماركداون بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Markdaun"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الماركداون بالطرد* ')  
end,nil)   
elseif text == 'فتح الماركداون' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Markdaun"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح الماركداون* ')  
end,nil)   
end
if text == 'قفل الجهات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Contact"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الجهات* ')  
end,nil)   
elseif text == 'قفل الجهات بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Contact"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الجهات بالتقييد* ')  
end,nil)
elseif text == 'قفل الجهات بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Contact"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الجهات بالكتم* ')  
end,nil)   
elseif text == 'قفل الجهات بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Contact"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الجهات بالطرد* ')  
end,nil)   
elseif text == 'فتح الجهات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Contact"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح الجهات* ')  
end,nil)   
end
if text == 'قفل الكلايش' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Spam"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الكلايش* ')  
end,nil)   
elseif text == 'قفل الكلايش بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Spam"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الكلايش بالتقييد* ')  
end,nil)
elseif text == 'قفل الكلايش بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Spam"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الكلايش بالكتم* ')  
end,nil)   
elseif text == 'قفل الكلايش بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Spam"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل الكلايش بالطرد* ')  
end,nil)   
elseif text == 'فتح الكلايش' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Spam"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فتح الكلايش* ')  
end,nil)   
end
if text == 'قفل التكرار بالطرد' and Mod(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood",'kick')  
send(msg.chat_id_, msg.id_,' *𖢅︙تم قفل التكرار بالطرد*')
elseif text == 'قفل التكرار' and Mod(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood",'del')  
send(msg.chat_id_, msg.id_,' *𖢅︙تم قفل التكرار*')
elseif text == 'قفل التكرار بالتقييد' and Mod(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood",'keed')  
send(msg.chat_id_, msg.id_,' *𖢅︙تم قفل التكرار بالتقييد*')
elseif text == 'قفل التكرار بالكتم' and Mod(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood",'mute')  
send(msg.chat_id_, msg.id_,' *𖢅︙تم قفل التكرار بالكتم*')
elseif text == 'فتح التكرار' and Mod(msg) then 
database:hdel(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood")  
send(msg.chat_id_, msg.id_,' *𖢅︙تم فتح التكرار*')
end
هيمو ال تميم
if text == 'تحديث' and DevBILLAW(msg) then
dofile('BILLA.lua')  
send(msg.chat_id_, msg.id_, ' *𖢅︙تم تحديث جميع الملفات*') 
end 
if text == ("مسح قائمه العام") and DevBILLAW(msg) then
database:del(bot_id..'GBan:User')
send(msg.chat_id_, msg.id_, '\n *𖢅︙تم مسح قائمه العام*')
return false
end
if text == ("قائمه العام") and DevBILLAW(msg) then
local list = database:smembers(bot_id..'GBan:User')
t = "\n *𖢅︙قائمة المحظورين عام* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد محظورين عام*"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("حظر عام") and msg.reply_to_message_id_ and DevBILLAW(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if BILLASudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *𖢅︙لا تسطيع حظر البوت عام*")
return false 
end
database:sadd(bot_id..'GBan:User', result.sender_user_id_)
chat_kick(result.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},
function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم حظره عام من الكروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^حظر عام @(.*)$")  and DevBILLAW(msg) then
local username = text:match("^حظر عام @(.*)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *𖢅︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if BILLASudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *𖢅︙لا تسطيع حظر البوت عام*")
return false 
end
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم حظره عام من الكروبات*'
texts = usertext..status
database:sadd(bot_id..'GBan:User', result.id_)
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^حظر عام (%d+)$") and DevBILLAW(msg) then
local userid = text:match("^حظر عام (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if BILLASudoBot(userid) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *𖢅︙لا تسطيع حظر البوت عام*")
return false 
end
database:sadd(bot_id..'GBan:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم حظره عام من الكروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم حظره عام من الكروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("كتم عام") and msg.reply_to_message_id_ and DevBILLAW(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if BILLASudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *𖢅︙لا تسطيع كتم البوت عام*")
return false 
end
database:sadd(bot_id..'Gmute:User', result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},
function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم كتمه عام من الكروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^كتم عام @(.*)$")  and DevBILLAW(msg) then
local username = text:match("^كتم عام @(.*)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *𖢅︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if BILLASudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *𖢅︙لا تسطيع كتم البوت عام*")
return false 
end
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم كتمه عام من الكروبات*'
texts = usertext..status
database:sadd(bot_id..'Gmute:User', result.id_)
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^كتم عام (%d+)$") and DevBILLAW(msg) then
local userid = text:match("^كتم عام (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if BILLASudoBot(bot_id) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *𖢅︙لا تسطيع كتم البوت عام*")
return false 
end
database:sadd(bot_id..'Gmute:User', userid)

tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم كتمه عام من الكروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم كتمه عام من الكروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("الغاء العام") and msg.reply_to_message_id_ and DevBILLAW(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم الغاء (الحظر-الكتم) عام من الكروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
database:srem(bot_id..'GBan:User', result.sender_user_id_)
database:srem(bot_id..'Gmute:User', result.sender_user_id_)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^الغاء العام @(.*)$") and DevBILLAW(msg) then
local username = text:match("^الغاء العام @(.*)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم الغاء (الحظر-الكتم) عام من الكروبات*'
texts = usertext..status
database:srem(bot_id..'GBan:User', result.id_)
database:srem(bot_id..'Gmute:User', result.id_)
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^الغاء العام (%d+)$") and DevBILLAW(msg) then
local userid = text:match("^الغاء العام (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'GBan:User', userid)
database:srem(bot_id..'Gmute:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم الغاء (الحظر-الكتم) عام من الكروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم حظره عام من الكروبات*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
هيمو ال تميم
if text == ("مسح المطورين") and DevBILLAW(msg) then
database:del(bot_id..'Sudo:User')
send(msg.chat_id_, msg.id_, "\n *𖢅︙تم مسح قائمة المطورين*  ")
end
if text == ("المطورين") and DevBILLAW(msg) then
local list = database:smembers(bot_id..'Sudo:User')
t = "\n *𖢅︙قائمة مطورين البوت* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد مطورين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "تاك للمشرفين" and CoSu then
if database:get(bot_id.."VVVZVV:admin:Time"..msg.chat_id_) then 
return
send(msg.chat_id_, msg.id_,"انتظر دقيقه من فضلك")
end
database:setex(bot_id..'VVVZVV:admin:Time'..msg.chat_id_..':'..msg.sender_user_id_,300,true)
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100 },function(extra,result,success)
m = 0
tgad = 0
local ans = result.members_  
for k, v in pairs(ans) do
tdcli_function({ID="GetUser",user_id_ = v.user_id_},function(arg,data)
if m == 1 or m == tgad or k == 0 then
tgad = m + 5
t = "#Admin"
end
m = m + 1
Adminame = data.first_name_
Adminame = Adminame:gsub("]","")
Adminame = Adminame:gsub("[[]","")
t = t..", ["..Adminame.."](tg://user?id="..v.user_id_..")"
if m == 1 or m == tgad or k == 0 then
local Text = t:gsub('#Admin,','#Admin\n')
sendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
end
end,nil)
end
end,nil)
end

if text == 'الملفات' and DevBILLAW(msg) then
t = ' *𖢅︙ملفات السورس بيلا ↓*\n*•━━━━━━ 𝑩𝑰 ━━━━━━━•* \n'
i = 0
for v in io.popen('ls File_Bot'):lines() do
if v:match(".lua$") then
i = i + 1
t = t..i..'*- الملف »* {'..v..'}\n'
end
end
send(msg.chat_id_, msg.id_,t)
end
if text == "متجر الملفات" or text == 'المتجر' then
if DevBILLAW(msg) then
local Get_Files, res = https.request("https://raw.githubusercontent.com/BILLATEAM/Files_BILLA/main/getfile.json")
if res == 200 then
local Get_info, res = pcall(JSON.decode,Get_Files);
vardump(res.plugins_)
if Get_info then
local TextS = "\n *𖢅︙اهلا بك في متجر ملفات بيلا*\n*𖢅︙ملفات السورس ↓*\n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n\n"
local TextE = "\n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n *𖢅︙علامة تعني { ✓ } ملف مفعل*\n *𖢅︙علامة تعني { ✘ } ملف معطل*\n *𖢅︙قناة سورس بيلا ↓*\n".." *𖢅︙*[اضغط هنا لدخول](t.me/EE28i) \n"
local NumFile = 0
for name,Info in pairs(res.plugins_) do
local Check_File_is_Found = io.open("File_Bot/"..name,"r")
if Check_File_is_Found then
io.close(Check_File_is_Found)
CeckFile = "(✓)"
else
CeckFile = "(✘)"
end
NumFile = NumFile + 1
TextS = TextS..'*'..NumFile.."→* {`"..name..'`} » '..CeckFile..'\n[-Information]('..Info..')\n'
end
send(msg.chat_id_, msg.id_,TextS..TextE) 
end
else
send(msg.chat_id_, msg.id_," *𖢅︙لا يوجد اتصال من ال api* \n") 
end
return false
end
end

if text and text:match("^(تعطيل) (.*)(.lua)$") and DevBILLAW(msg) then
local name_t = {string.match(text, "^(تعطيل) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("File_Bot/"..file,"r")
if file_bot then
io.close(file_bot)
t = " *𖢅︙الملف »* "..file.."\n*𖢅︙تم تعطيل ملف* \n"
else
t = " *𖢅︙بالتاكيد تم تعطيل ملف →* "..file.."\n"
end
local json_file, res = https.request("https://raw.githubusercontent.com/BILLATEAM/Files_BILLA/main/File_Bot/"..file)
if res == 200 then
os.execute("rm -fr File_Bot/"..file)
send(msg.chat_id_, msg.id_,t) 
dofile('BILLA.lua')  
else
send(msg.chat_id_, msg.id_," *𖢅︙عذرا الملف لايدعم سورس بيلا* \n") 
end
return false
end
if text and text:match("^(تفعيل) (.*)(.lua)$") and DevBILLAW(msg) then
local name_t = {string.match(text, "^(تفعيل) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("File_Bot/"..file,"r")
if file_bot then
io.close(file_bot)
t = " *𖢅︙بالتاكيد تم تفعيل ملف →* "..file.." \n"
else
t = " *𖢅︙الملف »* "..file.."\n*𖢅︙تم تفعيل ملف* \n"
end
local json_file, res = https.request("https://raw.githubusercontent.com/BILLATEAM/Files_BILLA/main/File_Bot/"..file)
if res == 200 then
local chek = io.open("File_Bot/"..file,'w+')
chek:write(json_file)
chek:close()
send(msg.chat_id_, msg.id_,t) 
dofile('BILLA.lua')  
else
send(msg.chat_id_, msg.id_," *𖢅︙عذرا الملف لايدعم سورس بيلا* \n") 
end
return false
end
if text == "مسح الملفات" and DevBILLAW(msg) then
os.execute("rm -fr File_Bot/*")
send(msg.chat_id_,msg.id_," *𖢅︙تم مسح الملفات*")
return false
end

if text == ("رفع مطور") and msg.reply_to_message_id_ and DevBILLAW(msg) then
function start_function(extra, result, success)
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:sadd(bot_id..'Sudo:User', result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم ترقيته مطور*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false 
end
if text and text:match("^رفع مطور @(.*)$") and DevBILLAW(msg) then
local username = text:match("^رفع مطور @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*𖢅︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Sudo:User', result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم ترقيته مطور*'
texts = usertext..status
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false 
end
if text and text:match("^رفع مطور (%d+)$") and DevBILLAW(msg) then
local userid = text:match("^رفع مطور (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:sadd(bot_id..'Sudo:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n *𖢅︙تم ترقيته مطور*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم ترقيته مطور*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false 
end
if text == ("تنزيل مطور") and msg.reply_to_message_id_ and DevBILLAW(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Sudo:User', result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من المطورين*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false 
end
if text and text:match("^تنزيل مطور @(.*)$") and DevBILLAW(msg) then
local username = text:match("^تنزيل مطور @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Sudo:User', result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من المطورين*'
texts = usertext..status
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end  
if text and text:match("^تنزيل مطور (%d+)$") and DevBILLAW(msg) then
local userid = text:match("^تنزيل مطور (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'Sudo:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من المطورين*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم تنزيله من المطورين*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false 
end
if text == ("مسح قائمه المالك") and Sudo(msg) then
database:del(bot_id..'CoSu'..msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n *𖢅︙تم مسح قائمه المالك*')
return false
end

if text == 'قائمه المالك' and Sudo(msg) then
local list = database:smembers(bot_id..'CoSu'..msg.chat_id_)
t = "\n *𖢅︙قائمه المالك* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد احد في قائمه المالك*"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("صيح للمالك") or text == ("تاك للمالك") then
local list = database:smembers(bot_id..'CoSu'..msg.chat_id_)
t = "\n *𖢅︙وينكم تعالو يريدوكم بكروب* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد احد في قائمه المالك*"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع مالك") and msg.reply_to_message_id_ and Sudo(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم ترقيته مالك*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع مالك @(.*)$") and Sudo(msg) then
local username = text:match("^رفع مالك @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *𖢅︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'CoSu'..msg.chat_id_, result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم ترقيته مالك*'
texts = usertext..status
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^رفع مالك (%d+)$") and Sudo(msg) then
local userid = text:match("^رفع مالك (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:sadd(bot_id..'CoSu'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم ترقيته مالك*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم ترقيته مالك*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("تنزيل مالك") and msg.reply_to_message_id_ and Sudo(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من المالكين*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل مالك @(.*)$") and Sudo(msg) then
local username = text:match("^تنزيل مالك @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'CoSu'..msg.chat_id_, result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من المالكين*'
texts = usertext..status
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^تنزيل مالك (%d+)$") and Sudo(msg) then
local userid = text:match("^تنزيل مالك (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'CoSu'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من المالكين*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم تنزيله من المالكين*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
هيمو ال تميم
if text == ("مسح الاساسين") and SudoBotCoSu(msg) then
database:del(bot_id..'Basic:Constructor'..msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n *𖢅︙تم مسح المنشئين الاساسين*')
return false
end
if (msg.content_.sticker_)  and msg.reply_to_message_id_ == 0 and database:get(bot_id.."lock:Lock:Xn"..msg.chat_id_)=="del" then  
sticker_id = msg.content_.sticker_.sticker_.persistent_id_
st = https.request('https://vvvzvv.ml/Imagelnfo.php?token='..token..'&url='..sticker_id.."&type=sticker")
eker = JSON.decode(st)
if eker.ok.Info == "Indecent" then
local list = database:smembers(bot_id.."Basic:Constructor"..msg.chat_id_)
t = "*𖢅︙المنشئين الاساسين تعالو مخرب* \n *•━━━━━━ 𝑩𝑰 ━━━━━━━•* \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "*𖢅︙ماكو منششئين يشوفولك جاره*"
end
Reply_Status(msg,msg.sender_user_id_,"reply","*𖢅︙قام بنشر ملصق اباحيه*\n"..t)  
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.id_),msg.id_})   
end   
end
if text == 'ملصق' then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.photo_ then 
local pn = result.content_.photo_.sizes_[1].photo_.persistent_id_
Addsticker(msg,msg.chat_id_,pn,msg.sender_user_id_..'.png')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'صوت' then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.voice_ then 
local mr = result.content_.voice_.voice_.persistent_id_ 
Addmp3(msg,msg.chat_id_,mr,msg.sender_user_id_..'.mp3')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'بصمه' then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.audio_ then 
local mr = result.content_.audio_.audio_.persistent_id_
Addvoi(msg,msg.chat_id_,mr,msg.sender_user_id_..'.ogg')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'صوره' then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.sticker_ then 
local Str = result.content_.sticker_.sticker_.persistent_id_ 
Addjpg(msg,msg.chat_id_,Str,msg.sender_user_id_..'.jpg')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if (msg.content_.photo_) and msg.reply_to_message_id_ == 0 and database:get(bot_id.."lock:Lock:Xn"..msg.chat_id_)=="del" then
photo_id = msg.content_.photo_.sizes_[1].photo_.persistent_id_  
Srrt = https.request('https://vvvzvv.ml/Imagelnfo.php?token='..token..'&url='..photo_id.."&type=photo")
Sto = JSON.decode(Srrt)
if Sto.ok.Info == "Indecent" then
local list = database:smembers(bot_id.."Basic:Constructor"..msg.chat_id_)
t = "*𖢅︙المنشئين الاساسين تعالو مخرب* \n *•━━━━━━ 𝑩𝑰 ━━━━━━━•* \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "*𖢅︙ماكو منششئين يشوفولك جاره*"
end
Reply_Status(msg,msg.sender_user_id_,"reply","*𖢅︙قام بنشر صوره اباحيه*\n"..t)  
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.id_),msg.id_})   
end   
end
if text == 'المنشئين الاساسين' and SudoBotCoSu(msg) then
local list = database:smembers(bot_id..'Basic:Constructor'..msg.chat_id_)
t = "\n *𖢅︙قائمة المنشئين الاساسين* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد منشئين اساسين*"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("تاك للمنشئين الاساسين") or text == ("صيح المنشئين الاساسين") then
local list = database:smembers(bot_id..'Basic:Constructor'..msg.chat_id_)
t = "\n *𖢅︙وينكم تعالو يريدوكم بكروب* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد منشئين اساسين*"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع منشئ اساسي") and msg.reply_to_message_id_ and SudoBotCoSu(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم ترقيته منشئ اساسي*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع منشئ اساسي @(.*)$") and SudoBotCoSu(msg) then
local username = text:match("^رفع منشئ اساسي @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *𖢅︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم ترقيته منشئ اساسي*'
texts = usertext..status
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^رفع منشئ اساسي (%d+)$") and SudoBotCoSu(msg) then
local userid = text:match("^رفع منشئ اساسي (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم ترقيته منشئ اساسي*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم ترقيته منشئ اساسي*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("تنزيل منشئ اساسي") and msg.reply_to_message_id_ and SudoBotCoSu(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من الاساسيين*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل منشئ اساسي @(.*)$") and SudoBotCoSu(msg) then
local username = text:match("^تنزيل منشئ اساسي @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_, result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من الاساسيين*'
texts = usertext..status
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^تنزيل منشئ اساسي (%d+)$") and SudoBotCoSu(msg) then
local userid = text:match("^تنزيل منشئ اساسي (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من الاساسيين*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم تنزيله من الاساسيين*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
هيمو ال تميم
if text == 'مسح المنشئين' and BasicConstructor(msg) then
database:del(bot_id..'Constructor'..msg.chat_id_)
texts = ' *𖢅︙تم مسح المنشئين* '
send(msg.chat_id_, msg.id_, texts)
end

if text == ("المنشئين") and BasicConstructor(msg) then
local list = database:smembers(bot_id..'Constructor'..msg.chat_id_)
t = "\n *𖢅︙قائمة المنشئين* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد منشئين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("تاك للمنشئين") or text == ("صيح المنشئين") then
local list = database:smembers(bot_id..'Constructor'..msg.chat_id_)
t = "\n *𖢅︙وينكم تعالو يريدوكم بكروب* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد منشئين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text ==("المنشئ") then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
if b.first_name_ == false then
send(msg.chat_id_, msg.id_," *𖢅︙حساب المنشئ محذوف*")
return false  
end
local UserName = (b.username_ or "EE28i")
send(msg.chat_id_, msg.id_," 𖢅︙منشئ الكروب » ["..b.first_name_.."](T.me/"..UserName..")")  
end,nil)   
end
end
end,nil)   
end
if text == "رفع منشئ" and msg.reply_to_message_id_ and BasicConstructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙ اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم ترقيته منشئ*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text and text:match("^رفع منشئ @(.*)$") and BasicConstructor(msg) then
local username = text:match("^رفع منشئ @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *𖢅︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Constructor'..msg.chat_id_, result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم ترقيته منشئ*'
texts = usertext..status
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
هيمو ال تميم
if text and text:match("^رفع منشئ (%d+)$") and BasicConstructor(msg) then
local userid = text:match("^رفع منشئ (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:sadd(bot_id..'Constructor'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم ترقيته منشئ*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙ اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم ترقيته منشئ*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end
if text and text:match("^تنزيل منشئ$") and msg.reply_to_message_id_ and BasicConstructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من المنشئين*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
------------------------------------------------------------------------
if text and text:match("^تنزيل منشئ @(.*)$") and BasicConstructor(msg) then
local username = text:match("^تنزيل منشئ @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من المنشئين*'
texts = usertext..status
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
------------------------------------------------------------------------
if text and text:match("^تنزيل منشئ (%d+)$") and BasicConstructor(msg) then
local userid = text:match("^تنزيل منشئ (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'Constructor'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من المنشئين*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم تنزيله من المنشئين*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end
هيمو ال تميم
if text == 'مسح المدراء' and Constructor(msg) then
database:del(bot_id..'Manager'..msg.chat_id_)
texts = ' *𖢅︙تم مسح المدراء* '
send(msg.chat_id_, msg.id_, texts)
end
if text == ("المدراء") and Constructor(msg) then
local list = database:smembers(bot_id..'Manager'..msg.chat_id_)
t = "\n *𖢅︙قائمة المدراء* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد مدراء*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("تاك للمدراء") or text == ("صيح المدراء") then
local list = database:smembers(bot_id..'Manager'..msg.chat_id_)
t = "\n *𖢅︙وينكم تعالو يريدوكم بكروب* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد مدراء*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("رفع مدير") and msg.reply_to_message_id_ and Constructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم ترقيته مدير*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end  
if text and text:match("^رفع مدير @(.*)$") and Constructor(msg) then
local username = text:match("^رفع مدير @(.*)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *𖢅︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Manager'..msg.chat_id_, result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم ترقيته مدير*'
texts = usertext..status
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end 

if text and text:match("^رفع مدير (%d+)$") and Constructor(msg) then
local userid = text:match("^رفع مدير (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:sadd(bot_id..'Manager'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم ترقيته مدير*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم ترقيته مدير*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end  
if text == ("تنزيل مدير") and msg.reply_to_message_id_ and Constructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من المدراء*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end  
if text and text:match("^تنزيل مدير @(.*)$") and Constructor(msg) then
local username = text:match("^تنزيل مدير @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من المدراء*'
texts = usertext..status
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end  
if text and text:match("^تنزيل مدير (%d+)$") and Constructor(msg) then
local userid = text:match("^تنزيل مدير (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'Manager'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من المدراء*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم تنزيله من المدراء*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
هيمو ال تميم
if text ==("رفع الادمنيه") and Manager(msg) then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local num2 = 0
local admins = data.members_
for i=0 , #admins do
if data.members_[i].bot_info_ == false and data.members_[i].status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
num2 = num2 + 1
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,b) 
if b.username_ == true then
end
if b.first_name_ == false then
database:srem(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end,nil)   
else
database:srem(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end
if num2 == 0 then
send(msg.chat_id_, msg.id_," *𖢅︙لا يوجد ادمنيه ليتم رفعهم*") 
else
send(msg.chat_id_, msg.id_," *𖢅︙تمت ترقيه { "..num2.." } من الادمنيه*") 
end
end,nil)   
end
if text == ("رفع مطور ثانوي") and tonumber(msg.reply_to_message_id_) ~= 0 and SudoBot(msg) then
function Function_BILLA(extra, result, success)
database:sadd(bot_id.."DEV:Sudo:T", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*𖢅︙تم ترقيته مطور ثانوي في البوت*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_BILLA, nil)
return false 
end
if text and text:match("^رفع مطور ثانوي @(.*)$") and SudoBot(msg) then
local username = text:match("^رفع مطور ثانوي @(.*)$")
function Function_BILLA(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*𖢅︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id.."DEV:Sudo:T", result.id_)
Reply_Status(msg,result.id_,"reply","*𖢅︙تم ترقيته مطور ثانوي في البوت*")  
else
send(msg.chat_id_, msg.id_,"*𖢅︙لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_BILLA, nil)
return false 
end
if text and text:match("^رفع مطور ثانوي (%d+)$") and SudoBot(msg) then
local userid = text:match("^رفع مطور ثانوي (%d+)$")
database:sadd(bot_id.."DEV:Sudo:T", userid)
Reply_Status(msg,userid,"reply","*𖢅︙تم ترقيته مطور ثانوي في البوت*")  
return false 
end
if text == ("تنزيل مطور ثانوي") and tonumber(msg.reply_to_message_id_) ~= 0 and SudoBot(msg) then
function Function_BILLA(extra, result, success)
database:srem(bot_id.."DEV:Sudo:T", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*𖢅︙تم تنزيله من المطور ثانويين*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_BILLA, nil)
return false 
end
if text and text:match("^تنزيل مطور ثانوي @(.*)$") and SudoBot(msg) then
local username = text:match("^تنزيل مطور ثانوي @(.*)$")
function Function_BILLA(extra, result, success)
if result.id_ then
database:srem(bot_id.."DEV:Sudo:T", result.id_)
Reply_Status(msg,result.id_,"reply","*𖢅︙تم تنزيله من المطور ثانويين*")  
else
send(msg.chat_id_, msg.id_,"*𖢅︙لا يوجد حساب بهاذا المعرف*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_BILLA, nil)
return false
end  
if text and text:match("^تنزيل مطور ثانوي (%d+)$") and SudoBot(msg) then
local userid = text:match("^تنزيل مطور ثانوي (%d+)$")
database:srem(bot_id.."DEV:Sudo:T", userid)
Reply_Status(msg,userid,"reply","*𖢅︙تم تنزيله من المطور ثانويين*")  
return false 
end
if text == ("الثانويين") and SudoBot(msg) then
local list = database:smembers(bot_id.."DEV:Sudo:T")
t = "\n*𖢅︙قائمة مطورين الثانويين للبوت* \n *•━━━━━━ 𝑩𝑰 ━━━━━━━•* \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "*𖢅︙لا يوجد مطورين ثانويين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("مسح الثانويين") and SudoBot(msg) then
database:del(bot_id.."DEV:Sudo:T")
send(msg.chat_id_, msg.id_, "\n*𖢅︙تم مسح قائمة المطورين الثانويين*  ")
end
if text == 'مسح الادمنيه' and Manager(msg) then
database:del(bot_id..'Mod:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' 𖢅︙تم مسح الادمنيه')
end
if text == ("الادمنيه") and Manager(msg) then
local list = database:smembers(bot_id..'Mod:User'..msg.chat_id_)
t = "\n *𖢅︙قائمة الادمنيه* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد ادمنيه*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("تاك للادمنيه") or text == ("صيح الادمنيه") then
local list = database:smembers(bot_id..'Mod:User'..msg.chat_id_)
t = "\n *𖢅︙وينكم تعالو يريدوكم بكروب* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد ادمنيه*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("رفع ادمن") and msg.reply_to_message_id_ and Manager(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الرفع*') 
return false
end
database:sadd(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙العضو* » ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم ترقيته ادمن*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع ادمن @(.*)$") and Manager(msg) then
local username = text:match("^رفع ادمن @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *𖢅︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Mod:User'..msg.chat_id_, result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم ترقيته ادمن*'
texts = usertext..status
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^رفع ادمن (%d+)$") and Manager(msg) then
local userid = text:match("^رفع ادمن (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الرفع*') 
return false
end
database:sadd(bot_id..'Mod:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم ترقيته ادمن*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم ترقيته ادمن*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("تنزيل ادمن") and msg.reply_to_message_id_ and Manager(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من الادمنيه*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل ادمن @(.*)$") and Manager(msg) then
local username = text:match("^تنزيل ادمن @(.*)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من الادمنيه*'
texts = usertext..status
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^تنزيل ادمن (%d+)$") and Manager(msg) then
local userid = text:match("^تنزيل ادمن (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'Mod:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من الادمنيه*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم تنزيله من الادمنيه*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("طرد") and msg.reply_to_message_id_ ~=0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الطرد*') 
return false
end
function start_function(extra, result, success)
if BILLASudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *𖢅︙لا تسطيع طرد البوت* ")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *𖢅︙عذرا لا تستطيع طرد* ( '..Rutba(result.sender_user_id_,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *𖢅︙ ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *𖢅︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
statusk  = '\n*𖢅︙تم طرد العضو*'
send(msg.chat_id_, msg.id_, usertext..statusk)
end,nil)
chat_kick(result.chat_id_, result.sender_user_id_)
end,nil)   
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end  
if text and text:match("^طرد @(.*)$") and Mod(msg) then 
local username = text:match("^طرد @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الطرد*') 
return false
end
function start_function(extra, result, success)
if result.id_ then
if BILLASudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *𖢅︙لا تسطيع طرد البوت* ")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *𖢅︙عذرا لا تستطيع طرد* ( '..Rutba(result.id_,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*𖢅︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *𖢅︙ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *𖢅︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
statusk  = '\n*𖢅︙تم طرد العضو*'
texts = usertext..statusk
chat_kick(msg.chat_id_, result.id_)
send(msg.chat_id_, msg.id_, texts)
end,nil)   
end
else
send(msg.chat_id_, msg.id_, ' *𖢅︙لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end  

if text and text:match("^طرد (%d+)$") and Mod(msg) then 
local userid = text:match("^طرد (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الطرد*') 
return false
end
if BILLASudoBot(userid) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *𖢅︙لا تسطيع طرد البوت* ")
return false 
end
if Can_or_NotCan(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *𖢅︙عذرا لا تستطيع طرد* ( '..Rutba(userid,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *𖢅︙ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *𖢅︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
chat_kick(msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
 usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
 statusk  = '\n*𖢅︙تم طرد العضو*'
send(msg.chat_id_, msg.id_, usertext..statusk)
else
 usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
 statusk  = '\n*𖢅︙تم طرد العضو*'
send(msg.chat_id_, msg.id_, usertext..statusk)
end;end,nil)
end,nil)   
end
return false
end
هيمو ال تميم
هيمو ال تميم
if text == 'مسح المميزين' and Mod(msg) then
database:del(bot_id..'Special:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *𖢅︙تم مسح المميزين*')
end
if text == ("المميزين") and Mod(msg) then
local list = database:smembers(bot_id..'Special:User'..msg.chat_id_)
t = "\n *𖢅︙قائمة مميزين الكروب* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد مميزين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("تاك للمميزين") or text == ("صيح المميزين") then
local list = database:smembers(bot_id..'Special:User'..msg.chat_id_)
t = "\n *𖢅︙وينكم تعالو يريدوكم بكروب* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد مميزين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("رفع مميز") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
local  statuss  = '\n*𖢅︙تم ترقيته مميز*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع مميز @(.*)$") and Mod(msg) then
local username = text:match("^رفع مميز @(.*)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *𖢅︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Special:User'..msg.chat_id_, result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
local  statuss  = '\n*𖢅︙تم ترقيته مميز*'
texts = usertext..statuss
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end

if text and text:match("^رفع مميز (%d+)$") and Mod(msg) then
local userid = text:match("^رفع مميز (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الرفع*') 
return false
end
database:sadd(bot_id..'Special:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
local  statuss  = '\n*𖢅︙تم ترقيته مميز*'
send(msg.chat_id_, msg.id_, usertext..statuss)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
local  statuss  = '\n*𖢅︙تم ترقيته مميز*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end;end,nil)
return false
end

if (text == ("تنزيل مميز")) and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من المميزين*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل مميز @(.*)$") and Mod(msg) then
local username = text:match("^تنزيل مميز @(.*)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من المميزين*'
texts = usertext..status
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^تنزيل مميز (%d+)$") and Mod(msg) then
local userid = text:match("^تنزيل مميز (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'Special:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙لعضو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيله من المميزين*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم تنزيله من المميزين*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end  
هيمو ال تميم
if text == 'تنزيل المطايه' and Mod(msg) then
database:del(bot_id..'Mote:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *𖢅︙تم مسح جميع المطايه*')
end
if text == ("تاك للمطايه") and Mod(msg) then
local list = database:smembers(bot_id..'Mote:User'..msg.chat_id_)
t = "\n *𖢅︙قائمة مطايه الكروب* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *المطي* [@"..username.."]\n"
else
t = t..""..k.."» *المطي* `"..v.."`\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد مطايه*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع مطي") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Mote:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'DEVBESSO')..')'
local  statuss  = '\n*𖢅︙تم رفع العضو مطي في الكروب* \n*𖢅︙تعال حبي استلم العربانه*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل مطي")) and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Mote:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيل العضو مطي في الكروب*\n*𖢅︙تعال حبي رجع العربانه*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
-----------------------------------------------------
if text == 'تنزيل الحاتات' and Mod(msg) then
database:del(bot_id..'Mode:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *𖢅︙تم مسح جميع المطايه*')
end
if text == ("تاك للحاتات") and Mod(msg) then
local list = database:smembers(bot_id..'Mode:User'..msg.chat_id_)
t = "\n *𖢅︙قائمه حاتات الكروب* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» الحاته [@"..username.."]\n"
else
t = t..""..k.."» الحاته `"..v.."`\n"
end
end
if #list == 0 then
t = " *𖢅︙مع الاسف لا يوجد حاته*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع الحاته") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Mode:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙العضــو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'DEVBESSO')..')'
local  statuss  = '\n*𖢅︙تم رفع العضــو الحاته في الكروب* \n*𖢅︙تعال يحاته ممكن نتعرف*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل الحاته")) and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Mode:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙العضــو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيل العضــو الحاته من الكروب*\n*𖢅︙مشيي مو خوش حاتهه*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
هيمو ال تميم

if text == ("تاك للحات") and Mod(msg) then
local list = database:smembers(bot_id..'Modde:User'..msg.chat_id_)
t = "\n *𖢅︙قائمه حات الكروب* \nٴ*•━━━━━━ 𝑩𝑰 ━━━━━━━•*ٴ\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» الحات [@"..username.."]\n"
else
t = t..""..k.."» الحات `"..v.."`\n"
end
end
if #list == 0 then
t = " *𖢅︙مع الاسف لا يوجد حات*"
end
send(msg.chat_id_, msg.id_, t)
end
هيمو ال تميم
if text == ("رفع الحات") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Modde:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙العضــو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'DEVBESSO')..')'
local  statuss  = '\n*𖢅︙تم رفع العضــو الحات في الكروب* \n*𖢅︙تعال حبي الحات نطيني بوسه*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل الحات")) and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Modde:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙العضــو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيل العضــو الحات من الكروب*\n*𖢅︙مشيي مو خوش حات*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
هيمو ال تميم
if text == 'تنزيل الصخوله' and Mod(msg) then
database:del(bot_id..'Sakl:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *𖢅︙تم تنزيل جميع صخوله من الكروب*')
end
if text == ("تاك للصخوله") and Mod(msg) then
local list = database:smembers(bot_id..'Sakl:User'..msg.chat_id_)
t = "\n *𖢅︙قائمة صخوله الكروب* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الصخل* [@"..username.."]\n"
else
t = t..""..k.."» *الصخل* `"..v.."`\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد صخل*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع صخل") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Sakl:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
local  statuss  = '\n*𖢅︙تم رفع المتهم صخل بالكروب*\n*𖢅︙الان اصبح صخل الكروب*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end


if (text == ("تنزيل صخل")) and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Sakl:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيل العضو صخل*\n*𖢅︙ارجع للبيتكم حبي*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
هيمو ال تميم
if text == 'تنزيل الجلاب' and Mod(msg) then
database:del(bot_id..'Motte:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *𖢅︙تم تنزيل جميع جلاب الكروب*')
end
if text == ("تاك للجلاب") and Mod(msg) then
local list = database:smembers(bot_id..'Motte:User'..msg.chat_id_)
t = "\n *𖢅︙قائمة الجلاب الكروب* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الجلب* [@"..username.."]\n"
else
t = t..""..k.."» *الجلب* `"..v.."`\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد جلب*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع جلب") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Motte:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
local  statuss  = '\n*𖢅︙تم رفع جلب في الكروب*\n*𖢅︙تعال حبي اطيك عضمه*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل جلب")) and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Motte:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيل جلب في الكروب*\n*𖢅︙حبي رجع عضمه*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
هيمو ال تميم
if text == 'تنزيل القروده' and Mod(msg) then
database:del(bot_id..'Motee:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *𖢅︙تم تنزيل جميع القروده بالكروب*')
end
if text == ("تاك للقروده") and Mod(msg) then
local list = database:smembers(bot_id..'Motee:User'..msg.chat_id_)
t = "\n *𖢅︙قائمة القروده الكروب* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *القرد* [@"..username.."]\n"
else
t = t..""..k.."» *القرد* `"..v.."`\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد قرد*"
end
send(msg.chat_id_, msg.id_, t)
end
هيمو ال تميم
if text == ("رفع قرد") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Motee:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
local  statuss  = '\n*𖢅︙تم رفع قرد في الكروب*\n*𖢅︙تعال حبي استلم موزه*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل قرد")) and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Motee:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيل قرد من الكروب*\n*𖢅︙رجع موزه حبي*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
هيمو ال تميم
if text == 'تنزيل الحصونه' and Mod(msg) then
database:del(bot_id..'Hors:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *𖢅︙تم تنزيل جميع الحصونه بالكروب*')
end
if text == ("تاك للحصونه") and Mod(msg) then
local list = database:smembers(bot_id..'Hors:User'..msg.chat_id_)
t = "\n *𖢅︙قائمة الحصونه الكروب* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الحصان* [@"..username.."]\n"
else
t = t..""..k.."» *الحصان* `"..v.."`\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد حصان*"
end
send(msg.chat_id_, msg.id_, t)
end
هيمو ال تميم
if text == ("رفع حصان") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Hors:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
local  statuss  = '\n*𖢅︙تم رفع حصان في الكروب*\n*𖢅︙تعال حبي احطلك سرج وركبك فرني فره حلوه*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل حصان")) and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Hors:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيل حصان من الكروب*\n*𖢅︙رجع السرج حبي*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
هيمو ال تميم
if text == 'تنزيل البقرات' and Mod(msg) then
database:del(bot_id..'Bakra:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *𖢅︙تم تنزيل جميع البقرات بالكروب*')
end
if text == ("تاك للبقرات") and Mod(msg) then
local list = database:smembers(bot_id..'Bakra:User'..msg.chat_id_)
t = "\n *𖢅︙قائمة البقرات الكروب* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *البقره* [@"..username.."]\n"
else
t = t..""..k.."» *البقره* "..v.."\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد البقره*"
end
send(msg.chat_id_, msg.id_, t)
end
هيمو ال تميم
if text == ("رفع بقره") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Bakra:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
local  statuss  = '\n*𖢅︙تم رفع بقره في الكروب*\n*𖢅︙ها يالهايشه تع احلبك*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل بقره")) and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Bakra:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيل بقره من الكروب*\n*𖢅︙تعال هاك حليب مالتك*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
هيمو ال تميم
if text == 'تنزيل الطليان' and Mod(msg) then
database:del(bot_id..'Tele:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *𖢅︙تم تنزيل جميع طليان بالكروب')
end
if text == ("تاك للطليان") and Mod(msg) then
local list = database:smembers(bot_id..'Tele:User'..msg.chat_id_)
t = "\n *𖢅︙قائمة الطليان الكروب* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الطلي* [@"..username.."]\n"
else
t = t..""..k.."» *الطلي* "..v.."\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد طلي*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع طلي") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Tele:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
local  statuss  = '\n*𖢅︙تم رفع الطلي في الكروب*\n*𖢅︙طلع برا ابو البعرور الوصخ*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل طلي")) and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Tele:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيل الطلي من الكروب*\n *𖢅︙هاك اخذ بعرور*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
هيمو ال تميم
if text == 'تنزيل الزواحف' and Mod(msg) then
database:del(bot_id..'Zahf:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *𖢅︙تم تنزيل جميع زواحف*')
end
if text == ("تاك للزواحف") and Mod(msg) then
local list = database:smembers(bot_id..'Zahf:User'..msg.chat_id_)
t = "\n *𖢅︙قائمة الزواحف الكروب* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الزاحف* [@"..username.."]\n"
else
t = t..""..k.."» *الزاحف* "..v.."\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد زاحف*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع زاحف") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Zahf:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
local  statuss  = '\n*𖢅︙تم رفع زاحف في الكروب*\n*𖢅︙كمشتك حبي جيب رقم*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل زاحف")) and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Zahf:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيل زاحف من الكروب*\n*𖢅︙هاك حبي هاذا رقم مالك*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
هيمو ال تميم
if text == 'تنزيل جريذيه' and Mod(msg) then
database:del(bot_id..'Jred:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *𖢅︙تم تنزيل جميع جريزي*')
end
if text == ("تاك للجريذيه") and Mod(msg) then
local list = database:smembers(bot_id..'Jred:User'..msg.chat_id_)
t = "\n *𖢅︙قائمة الجريذيه الكروب* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الجريذي* [@"..username.."]\n"
else
t = t..""..k.."» *الجريذي* "..v.."\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد جريذي*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع جريذي") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Jred:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
local  statuss  = '\n*𖢅︙تم رفع جريذي في الكروب*\n*𖢅︙خايس ريحتك موتتنه روح سبح يع*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل جريذي")) and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Jred:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تنزيل جريذي من الكروب*\n*𖢅︙هاك ليفه اسبح*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
هيمو ال تميم
if text == 'مسح المحظورين' and Mod(msg) then
database:del(bot_id..'Ban:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n *𖢅︙تم مسح المحظورين*')
end
if text == ("المحظورين") then
local list = database:smembers(bot_id..'Ban:User'..msg.chat_id_)
t = "\n *𖢅︙قائمة محظورين الكروب* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد محظورين*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("حظر") and msg.reply_to_message_id_ ~= 0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الحظر*') 
return false
end
function start_function(extra, result, success)
if BILLASudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *𖢅︙لا تسطيع حظر البوت* ")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *𖢅︙عذرا لا تستطيع حظر* ( '..Rutba(result.sender_user_id_,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *𖢅︙ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *𖢅︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
database:sadd(bot_id..'Ban:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم حظره*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
chat_kick(result.chat_id_, result.sender_user_id_)
end,nil)   
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if text and text:match("^حظر @(.*)$") and Mod(msg) then
local username = text:match("^حظر @(.*)$")
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الحظر*') 
return false
end
function start_function(extra, result, success)
if result.id_ then
if BILLASudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *𖢅︙عذرا لا تستطيع حظر* ( '..Rutba(result.id_,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *𖢅︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *𖢅︙ ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *𖢅︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
database:sadd(bot_id..'Ban:User'..msg.chat_id_, result.id_)
usertext = '\n *𖢅︙ المستخدم »* ['..result.title_..'](t.me/'..(username or 'GLOBLA')..')'
status  = '\n*𖢅︙تم حظره*'
texts = usertext..status
chat_kick(msg.chat_id_, result.id_)
send(msg.chat_id_, msg.id_, texts)
end,nil)   
end
else
send(msg.chat_id_, msg.id_, ' *𖢅︙لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end

if text and text:match("^حظر (%d+)$") and Mod(msg) then
local userid = text:match("^حظر (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل الحظر*') 
return false
end
if BILLASudoBot(userid) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *𖢅︙لا تسطيع حظر البوت*")
return false 
end
if Can_or_NotCan(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *𖢅︙عذرا لا تستطيع حظر* ( '..Rutba(userid,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *𖢅︙ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *𖢅︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
database:sadd(bot_id..'Ban:User'..msg.chat_id_, userid)
chat_kick(msg.chat_id_, userid)  
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم حظره*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم حظره*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end,nil)   
end
return false
end
if text == ("الغاء حظر") and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, ' *𖢅︙انا لست محظورآ* \n') 
return false 
end
database:srem(bot_id..'Ban:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم الغاء حظره*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
 
if text and text:match("^الغاء حظر @(.*)$") and Mod(msg) then
local username = text:match("^الغاء حظر @(.*)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if tonumber(result.id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, ' *𖢅︙انا لست محظورآ* \n') 
return false 
end
database:srem(bot_id..'Ban:User'..msg.chat_id_, result.id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم الغاء حظره*'
texts = usertext..status
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end

if text and text:match("^الغاء حظر (%d+)$") and Mod(msg) then
local userid = text:match("^الغاء حظر (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if tonumber(userid) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, ' *𖢅︙انا لست محظورآ* \n') 
return false 
end
database:srem(bot_id..'Ban:User'..msg.chat_id_, userid)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم الغاء حظره*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم الغاء حظره*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
هيمو ال تميم
if text == 'مسح المكتومين' and Mod(msg) then
database:del(bot_id..'Muted:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *𖢅︙تم مسح المكتومين*')
end
if text == ("المكتومين") and Mod(msg) then
local list = database:smembers(bot_id..'Muted:User'..msg.chat_id_)
t = "\n *𖢅︙قائمة المكتومين* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد مكتومين*"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("كتم") and msg.reply_to_message_id_ ~= 0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *𖢅︙لا تسطيع كتم البوت* ")
return false 
end
if BILLASudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *𖢅︙عذرا لا تستطيع كتم* ( '..Rutba(result.sender_user_id_,msg.chat_id_)..' )')
else
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *𖢅︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
database:sadd(bot_id..'Muted:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم كتمه*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^كتم @(.*)$") and Mod(msg) then
local username = text:match("^كتم @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *𖢅︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if BILLASudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *𖢅︙لا تسطيع كتم البوت* ")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *𖢅︙عذرا لا تستطيع كتم* ( '..Rutba(result.id_,msg.chat_id_)..' )')
else
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *𖢅︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
database:sadd(bot_id..'Muted:User'..msg.chat_id_, result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم كتمه*'
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
end
else
send(msg.chat_id_, msg.id_, ' *𖢅︙لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match('^كتم (%d+) (.*)$') and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
local TextEnd = {string.match(text, "^(كتم) (%d+) (.*)$")}
function start_function(extra, result, success)
if TextEnd[3] == 'يوم' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'ساعه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'دقيقه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('دقيقه',"دقايق") 
TextEnd[3] = TextEnd[3]:gsub('ساعه',"ساعات") 
TextEnd[3] = TextEnd[3]:gsub("يوم","ايام") 
if BILLASudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n *𖢅︙عذرا لا تستطيع كتم* ( "..Rutba(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم كتم لمدة ~* { '..TextEnd[2]..' '..TextEnd[3]..'}'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_..'&until_date='..tonumber(msg.date_+Time))
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end


if text and text:match('^كتم (%d+) (.*) @(.*)$') and Mod(msg) then
local TextEnd = {string.match(text, "^(كتم) (%d+) (.*) @(.*)$")}
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *𖢅︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if TextEnd[3] == 'يوم' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'ساعه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'دقيقه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('دقيقه',"دقايق") 
TextEnd[3] = TextEnd[3]:gsub('ساعه',"ساعات") 
TextEnd[3] = TextEnd[3]:gsub("يوم","ايام") 
if BILLASudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n *𖢅︙عذرا لا تستطيع كتم* ( "..Rutba(result.id_,msg.chat_id_).." )")
else
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم كتم لمدة ~* { '..TextEnd[2]..' '..TextEnd[3]..'}'
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_..'&until_date='..tonumber(msg.date_+Time))
end
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = TextEnd[4]}, start_function, nil)
return false
end
if text and text:match("^كتم (%d+)$") and Mod(msg) then
local userid = text:match("^كتم (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if BILLASudoBot(userid) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *𖢅︙لا تسطيع كتم البوت* ")
return false 
end
if Can_or_NotCan(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *𖢅︙عذرا لا تستطيع كتم* ( '..Rutba(userid,msg.chat_id_)..' )')
else
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *𖢅︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
database:sadd(bot_id..'Muted:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم كتمه*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم كتمه*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end
return false
end
if text and text:match("^(وضع وقت التنظيف) (%d+)$") and BasicConstructor(msg) then
local GetDo = tonumber(text:match("(%d+)"))
database:set(bot_id..':TiMsg:'..msg.chat_id_,GetDo) 
return send(msg.chat_id_, msg.id_,"*𖢅︙تم وضع وقت التنظيف ("..GetDo..") ساعه*")
end
if text == ("الغاء كتم") and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Muted:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم الغاء كتمه*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^الغاء كتم @(.*)$") and Mod(msg) then
local username = text:match("^الغاء كتم @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Muted:User'..msg.chat_id_, result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم الغاء كتمه*'
texts = usertext..status
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end

if text and text:match("^الغاء كتم (%d+)$") and Mod(msg) then
local userid = text:match("^الغاء كتم (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'Muted:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم الغاء كتمه*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم الغاء كتمه*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end

if text == ("تقيد") and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if BILLASudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " 𖢅︙لا تسطيع تقيد البوت ")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, '\n *𖢅︙عذرا لا تستطيع تقيد* ( '..Rutba(result.sender_user_id_,msg.chat_id_)..' )')
else
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تقيده*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تقيد @(.*)$") and Mod(msg) then
local username = text:match("^تقيد @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if BILLASudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *𖢅︙لا تسطيع تقيد البوت* ")
return false 
end
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *𖢅︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if Can_or_NotCan(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, '\n *𖢅︙عذرا لا تستطيع تقيد* ( '..Rutba(result.id_,msg.chat_id_)..' )')
return false 
end  
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم تقيده*'
texts = usertext..status
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match('^تقيد (%d+) (.*)$') and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
local TextEnd = {string.match(text, "^(تقيد) (%d+) (.*)$")}
function start_function(extra, result, success)
if TextEnd[3] == 'يوم' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'ساعه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'دقيقه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('دقيقه',"دقايق") 
TextEnd[3] = TextEnd[3]:gsub('ساعه',"ساعات") 
TextEnd[3] = TextEnd[3]:gsub("يوم","ايام") 
if BILLASudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n *𖢅︙عذرا لا تستطيع تقيد* ( "..Rutba(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تقيده لمدة ~* { '..TextEnd[2]..' '..TextEnd[3]..'}'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_..'&until_date='..tonumber(msg.date_+Time))
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match('^تقيد (%d+) (.*) @(.*)$') and Mod(msg) then
local TextEnd = {string.match(text, "^(تقيد) (%d+) (.*) @(.*)$")}
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *𖢅︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
if TextEnd[3] == 'يوم' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'ساعه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'دقيقه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('دقيقه',"دقايق") 
TextEnd[3] = TextEnd[3]:gsub('ساعه',"ساعات") 
TextEnd[3] = TextEnd[3]:gsub("يوم","ايام") 
if BILLASudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n *𖢅︙عذرا لا تستطيع تقيد* ( "..Rutba(result.id_,msg.chat_id_).." )")
else
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم تقيده لمدة ~* { '..TextEnd[2]..' '..TextEnd[3]..'}'
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_..'&until_date='..tonumber(msg.date_+Time))
end
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = TextEnd[4]}, start_function, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^تقيد (%d+)$") and Mod(msg) then
local userid = text:match("^تقيد (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if BILLASudoBot(userid) then
send(msg.chat_id_, msg.id_,"*𖢅︙لا تستطيع (كتم،طرد،حظر،تققيد) مطور السورس او الاساسي*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *𖢅︙لا تسطيع تقيد البوت* ")
return false 
end
if Can_or_NotCan(userid, msg.chat_id_) then
send(msg.chat_id_, msg.id_, '\n *𖢅︙عذرا لا تستطيع تقيد* ( '..Rutba(userid,msg.chat_id_)..' )')
else
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم تقيده*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم تقيده*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end
return false
end
------------------------------------------------------------------------
if text == ("الغاء تقيد") and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.sender_user_id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم الغاء تقيد*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^الغاء تقيد @(.*)$") and Mod(msg) then
local username = text:match("^الغاء تقيد @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم الغاء تقيد*'
texts = usertext..status
else
texts = ' *𖢅︙لا يوجد حساب بهاذا المعرف*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^الغاء تقيد (%d+)$") and Mod(msg) then
local userid = text:match("^الغاء تقيد (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم الغاء تقيد*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *𖢅︙اسم المستخدم »* '..userid..''
status  = '\n*𖢅︙تم الغاء تقيد*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text and text:match('^رفع القيود @(.*)') and Manager(msg) then 
local username = text:match('^رفع القيود @(.*)') 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if DevBILLAW(msg) then
database:srem(bot_id..'GBan:User',result.id_)
database:srem(bot_id..'Ban:User'..msg.chat_id_,result.id_)
database:srem(bot_id..'Muted:User'..msg.chat_id_,result.id_)
database:srem(bot_id..'Gmute:User'..msg.chat_id_,result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم الغاء جميع القيود*'
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
else
database:srem(bot_id..'Ban:User'..msg.chat_id_,result.id_)
database:srem(bot_id..'Muted:User'..msg.chat_id_,result.id_)
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙تم الغاء جميع القيود*'
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
end
else
Text = ' *𖢅︙المعرف غلط*'
send(msg.chat_id_, msg.id_,Text)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
if text == "رفع القيود" and Manager(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if DevBILLAW(msg) then
database:srem(bot_id..'GBan:User',result.sender_user_id_)
database:srem(bot_id..'Ban:User'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Muted:User'..msg.chat_id_,result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم الغاء جميع القيود*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
else
database:srem(bot_id..'Ban:User'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Muted:User'..msg.chat_id_,result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙تم الغاء جميع القيود*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text and text:match('^كشف القيود @(.*)') and Manager(msg) then 
local username = text:match('^كشف القيود @(.*)') 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if database:sismember(bot_id..'Muted:User'..msg.chat_id_,result.id_) then
Muted = 'مكتوم'
else
Muted = 'غير مكتوم'
end
if database:sismember(bot_id..'Ban:User'..msg.chat_id_,result.id_) then
Ban = 'محظور'
else
Ban = 'غير محظور'
end
if database:sismember(bot_id..'GBan:User',result.id_) then
GBan = 'محظور عام'
else
GBan = 'غير محظور عام'
end
Textt = " *𖢅︙الحظر العام » "..GBan.."*\n*𖢅︙الحظر » "..Ban.."*\n*𖢅︙الكتم » "..Muted.."*"
send(msg.chat_id_, msg.id_,Textt)
else
Text = ' *𖢅︙المعرف غلط*'
send(msg.chat_id_, msg.id_,Text)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end

if text == "كشف القيود" and Manager(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if database:sismember(bot_id..'Muted:User'..msg.chat_id_,result.sender_user_id_) then
Muted = 'مكتوم'
else
Muted = 'غير مكتوم'
end
if database:sismember(bot_id..'Ban:User'..msg.chat_id_,result.sender_user_id_) then
Ban = 'محظور'
else
Ban = 'غير محظور'
end
if database:sismember(bot_id..'GBan:User',result.sender_user_id_) then
GBan = 'محظور عام'
else
GBan = 'غير محظور عام'
end
if database:sismember(bot_id..'Gmute:User',result.sender_user_id_) then
Gmute = 'محظور عام'
else
Gmute = 'غير محظور عام'
end
Textt = " *𖢅︙الحظر العام » "..GBan.."*\n*𖢅︙الكتم العام » "..Gmute.."*\n*𖢅︙الحظر » "..Ban.."*\n*𖢅︙الكتم » "..Muted.."*"
send(msg.chat_id_, msg.id_,Textt)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text == ("رفع مشرف") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *𖢅︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙ اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙ الايدي »* `'..result.sender_user_id_..'`\n*𖢅︙ تم رفعه مشرف* '
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=True&can_restrict_members=false&can_pin_messages=True&can_promote_members=false")
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع مشرف @(.*)$") and Constructor(msg) then
local username = text:match("^رفع مشرف @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *𖢅︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *𖢅︙ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
usertext = '\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙ تم رفعه مشرف* '
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=True&can_restrict_members=false&can_pin_messages=True&can_promote_members=false")
else
send(msg.chat_id_, msg.id_, ' *𖢅︙ لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text == ("تنزيل مشرف") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *𖢅︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙ اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙ الايدي »* `'..result.sender_user_id_..'`\n*𖢅︙ تم تنزيله ادمن من الكروب*'
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل مشرف @(.*)$") and Constructor(msg) then
local username = text:match("^تنزيل مشرف @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *𖢅︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," 𖢅︙ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !")   
return false 
end  
usertext = '\n *𖢅︙ اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙ تم تنزيله ادمن من الكروب*'
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
else
send(msg.chat_id_, msg.id_, '*𖢅︙لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end


if text == ("رفع ادمن بكل الصلاحيات") and msg.reply_to_message_id_ ~= 0 and BasicConstructor(msg) then
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *𖢅︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙ اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙الايدي »* '..result.sender_user_id_..'\n*𖢅︙ تم رفعه مشرف بكل الصلاحيات*'
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=True")
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع ادمن بكل الصلاحيات @(.*)$") and BasicConstructor(msg) then
local username = text:match("^رفع ادمن بكل الصلاحيات @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *𖢅︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *𖢅︙ عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
usertext = '\n *𖢅︙ اسم المستخدم »* ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙ تم رفعه مشرف بكل الصلاحيات*'
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=True")
else
send(msg.chat_id_, msg.id_, ' *𖢅︙ لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text == ("تنزيل ادمن بكل الصلاحيات") and msg.reply_to_message_id_ ~= 0 and BasicConstructor(msg) then
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *𖢅︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *𖢅︙ اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
status  = '\n*𖢅︙ الايدي »* '..result.sender_user_id_..'\n*𖢅︙ تم تنزيله ادمن من الكروب بكل الصلاحيات*'
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل ادمن بكل الصلاحيات @(.*)$") and BasicConstructor(msg) then
local username = text:match("^تنزيل ادمن بكل الصلاحيات @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *𖢅︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*𖢅︙عذرا عزيزي المستخدم هاذا معرف قناة يرجى استخدام الامر بصوره صحيحه !*")   
return false 
end  
usertext = '\n *𖢅︙ اسم المستخدم » ['..result.title_..'](t.me/'..(username or 'EE28i')..')'
status  = '\n*𖢅︙ تم تنزيله ادمن من الكروب بكل الصلاحيات*'
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
else
send(msg.chat_id_, msg.id_, ' *𖢅︙ لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text == 'اعدادات الكروب' and Mod(msg) then
if database:get(bot_id..'lockpin'..msg.chat_id_) then
lock_pin = '✓'
else 
lock_pin = '✘'
end
if database:get(bot_id..'lock:tagservr'..msg.chat_id_) then
lock_tagservr = '✓'
else 
lock_tagservr = '✘'
end
if database:get(bot_id..'lock:text'..msg.chat_id_) then
lock_text = '✓'
else 
lock_text = '✘'
end
if database:get(bot_id.."lock:AddMempar"..msg.chat_id_) == 'kick' then
lock_add = '✓'
else 
lock_add = '✘'
end
if database:get(bot_id.."lock:Join"..msg.chat_id_) == 'kick' then
lock_join = '✓'
else 
lock_join = '✘'
end
if database:get(bot_id..'lock:edit'..msg.chat_id_) then
lock_edit = '✓'
else 
lock_edit = '✘'
end
print(welcome)
if database:get(bot_id..'Get:Welcome:Group'..msg.chat_id_) then
welcome = '✓'
else 
welcome = '✘'
end
if database:get(bot_id..'lock:edit'..msg.chat_id_) then
lock_edit_med = '✓'
else 
lock_edit_med = '✘'
end
if database:hget(bot_id.."flooding:settings:"..msg.chat_id_, "flood") == "kick" then 
flood = 'بالطرد' 
elseif database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") == "keed" then 
flood = 'بالتقيد' 
elseif database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") == "mute" then 
flood = 'بالكتم'   
elseif database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") == "del" then 
flood = 'بالمسح'   
else 
flood = '✘' 
end
if database:get(bot_id.."lock:Photo"..msg.chat_id_) == "del" then
lock_photo = '✓' 
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "ked" then 
lock_photo = 'بالتقيد'   
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "ktm" then 
lock_photo = 'بالكتم'
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "kick" then 
lock_photo = 'بالطرد'   
else
lock_photo = '✘'   
end
if database:get(bot_id.."lock:Contact"..msg.chat_id_) == "del" then
lock_phon = '✓' 
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "ked" then 
lock_phon = 'بالتقيد'
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "ktm" then 
lock_phon = 'بالكتم'
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "kick" then 
lock_phon = 'بالطرد'
else
lock_phon = '✘'
end
if database:get(bot_id.."lock:Link"..msg.chat_id_) == "del" then
lock_links = '✓'
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ked" then
lock_links = 'بالتقيد'
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ktm" then
lock_links = 'بالكتم'
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "kick" then
lock_links = 'بالطرد'
else
lock_links = '✘'
end
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "del" then
lock_cmds = '✓'
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ked" then
lock_cmds = 'بالتقيد'
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ktm" then
lock_cmds = 'بالكتم'   
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "kick" then
lock_cmds = 'بالطرد'
else
lock_cmds = '✘'
end
if database:get(bot_id.."lock:user:name"..msg.chat_id_) == "del" then
lock_user = '✓'
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ked" then
lock_user = 'بالتقيد'
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ktm" then
lock_user = 'بالكتم'
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "kick" then
lock_user = 'بالطرد'
else
lock_user = '✘'
end
if database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "del" then
lock_hash = '✓'
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ked" then 
lock_hash = 'بالتقيد'
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ktm" then 
lock_hash = 'بالكتم'
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "kick" then 
lock_hash = 'بالطرد'
else
lock_hash = '✘'
end
if database:get(bot_id.."lock:vico"..msg.chat_id_) == "del" then
lock_muse = '✓'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ked" then 
lock_muse = 'بالتقيد'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ktm" then 
lock_muse = 'بالكتم'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "kick" then 
lock_muse = 'بالطرد'
else
lock_muse = '✘'
end 
if database:get(bot_id.."lock:Video"..msg.chat_id_) == "del" then
lock_ved = '✓'
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "ked" then 
lock_ved = 'بالتقيد'
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "ktm" then 
lock_ved = 'بالكتم'
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "kick" then 
lock_ved = 'بالطرد'
else
lock_ved = '✘'
end
if database:get(bot_id.."lock:Animation"..msg.chat_id_) == "del" then
lock_gif = '✓'
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "ked" then 
lock_gif = 'بالتقيد'
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "ktm" then 
lock_gif = 'بالكتم'
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "kick" then 
lock_gif = 'بالطرد'
else
lock_gif = '✘'
end
if database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "del" then
lock_ste = '✓'
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "ked" then 
lock_ste = 'بالتقيد'
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "ktm" then 
lock_ste = 'بالكتم'
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "kick" then 
lock_ste = 'بالطرد'
else
lock_ste = '✘'
end
if database:get(bot_id.."lock:geam"..msg.chat_id_) == "del" then
lock_geam = '✓'
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "ked" then 
lock_geam = 'بالتقيد'
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "ktm" then 
lock_geam = 'بالكتم'
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "kick" then 
lock_geam = 'بالطرد'
else
lock_geam = '✘'
end
if database:get(bot_id.."lock:vico"..msg.chat_id_) == "del" then
lock_vico = '✓'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ked" then 
lock_vico = 'بالتقيد'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ktm" then 
lock_vico = 'بالكتم'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "kick" then 
lock_vico = 'بالطرد'
else
lock_vico = '✘'
end
if database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "del" then
lock_inlin = '✓'
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "ked" then 
lock_inlin = 'بالتقيد'
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "ktm" then 
lock_inlin = 'بالكتم'
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "kick" then 
lock_inlin = 'بالطرد'
else
lock_inlin = '✘'
end
if database:get(bot_id.."lock:forward"..msg.chat_id_) == "del" then
lock_fwd = '✓'
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "ked" then 
lock_fwd = 'بالتقيد'
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "ktm" then 
lock_fwd = 'بالكتم'
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "kick" then 
lock_fwd = 'بالطرد'
else
lock_fwd = '✘'
end
if database:get(bot_id.."lock:Document"..msg.chat_id_) == "del" then
lock_file = '✓'
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "ked" then 
lock_file = 'بالتقيد'
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "ktm" then 
lock_file = 'بالكتم'
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "kick" then 
lock_file = 'بالطرد'
else
lock_file = '✘'
end
if database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "del" then
lock_self = '✓'
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "ked" then 
lock_self = 'بالتقيد'
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "ktm" then 
lock_self = 'بالكتم'
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "kick" then 
lock_self = 'بالطرد'
else
lock_self = '✘'
end
if database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) == 'del' then
lock_bots = '✓'
elseif database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) == 'ked' then
lock_bots = 'بالتقيد'   
elseif database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) == 'kick' then
lock_bots = 'بالطرد'
else
lock_bots = '✘'
end
if database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "del" then
lock_mark = '✓'
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "ked" then 
lock_mark = 'بالتقيد'
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "ktm" then 
lock_mark = 'بالكتم'
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "kick" then 
lock_mark = 'بالطرد'
else
lock_mark = '✘'
end
if database:get(bot_id.."lock:Spam"..msg.chat_id_) == "del" then
lock_spam = '✓'
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "ked" then 
lock_spam = 'بالتقيد'
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "ktm" then 
lock_spam = 'بالكتم'
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "kick" then 
lock_spam = 'بالطرد'
else
lock_spam = '✘'
end
if not database:get(bot_id..'Reply:Manager'..msg.chat_id_) then
rdmder = '✓'
else
rdmder = '✘'
end
if not database:get(bot_id..'Reply:Sudo'..msg.chat_id_) then
rdsudo = '✓'
else
rdsudo = '✘'
end
if not database:get(bot_id..'Bot:Id'..msg.chat_id_)  then
idgp = '✓'
else
idgp = '✘'
end
if not database:get(bot_id..'Bot:Id:Photo'..msg.chat_id_) then
idph = '✓'
else
idph = '✘'
end
if not database:get(bot_id..'Lock:kick'..msg.chat_id_)  then
setadd = '✓'
else
setadd = '✘'
end
if not database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_)  then
banm = '✓'
else
banm = '✘'
end
if not database:get(bot_id..'Added:Me'..msg.chat_id_) then
addme = '✓'
else
addme = '✘'
end
if not database:get(bot_id..'Seh:User'..msg.chat_id_) then
sehuser = '✓'
else
sehuser = '✘'
end
if not database:get(bot_id..'Cick:Me'..msg.chat_id_) then
kickme = '✓'
else
kickme = '✘'
end
NUM_MSG_MAX = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") or 0
local text = 
'\n *𖢅︙اعدادات الكروب كتالي √↓*'..
'\nء┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉'..
'\n*𖢅︙ علامة ال {✓} تعني معطل*'..
'\n*𖢅︙ علامة ال {✘} تعني مفعل*'..
'\nء┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉'..
'\n*𖢅︙ الروابط »* { '..lock_links..
' }\n'..'*𖢅︙ المعرفات »* { '..lock_user..
' }\n'..'*𖢅︙ التاك »* { '..lock_hash..
' }\n'..'*𖢅︙ البوتات »* { '..lock_bots..
' }\n'..'*𖢅︙ التوجيه »* { '..lock_fwd..
' }\n'..'*𖢅︙ التثبيت »* { '..lock_pin..
' }\n'..'*𖢅︙ الاشعارات »* { '..lock_tagservr..
' }\n'..'*𖢅︙ الماركدون »* { '..lock_mark..
' }\n'..'*𖢅︙ التعديل »* { '..lock_edit..
' }\n'..'*𖢅︙ تعديل الميديا »* { '..lock_edit_med..
' }\nء┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉'..
'\n'..'*𖢅︙ الكلايش »* { '..lock_spam..
' }\n'..'*𖢅︙ الكيبورد »* { '..lock_inlin..
' }\n'..'*𖢅︙ الاغاني »* { '..lock_vico..
' }\n'..'*𖢅︙ المتحركه »* { '..lock_gif..
' }\n'..'*𖢅︙ الملفات »* { '..lock_file..
' }\n'..'*𖢅︙ الدردشه »* { '..lock_text..
' }\n'..'*𖢅︙  الفيديو »* { '..lock_ved..
' }\n'..'*𖢅︙  الصور »* { '..lock_photo..
' }\nء┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉'..
'\n'..'*𖢅︙  الصوت »* { '..lock_muse..
' }\n'..'*𖢅︙ الملصقات »* { '..lock_ste..
' }\n'..'*𖢅︙ الجهات »* { '..lock_phon..
' }\n'..'*𖢅︙ الدخول »* { '..lock_join..
' }\n'..'*𖢅︙ الاضافه »* { '..lock_add..
' }\n'..'*𖢅︙ السيلفي »* { '..lock_self..
' }\n'..'*𖢅︙ الالعاب »* { '..lock_geam..
' }\n'..'*𖢅︙ التكرار »* { '..flood..
' }\n'..'*𖢅︙ الترحيب »* { '..welcome..
' }\n'..'*𖢅︙ عدد التكرار »* { '..NUM_MSG_MAX..
' }\nء┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉'..
'\n*𖢅︙ علامة ال {✓} تعني مفعل*'..
'\n*𖢅︙ علامة ال {✘} تعني معطل*'..
'\nء┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉'..
'\n'..'*𖢅︙ امر صيح »* { '..kickme..
' }\n'..'*𖢅︙ امر اطردني »* { '..sehuser..
' }\n'..'*𖢅︙ امر منو ضافني »* { '..addme..
' }\n'..'*𖢅︙ ردود المدير »* { '..rdmder..
' }\n'..'*𖢅︙ ردود المطور »* { '..rdsudo..
' }\n'..'*𖢅︙ الايدي »* { '..idgp..
' }\n'..'*𖢅︙ الايدي بالصوره »* { '..idph..
' }\n'..'*𖢅︙ الرفع »* { '..setadd..
' }\n'..'*𖢅︙ الحظر »* { '..banm..' }\n\n┉  ┉  ┉  ┉ ┉  ┉  ┉  ┉  ┉  ┉\n *𖢅︙ CH » @EE28i*\n'
send(msg.chat_id_, msg.id_,text) 
end
if text ==('تثبيت') and msg.reply_to_message_id_ ~= 0 and Mod(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:sismember(bot_id..'lock:pin',msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_," *𖢅︙عذرآ تم قفل التثبيت*")  
return false  
end
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.reply_to_message_id_,disable_notification_ = 1},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_," *𖢅︙تم تثبيت الرساله*")   
database:set(bot_id..'Pin:Id:Msg'..msg.chat_id_,msg.reply_to_message_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_," *𖢅︙انا لست ادمن هنا يرجى ترقيتي ادمن ثم اعد المحاوله*")  
elseif data.message_ == "CHAT_NOT_MODIFIED" then
send(msg.chat_id_,msg.id_," *𖢅︙لا توجد رساله مثبته*")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_," *𖢅︙ليست لدي صلاحية التثبيت يرجى التحقق من الصلاحيات*")  
end
end,nil) 
end
if text == 'الغاء التثبيت' and Mod(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:sismember(bot_id..'lock:pin',msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_," *𖢅︙عذرآ تم قفل الثبيت*")  
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100','')},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_," *𖢅︙تم الغاء تثبيت الرساله*")   
database:del(bot_id..'Pin:Id:Msg'..msg.chat_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_," *𖢅︙انا لست ادمن هنا يرجى ترقيتي ادمن ثم اعد المحاوله*")  
elseif data.message_ == "CHAT_NOT_MODIFIED" then
send(msg.chat_id_,msg.id_," *𖢅︙لا توجد رساله مثبته*")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_," *𖢅︙ليست لدي صلاحية التثبيت يرجى التحقق من الصلاحيات*")  
end
end,nil)
end
if text == 'الغاء تثبيت الكل' and Mod(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:sismember(bot_id..'lock:pin',msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_," *𖢅︙عذرآ تم قفل الثبيت*")  
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100','')},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"*𖢅︙تم الغاء تثبيت الكل*")   
https.request('https://api.telegram.org/bot'..token..'/unpinAllChatMessages?chat_id='..msg.chat_id_)
database:del(bot_id..'Pin:Id:Msg'..msg.chat_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_," *𖢅︙انا لست ادمن هنا يرجى ترقيتي ادمن ثم اعد المحاوله*")  
elseif data.message_ == "CHAT_NOT_MODIFIED" then
send(msg.chat_id_,msg.id_," *𖢅︙لا توجد رساله مثبته*")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_," *𖢅︙ليست لدي صلاحية التثبيت يرجى التحقق من الصلاحيات*")  
end
end,nil)
end
if text and text:match('^ضع تكرار (%d+)$') and Mod(msg) then   
local Num = text:match('ضع تكرار (.*)')
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"floodmax" ,Num) 
send(msg.chat_id_, msg.id_,' *𖢅︙تم وضع عدد التكرار* ('..Num..')')  
end 
if text and text:match('^ضع زمن التكرار (%d+)$') and Mod(msg) then   
local Num = text:match('^ضع زمن التكرار (%d+)$')
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"floodtime" ,Num) 
send(msg.chat_id_, msg.id_,' *𖢅︙تم وضع زمن التكرار* ('..Num..')') 
end
if text == "ضع رابط" or text == 'وضع رابط' then
if msg.reply_to_message_id_ == 0  and Mod(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_,msg.id_," *𖢅︙حسنآ ارسل اليه الرابط الان*")
database:setex(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_,120,true) 
return false
end
end
if text == "تفعيل رابط" or text == 'تفعيل الرابط' then
if Mod(msg) then  
database:set(bot_id.."Link_Group:status"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_," *𖢅︙تم تفعيل الرابط*") 
return false  
end
end
if text == "تعطيل رابط" or text == 'تعطيل الرابط' then
if Mod(msg) then  
database:del(bot_id.."Link_Group:status"..msg.chat_id_) 
send(msg.chat_id_, msg.id_," *𖢅︙تم تعطيل الرابط*") 
return false end
end

if text == 'المطور' or text == 'مطور' then
local TEXT_SUDO = database:get(bot_id..'TEXT_SUDO')
if TEXT_SUDO then 
send(msg.chat_id_, msg.id_,TEXT_SUDO)
else
tdcli_function ({ID = "GetUser",user_id_ = SUDO},function(arg,result) 
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
sendText(msg.chat_id_,Name,msg.id_/2097152/0.5,'md')
end,nil)
end
end
هيمو ال تميم

if text == "تفعيل صورتي" or text == 'تفعيل الصوره' then
if Constructor(msg) then  
database:set(bot_id.."my_photo:status"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_," *𖢅︙تم تفعيل الصوره*") 
return false  
end
end
if text == "تعطيل الصوره" or text == 'تعطيل صورتي' then
if Constructor(msg) then  
database:del(bot_id.."my_photo:status"..msg.chat_id_) 
send(msg.chat_id_, msg.id_," *𖢅︙تم تعطيل الصوره*") 
return false end
end
if text == "الرابط" then 
local status_Link = database:get(bot_id.."Link_Group:status"..msg.chat_id_)
if not status_Link then
send(msg.chat_id_, msg.id_," *𖢅 الرابط معطل*") 
return false  
end
local link = database:get(bot_id.."Private:Group:Link"..msg.chat_id_)
if link then  
send(msg.chat_id_,msg.id_,'𝒍𝒊𝒏𝒌 𝒈𝒓𝒐𝒖𝒑  𖠐\n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n ['..link..']')  
else
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
database:set(bot_id.."Private:Group:Link"..msg.chat_id_,linkgpp.result)
linkgp = '𝒍𝒊𝒏𝒌 𝒈𝒓𝒐𝒖𝒑  ??\n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n ['..linkgpp.result..']'
else
linkgp = ' *𖢅 لا يوجد رابط ارسل ضع رابط*'
end  
send(msg.chat_id_, msg.id_,linkgp)  
end
end
if text == 'مسح الرابط' or text == 'حذف الرابط' then
if Mod(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_,msg.id_," *𖢅︙تم مسح الرابط*")   
database:del(bot_id.."Private:Group:Link"..msg.chat_id_) 
return false  
end
end
if text and text:match("^ضع صوره") and Mod(msg) and msg.reply_to_message_id_ == 0 then  
database:set(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_,true) 
send(msg.chat_id_, msg.id_,' *𖢅︙ارسل لي الصوره*') 
return false
end
if text == "حذف الصوره" or text == "مسح الصوره" then 
if Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
https.request('https://api.telegram.org/bot'..token..'/deleteChatPhoto?chat_id='..msg.chat_id_) 
send(msg.chat_id_, msg.id_,' *𖢅︙تم ازالة صورة الكروب*') 
end
return false  
end
if text == 'ضع وصف' or text == 'وضع وصف' then  
if Mod(msg) then
database:setex(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_,' *𖢅︙ارسل الان الوصف*')
end
return false  
end
if text == 'ضع ترحيب' or text == 'وضع ترحيب' then  
if Mod(msg) then
database:setex(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
t  = ' *𖢅︙ارسل لي الترحيب الان*'
tt = '\n*𖢅︙تستطيع اضافة مايلي !*\n*𖢅︙دالة عرض الاسم »*{`name`}\n*𖢅︙دالة عرض المعرف »*{`user`}'
send(msg.chat_id_, msg.id_,t..tt) 
end
return false  
end
if text == 'الترحيب' and Mod(msg) then 
local GetWelcomeGroup = database:get(bot_id..'Get:Welcome:Group'..msg.chat_id_)  
if GetWelcomeGroup then 
GetWelcome = GetWelcomeGroup
else 
GetWelcome = ' *𖢅︙لم يتم تعيين ترحيب للكروب*'
end 
send(msg.chat_id_, msg.id_,'['..GetWelcome..']') 
return false  
end
if text == 'تفعيل التحقق' and Manager(msg) then   
if database:get(bot_id.."Chek:Welcome"..msg.chat_id_) then
database:del(bot_id.."Chek:Welcome"..msg.chat_id_)
end
if not database:get(bot_id..'CAPTCHA'..msg.chat_id_) then
database:set(bot_id.."CAPTCHA"..msg.chat_id_,true) 
Text = ' *𖢅︙تم تفعيل التحقق عند دخول الاعضاء*'
else
Text = ' *𖢅︙بالتاكيد تم تفعيل التحقق*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل التحقق' and Manager(msg) then  
if not database:get(bot_id..'CAPTCHA'..msg.chat_id_) then
Text = '\n *𖢅︙بالتاكيد تم تعطيل التحقق*'
else
database:del(bot_id.."CAPTCHA"..msg.chat_id_) 
Text = '\n *𖢅︙تم تعطيل التحقق عند دخول الاعضاء*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الترحيب' and Mod(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id..'Chek:Welcome'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,' *𖢅︙تم تفعيل ترحيب الكروب*') 
return false  
end
if text == 'تعطيل الترحيب' and Mod(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id..'Chek:Welcome'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل ترحيب الكروب*') 
return false  
end
if text == 'مسح الترحيب' or text == 'حذف الترحيب' then 
if Mod(msg) then
database:del(bot_id..'Get:Welcome:Group'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,' *𖢅︙تم ازالة ترحيب الكروب*') 
end
end
if text and text == "منع" and msg.reply_to_message_id_ == 0 and Manager(msg)  then       
send(msg.chat_id_, msg.id_," *𖢅︙ارسل الكلمه لمنعها*")  
database:set(bot_id.."BILLA1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"rep")  
return false  
end    
if text then   
local tsssst = database:get(bot_id.."BILLA1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if tsssst == "rep" then   
send(msg.chat_id_, msg.id_," *𖢅︙ارسل التحذير عند ارسال الكلمه*")  
database:set(bot_id.."BILLA1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"repp")  
database:set(bot_id.."BILLA1:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_, text)  
database:sadd(bot_id.."BILLA1:List:Filter"..msg.chat_id_,text)  
return false  end  
end
if text then  
local test = database:get(bot_id.."BILLA1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test == "repp" then  
send(msg.chat_id_, msg.id_," *𖢅︙تم منع الكلمه مع التحذير*")  
database:del(bot_id.."BILLA1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
local test = database:get(bot_id.."BILLA1:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
if text then   
database:set(bot_id.."BILLA1:Add:Filter:Rp2"..test..msg.chat_id_, text)  
end  
database:del(bot_id.."BILLA1:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
return false  end  
end

if text == "الغاء منع" and msg.reply_to_message_id_ == 0 and Manager(msg) then    
send(msg.chat_id_, msg.id_," *𖢅︙ارسل الكلمه الان*")  
database:set(bot_id.."BILLA1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"reppp")  
return false  end
if text then 
local test = database:get(bot_id.."BILLA1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test and test == "reppp" then   
send(msg.chat_id_, msg.id_," *𖢅︙تم الغاء منعها*")  
database:del(bot_id.."BILLA1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:del(bot_id.."BILLA1:Add:Filter:Rp2"..text..msg.chat_id_)  
database:srem(bot_id.."BILLA1:List:Filter"..msg.chat_id_,text)  
return false  end  
end


if text == 'منع' and tonumber(msg.reply_to_message_id_) > 0 and Manager(msg) then     
function cb(a,b,c) 
textt = ' *𖢅︙تم منع* '
if b.content_.ID == 'MessageSticker' then    
local idsticker = b.content_.sticker_.sticker_.persistent_id_
database:sadd(bot_id.."filtersteckr"..msg.chat_id_,idsticker)
text = 'الملصق'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) بنجاح لن يتم ارسالها مجددا*')  
return false
end
if b.content_.ID == "MessagePhoto" then
local photo = b.content_.photo_.sizes_[1].photo_.persistent_id_
database:sadd(bot_id.."filterphoto"..msg.chat_id_,photo)
text = 'الصوره'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) بنجاح لن يتم ارسالها مجددا*')  
return false
end
if b.content_.animation_.animation_ then
local idanimation = b.content_.animation_.animation_.persistent_id_
database:sadd(bot_id.."filteranimation"..msg.chat_id_,idanimation)
text = 'المتحركه'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) بنجاح لن يتم ارسالها مجددا*')  
return false
end
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, cb, nil)
end
if text == 'الغاء منع' and tonumber(msg.reply_to_message_id_) > 0 and Manager(msg) then     
function cb(a,b,c) 
textt = ' *𖢅︙تم الغاء منع* '
if b.content_.sticker_ then
local idsticker = b.content_.sticker_.sticker_.persistent_id_
database:srem(bot_id.."filtersteckr"..msg.chat_id_,idsticker)
text = 'الملصق'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) بنجاح يمكنهم الارسال الان*')  
return false
end
if b.content_.ID == "MessagePhoto" then
local photo = b.content_.photo_.sizes_[1].photo_.persistent_id_
database:srem(bot_id.."filterphoto"..msg.chat_id_,photo)
text = 'الصوره'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) بنجاح يمكنهم الارسال الان*')  
return false
end
if b.content_.animation_.animation_ then
local idanimation = b.content_.animation_.animation_.persistent_id_
database:srem(bot_id.."filteranimation"..msg.chat_id_,idanimation)
text = 'المتحركه'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) بنجاح يمكنهم الارسال الان*')  
return false
end
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, cb, nil)
end
if text == "مسح قائمه المنع"and Manager(msg) then   
local list = database:smembers(bot_id.."BILLA1:List:Filter"..msg.chat_id_)  
for k,v in pairs(list) do  
database:del(bot_id.."BILLA1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:del(bot_id.."BILLA1:Add:Filter:Rp2"..v..msg.chat_id_)  
database:srem(bot_id.."BILLA1:List:Filter"..msg.chat_id_,v)  
end  
send(msg.chat_id_, msg.id_," *𖢅︙تم مسح قائمه المنع*")  
end
if text == "قائمه المنع" and Manager(msg) then   
tdcli_function ({ID = "GetUser",user_id_ = bot_id},function(arg,data) 
local Text = "\n *𖢅︙قائمة المنع* \n*ٴ— — — — — — — — — — — — — —*\n"
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'صور', url="https://t.me/"..data.username_.."?start=ph"..msg.chat_id_},{text = 'كلمات', url="https://t.me/"..data.username_.."?start=msg"..msg.chat_id_}},
{{text = 'متحركات', url="https://t.me/"..data.username_.."?start=gif"..msg.chat_id_},{text = 'ملصقات', url="https://t.me/"..data.username_.."?start=Sti"..msg.chat_id_}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)
end
if text == 'مسح قائمه منع المتحركات' and Manager(msg) then     
database:del(bot_id.."filteranimation"..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *𖢅︙تم مسح قائمه منع المتحركات*')  
end
if text == 'مسح قائمه منع الصور' and Manager(msg) then     
database:del(bot_id.."filterphoto"..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *𖢅︙تم مسح قائمه منع الصور*')  
end
if text == 'مسح قائمه منع الملصقات' and Manager(msg) then     
database:del(bot_id.."filtersteckr"..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *𖢅︙تم مسح قائمه منع الملصقات*')  
end
------------------

if text == 'مسح كليشه المطور' and DevBILLAW(msg) then
database:del(bot_id..'TEXT_SUDO')
send(msg.chat_id_, msg.id_,' *𖢅︙تم مسح كليشه المطور*')
end
if text == 'ضع كليشه المطور' and DevBILLAW(msg) then
database:set(bot_id..'Set:TEXT_SUDO'..msg.chat_id_..':'..msg.sender_user_id_,true)
send(msg.chat_id_,msg.id_,' *𖢅︙ارسل الكليشه الان*')
return false
end
if text and database:get(bot_id..'Set:TEXT_SUDO'..msg.chat_id_..':'..msg.sender_user_id_) then
if text == 'الغاء' then 
database:del(bot_id..'Set:TEXT_SUDO'..msg.chat_id_..':'..msg.sender_user_id_)
send(msg.chat_id_,msg.id_,' *𖢅︙تم الغاء حفظ كليشة المطور*')
return false
end
database:set(bot_id..'TEXT_SUDO',text)
database:del(bot_id..'Set:TEXT_SUDO'..msg.chat_id_..':'..msg.sender_user_id_)
send(msg.chat_id_,msg.id_,' *𖢅︙تم حفظ كليشة المطور*')
return false
end
هيمو ال تميم
if text == 'تعين الايدي' and Manager(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:setex(bot_id.."CHENG:ID"..msg.chat_id_..""..msg.sender_user_id_,240,true)  
local Text= [[
 *𖢅︙ارسل الان النص*
*𖢅︙يمكنك اضافه :*
 *𖢅︙#rdphoto ↫ تعليق الصوره*
 *𖢅︙#username ↫ اسم* 
 *𖢅︙#msgs ↫ عدد رسائل* 
 *𖢅︙#photos ↫ عدد صور* 
 *𖢅︙#bio ↫ البايو* 
  *𖢅︙#custom ↫ اللقب* 
 *𖢅︙#id ↫ ايدي* 
 *𖢅︙#auto ↫ تفاعل* 
 *𖢅︙#stast ↫ موقع*  
 *𖢅︙#edit ↫ السحكات*
 *𖢅︙#game ↫ النقاط*
]]
send(msg.chat_id_, msg.id_,Text)
return false  
end 
if text == 'حذف الايدي' or text == 'مسح الايدي' then
if Manager(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."KLISH:ID"..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *𖢅︙تم ازالة كليشة الايدي*')
end
return false  
end 

if database:get(bot_id.."CHENG:ID"..msg.chat_id_..""..msg.sender_user_id_) then 
if text == 'الغاء' then 
send(msg.chat_id_, msg.id_," *𖢅︙تم الغاء تعين الايدي*") 
database:del(bot_id.."CHENG:ID"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
database:del(bot_id.."CHENG:ID"..msg.chat_id_..""..msg.sender_user_id_) 
local CHENGER_ID = text:match("(.*)")  
database:set(bot_id.."KLISH:ID"..msg.chat_id_,CHENGER_ID)
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعين الايدي*')
end

if text == 'طرد البوتات' and Mod(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function ({ ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah)  
local admins = tah.members_  
local x = 0
local c = 0
for i=0 , #admins do 
if tah.members_[i].status_.ID == "ChatMemberStatusEditor" then  
x = x + 1 
end
if tonumber(admins[i].user_id_) ~= tonumber(bot_id) then
chat_kick(msg.chat_id_,admins[i].user_id_)
end
c = c + 1
end 
if (c - x) == 0 then
send(msg.chat_id_, msg.id_, " *𖢅︙لا توجد بوتات في الكروب*")
else
local t = ' *𖢅︙عدد البوتات هنا >> {'..c..'}*\n*𖢅︙عدد البوتات التي هي ادمن >> {'..x..'}*\n*𖢅︙تم طرد >> {'..(c - x)..'} من البوتات*'
send(msg.chat_id_, msg.id_,t) 
end 
end,nil)  
end   
end
if text == ("كشف البوتات") and Mod(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function ({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(extra,result,success)
local admins = result.members_  
text = "\n *𖢅︙قائمة البوتات الموجوده* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
local n = 0
local t = 0
for i=0 , #admins do 
n = (n + 1)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_
},function(arg,ta) 
if result.members_[i].status_.ID == "ChatMemberStatusMember" then  
tr = ''
elseif result.members_[i].status_.ID == "ChatMemberStatusEditor" then  
t = t + 1
tr = ' {★}'
end
text = text..">> [@"..ta.username_..']'..tr.."\n"
if #admins == 0 then
send(msg.chat_id_, msg.id_, " *𖢅︙لا توجد بوتات في الكروب*")
return false 
end
if #admins == i then 
local a = '\n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n*𖢅︙عدد البوتات التي هنا >> {'..n..'} بوت*\n'
local f = '*𖢅︙عدد البوتات التي هي ادمن >> {'..t..'}*\n*𖢅︙ملاحضه علامة ال (✯) تعني ان البوت ادمن* \n'
send(msg.chat_id_, msg.id_, text..a..f)
end
end,nil)
end
end,nil)
end

if database:get(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' then 
send(msg.chat_id_, msg.id_, " *𖢅︙تم الغاء حفظ القوانين*") 
database:del(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
return false  
end 
database:set(bot_id.."Set:Rules:Group" .. msg.chat_id_,text) 
send(msg.chat_id_, msg.id_," *𖢅︙تم حفظ قوانين الكروب*") 
database:del(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
end  

if text == 'ضع قوانين' or text == 'وضع قوانين' then 
if Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:setex(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_,msg.id_," *𖢅︙ارسل لي القوانين الان*")  
end
end
if text == 'مسح القوانين' or text == 'حذف القوانين' then  
if Mod(msg) then
send(msg.chat_id_, msg.id_," *𖢅︙تم ازالة قوانين الكروب*")  
database:del(bot_id.."Set:Rules:Group"..msg.chat_id_) 
end
end
if text == 'القوانين' then 
local Set_Rules = database:get(bot_id.."Set:Rules:Group" .. msg.chat_id_)   
if Set_Rules then 
send(msg.chat_id_,msg.id_, Set_Rules)   
else  
send(msg.chat_id_, msg.id_," *𖢅︙لا توجد قوانين*")   
end
end
if text == 'قفل التفليش' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id..'lock:tagrvrbot'..msg.chat_id_,true)   
list ={"lock:Bot:kick","lock:user:name","lock:Link","lock:forward","lock:Sticker","lock:Animation","lock:Video","lock:Fshar","lock:Fars","Bot:Id:Photo","lock:Audio","lock:vico","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..lock..msg.chat_id_,'del')
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم قفـل التفليش* ')  
end,nil)   
end
if text == 'فتح التفليش' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id..'lock:tagrvrbot'..msg.chat_id_)   
list ={"lock:Bot:kick","lock:user:name","lock:Link","lock:forward","lock:Sticker","lock:Animation","lock:Video","lock:Fshar","lock:Fars","Bot:Id:Photo","lock:Audio","lock:vico","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..lock..msg.chat_id_)
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *𖢅︙بواسطه »* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'EE28i')..') \n*𖢅︙تـم فـتح التفليش* ')  
end,nil)   
end
if text == 'طرد المحذوفين' or text == 'مسح المحذوفين' then  
if Mod(msg) then
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),offset_ = 0,limit_ = 1000}, function(arg,del)
for k, v in pairs(del.members_) do
tdcli_function({ID = "GetUser",user_id_ = v.user_id_},function(b,data) 
if data.first_name_ == false then
Group_Kick(msg.chat_id_, data.id_)
end
end,nil)
end
send(msg.chat_id_, msg.id_,' *𖢅︙تم طرد المحذوفين*')
end,nil)
end
end
if text == 'الصلاحيات' and Mod(msg) then 
local list = database:smembers(bot_id..'Coomds'..msg.chat_id_)
if #list == 0 then
send(msg.chat_id_, msg.id_,' *𖢅︙لا توجد صلاحيات مضافه*')
return false
end
t = "\n *𖢅︙قائمة الصلاحيات المضافه* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
var = database:get(bot_id.."Comd:New:rt:bot:"..v..msg.chat_id_)
if var then
t = t..''..k..'- '..v..' » ('..var..')\n'
else
t = t..''..k..'- '..v..'\n'
end
end
send(msg.chat_id_, msg.id_,t)
end
if text and text:match("^اضف صلاحيه (.*)$") and Mod(msg) then 
ComdNew = text:match("^اضف صلاحيه (.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_,ComdNew)  
database:sadd(bot_id.."Coomds"..msg.chat_id_,ComdNew)  
database:setex(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_,200,true)  
send(msg.chat_id_, msg.id_, " *𖢅︙ارسل نوع الرتبه* \n*𖢅︙{عـضـو -- ممـيـز -- ادمـن -- مـديـر}*") 
end
if text and text:match("^مسح صلاحيه (.*)$") and Mod(msg) then 
ComdNew = text:match("^مسح صلاحيه (.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."Comd:New:rt:bot:"..ComdNew..msg.chat_id_)
send(msg.chat_id_, msg.id_, " *𖢅︙تم مسح الصلاحيه* \n") 
end
if database:get(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
send(msg.chat_id_, msg.id_," *𖢅︙تم الغاء الامر* \n") 
database:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
if text == 'مدير' then
if not Constructor(msg) then
send(msg.chat_id_, msg.id_" *𖢅︙تستطيع اضافه صلاحيات {ادمن - مميز - عضو}* \n*𖢅︙ارسل الصلاحيه مجددا*\n") 
return false
end
end
if text == 'ادمن' then
if not Manager(msg) then 
send(msg.chat_id_, msg.id_," *𖢅︙تستطيع اضافه صلاحيات {مميز - عضو}* \n*𖢅︙ارسل الصلاحيه مجددا*\n") 
return false
end
end
if text == 'مميز' then
if not Mod(msg) then
send(msg.chat_id_, msg.id_," *𖢅︙ تستطيع اضافه صلاحيات {عضو}* \n*𖢅︙ارسل الصلاحيه مجددا*\n") 
return false
end
end
if text == 'مدير' or text == 'ادمن' or text == 'مميز' or text == 'عضو' then
local textn = database:get(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_)  
database:set(bot_id.."Comd:New:rt:bot:"..textn..msg.chat_id_,text)
send(msg.chat_id_, msg.id_, " *𖢅︙تـم اضـافـه الامـر*") 
database:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
end
if text and text:match('رفع (.*)') and tonumber(msg.reply_to_message_id_) > 0 and Mod(msg) then 
local RTPA = text:match('رفع (.*)')
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:sismember(bot_id..'Coomds'..msg.chat_id_,RTPA) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local blakrt = database:get(bot_id.."Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if blakrt == 'مميز' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'..'\n*𖢅︙تم رفعه '..RTPA..'*\n')   
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_,RTPA) 
database:sadd(bot_id..'Special:User'..msg.chat_id_,result.sender_user_id_)  
elseif blakrt == 'ادمن' and Manager(msg) then 
send(msg.chat_id_, msg.id_,'\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'..'\n*𖢅︙تم رفعه '..RTPA..'*\n')   
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_,RTPA)
database:sadd(bot_id..'Mod:User'..msg.chat_id_,result.sender_user_id_)  
elseif blakrt == 'مدير' and Constructor(msg) then
send(msg.chat_id_, msg.id_,'\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'..'\n*𖢅︙تم رفعه '..RTPA..'*\n')   
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_,RTPA)  
database:sadd(bot_id..'Manager'..msg.chat_id_,result.sender_user_id_)  
elseif blakrt == 'عضو' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'..'\n*𖢅︙تم رفعه '..RTPA..'*\n')   
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match('تنزيل (.*)') and tonumber(msg.reply_to_message_id_) > 0 and Mod(msg) then 
local RTPA = text:match('تنزيل (.*)')
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:sismember(bot_id..'Coomds'..msg.chat_id_,RTPA) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local blakrt = database:get(bot_id.."Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if blakrt == 'مميز' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'..'\n*𖢅︙م تنزيله من '..RTPA..'*\n')   
database:srem(bot_id..'Special:User'..msg.chat_id_,result.sender_user_id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_)
elseif blakrt == 'ادمن' and Manager(msg) then 
send(msg.chat_id_, msg.id_,'\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'..'\n*𖢅︙تم تنزيله من '..RTPA..'*\n')   
database:srem(bot_id..'Mod:User'..msg.chat_id_,result.sender_user_id_) 
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_)
elseif blakrt == 'مدير' and Constructor(msg) then
send(msg.chat_id_, msg.id_,'\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'..'\n*𖢅︙ تم تنزيله من '..RTPA..'*\n')   
database:srem(bot_id..'Manager'..msg.chat_id_,result.sender_user_id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_)
elseif blakrt == 'عضو' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *𖢅︙اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'..'\n*𖢅︙تم تنزيله من '..RTPA..'*\n')   
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match('^رفع (.*) @(.*)') and Mod(msg) then 
local text1 = {string.match(text, "^(رفع) (.*) @(.*)$")}
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:sismember(bot_id..'Coomds'..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local blakrt = database:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if blakrt == 'مميز' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'EE28i')..')'..'\n*𖢅︙تم رفعه '..text1[2]..'*')   
database:sadd(bot_id..'Special:User'..msg.chat_id_,result.id_)  
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_,text1[2])
elseif blakrt == 'ادمن' and Manager(msg) then 
send(msg.chat_id_, msg.id_,'\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'EE28i')..')'..'\n*𖢅︙تم رفعه '..text1[2]..'*')   
database:sadd(bot_id..'Mod:User'..msg.chat_id_,result.id_)  
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_,text1[2])
elseif blakrt == 'مدير' and Constructor(msg) then
send(msg.chat_id_, msg.id_,'\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'EE28i')..')'..'\n*𖢅︙تم رفعه '..text1[2]..'*')   
database:sadd(bot_id..'Manager'..msg.chat_id_,result.id_)  
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_,text1[2])
elseif blakrt == 'عضو' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'EE28i')..')'..'\n*𖢅︙تم رفعه '..text1[2]..'*')   
end
else
info = ' *𖢅︙المعرف غلط*'
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end 
end
if text and text:match('^تنزيل (.*) @(.*)') and Mod(msg) then 
local text1 = {string.match(text, "^(تنزيل) (.*) @(.*)$")}
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:sismember(bot_id..'Coomds'..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local blakrt = database:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if blakrt == 'مميز' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'EE28i')..')'..'\n*𖢅︙تم تنريله من '..text1[2]..'*')   
database:srem(bot_id..'Special:User'..msg.chat_id_,result.id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_)
elseif blakrt == 'ادمن' and Manager(msg) then 
send(msg.chat_id_, msg.id_,'\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'EE28i')..')'..'\n*𖢅︙تم تنريله من '..text1[2]..'*')   
database:srem(bot_id..'Mod:User'..msg.chat_id_,result.id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_)
elseif blakrt == 'مدير' and Constructor(msg) then
send(msg.chat_id_, msg.id_,'\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'EE28i')..')'..'\n*𖢅︙تم تنريله من '..text1[2]..'*')   
database:srem(bot_id..'Manager'..msg.chat_id_,result.id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_)
elseif blakrt == 'عضو' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *𖢅︙اسم المستخدم »* ['..result.title_..'](t.me/'..(text1[3] or 'EE28i')..')'..'\n*𖢅︙تم تنريله من '..text1[2]..'*')   
end
else
info = ' *𖢅︙المعرف غلط*'
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end  
end
if text == "مسح رسايلي" or text == "مسح رسائلي" or text == "حذف رسايلي" or text == "حذف رسائلي" then  
send(msg.chat_id_, msg.id_,' *𖢅︙تم مسح رسائلك*'  )  
database:del(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) 
end
if text == "رسايلي" or text == "رسائلي" or text == "msg" then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_,' *𖢅︙عدد رسائلك » { '..database:get(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_)..'}*' ) 
end 
if text == 'تفعيل الاذاعه' and DevBILLAW(msg) then  
if database:get(bot_id..'Bc:Bots') then
database:del(bot_id..'Bc:Bots') 
Text = '\n *𖢅︙تم تفعيل الاذاعه*' 
else
Text = '\n *𖢅︙بالتاكيد تم تفعيل الاذاعه*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الاذاعه' and DevBILLAW(msg) then  
if not database:get(bot_id..'Bc:Bots') then
database:set(bot_id..'Bc:Bots',true) 
Text = '\n *𖢅︙تم تعطيل الاذاعه*' 
else
Text = '\n *𖢅︙ بالتاكيد تم تعطيل الاذاعه*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل التواصل' and DevBILLAW(msg) then  
if database:get(bot_id..'Tuasl:Bots') then
database:del(bot_id..'Tuasl:Bots') 
Text = '\n *𖢅︙تم تفعيل التواصل*' 
else
Text = '\n *𖢅︙بالتاكيد تم تفعيل التواصل*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل التواصل' and DevBILLAW(msg) then  
if not database:get(bot_id..'Tuasl:Bots') then
database:set(bot_id..'Tuasl:Bots',true) 
Text = '\n *𖢅︙تم تعطيل التواصل*' 
else
Text = '\n *𖢅︙بالتاكيد تم تعطيل التواصل*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل البوت الخدمي' and DevBILLAW(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Free:Bots') then
database:del(bot_id..'Free:Bots') 
Text = '\n *𖢅︙تم تفعيل البوت الخدمي*' 
else
Text = '\n *𖢅︙بالتاكيد تم تفعيل البوت الخدمي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل البوت الخدمي' and DevBILLAW(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if not database:get(bot_id..'Free:Bots') then
database:set(bot_id..'Free:Bots',true) 
Text = '\n *𖢅︙تم تعطيل البوت الخدمي*' 
else
Text = '\n *𖢅︙بالتاكيد تم تعطيل البوت الخدمي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match('^تنظيف (%d+)$') and Manager(msg) then
if not database:get(bot_id..'VVVZVV:Delete:Time'..msg.chat_id_..':'..msg.sender_user_id_) then   
local num = tonumber(text:match('^تنظيف (%d+)$')) 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if num > 1000 then 
send(msg.chat_id_, msg.id_,'*𖢅︙تستطيع التنظيف 1000 رساله كحد اقصى*') 
return false  
end  
local msgm = msg.id_
for i=1,tonumber(num) do
DeleteMessage(msg.chat_id_, {[0] = msgm})
msgm = msgm - 1048576
end
send(msg.chat_id_,msg.id_,'*𖢅︙تم حذف {'..num..'}*')  
database:setex(bot_id..'VVVZVV:Delete:Time'..msg.chat_id_..':'..msg.sender_user_id_,300,true)
end
end
if text == "امسح" and BasicConstructor(msg) then
msgm = {[0]=msg.id_}
local Message = msg.id_
for i=1,200 do
Message = Message - 1048576
msgm[i] = Message
end
tdcli_function({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = msgm},function(arg,data)
new = 0
msgm2 = {}
for i=0 ,data.total_count_ do
if data.messages_[i] and data.messages_[i].content_ and data.messages_[i].content_.ID ~= "MessageText" then
msgm2[new] = data.messages_[i].id_
new = new + 1
end
end
DeleteMessage(msg.chat_id_,msgm2)
end,nil)  
send(msg.chat_id_, msg.id_,"*تم تنظيف الميديا 𖢅*")
end
if text == "تنظيف التعديل" and Manager(msg) then
Msgs = {[0]=msg.id_}
local Message = msg.id_
for i=1,100 do
Message = Message - 1048576
Msgs[i] = Message
end
tdcli_function({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data)
new = 0
Msgs2 = {}
for i=0 ,data.total_count_ do
if data.messages_[i] and (not data.messages_[i].edit_date_ or data.messages_[i].edit_date_ ~= 0) then
Msgs2[new] = data.messages_[i].id_
new = new + 1
end
end
DeleteMessage(msg.chat_id_,Msgs2)
end,nil)  
send(msg.chat_id_, msg.id_,'*𖢅︙تم تنظيف جميع الرسائل المعدله*')
end
if text == "تغير اسم البوت" or text == "تغيير اسم البوت" then 
if DevBILLAW(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:setex(bot_id..'Set:Name:Bot'..msg.sender_user_id_,300,true) 
send(msg.chat_id_, msg.id_," *𖢅︙ارسل لي الاسم الان* ")  
end
return false
end

if text == ""..(database:get(bot_id..'Name:Bot') or 'بيلا').."" then  
Namebot = (database:get(bot_id..'Name:Bot') or 'بيلا')
local BILLA_Msg = {
'عمغي 🥺💕.',
'هاا شتريد كافي ☹️.',
'مشايف بوت شني 😂.',
'كول حبيبي ؟ اني '..Namebot..'',
'مشغول حالياً',
'عمري فداك '..Namebot..' كول حب'
}
send(msg.chat_id_, msg.id_,'['..BILLA_Msg[math.random(#BILLA_Msg)]..']') 
return false
end
if text=="اذاعه خاص" and msg.reply_to_message_id_ == 0 and Sudo(msg) then 
if database:get(bot_id..'Bc:Bots') and not DevBILLAW(msg) then 
send(msg.chat_id_, msg.id_,' *𖢅︙الاذاعه معطله من قبل المطور الاساسي*')
return false
end
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:setex(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *𖢅︙ارسل الان اذاعتك* \n*𖢅︙للخروج ارسل الغاء*") 
return false
end 
if text=="اذاعه" and msg.reply_to_message_id_ == 0 and Sudo(msg) then 
if database:get(bot_id..'Bc:Bots') and not DevBILLAW(msg) then 
send(msg.chat_id_, msg.id_,' *𖢅︙الاذاعه معطله من قبل المطور الاساسي*')
return false
end
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:setex(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *𖢅︙ارسل الان اذاعتك* \n*𖢅︙للخروج ارسل الغاء* ") 
return false
end  
if text=="اذاعه بالتوجيه" and msg.reply_to_message_id_ == 0  and Sudo(msg) then 
if database:get(bot_id..'Bc:Bots') and not DevBILLAW(msg) then 
send(msg.chat_id_, msg.id_,' *𖢅︙الاذاعه معطله من قبل المطور الاساسي*')
return false
end
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:setex(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *𖢅︙ارسل لي التوجيه الان*") 
return false
end 
if text=="اذاعه بالتوجيه خاص" and msg.reply_to_message_id_ == 0  and Sudo(msg) then 
if database:get(bot_id..'Bc:Bots') and not DevBILLAW(msg) then 
send(msg.chat_id_, msg.id_,' *𖢅︙ الاذاعه معطله من قبل المطور الاساسي*')
return false
end
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:setex(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *𖢅︙ارسل لي التوجيه الان*") 
return false
end 
if text and text:match('^ضع اسم (.*)') and Manager(msg) or text and text:match('^وضع اسم (.*)') and Manager(msg) then 
local Name = text:match('^ضع اسم (.*)') or text and text:match('^وضع اسم (.*)') 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function ({ ID = "ChangeChatTitle",chat_id_ = msg.chat_id_,title_ = Name },function(arg,data) 
if data.message_ == "Channel chat title can be changed by administrators only" then
send(msg.chat_id_,msg.id_," *𖢅︙البوت ليس ادمن يرجى ترقيتي !*")  
return false  
end 
if data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_," *𖢅︙ليست لدي صلاحية تغير اسم الكروب*")  
else
send(msg.chat_id_,msg.id_,' *𖢅︙تم تغيير اسم الكروب الى* {['..Name..']}')  
end
end,nil) 
end

if text == "تاك للكل" and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = 200
},function(ta,BILLA)
local t = "\n*ツ قائمة الاعضاء* \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
x = 0
local list = BILLA.members_
for k, v in pairs(list) do
x = x + 1
if database:get(bot_id..'user:Name'..v.user_id_) then
t = t..""..x.." → {[@"..database:get(bot_id..'user:Name'..v.user_id_).."]}\n"
else
t = t..""..x.." → {"..v.user_id_.."}\n"
end
end
send(msg.chat_id_,msg.id_,t)
end,nil)
end
if text == ("تنزيل الكل") and msg.reply_to_message_id_ ~= 0 and Manager(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if BILLASudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_," *𖢅︙لا تستطيع تنزيل مطور السورس او الاساسي*")
return false 
end
if Can_or_NotCan(result.sender_user_id_,msg.chat_id_) ~= false then
send(msg.chat_id_, msg.id_,"\n *𖢅 تم تنزيل الشخص من جميع الرتب *")
else
send(msg.chat_id_, msg.id_,"\n *𖢅︙ عذرا العضو لايملك رتبه* \n")
end
if BILLASudoBot(msg.sender_user_id_) then
database:srem(bot_id..'DEV:Sudo:T', result.sender_user_id_)
database:srem(bot_id..'Sudo:User', result.sender_user_id_)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'DEV:Sudo:T',msg.sender_user_id_) then
database:srem(bot_id..'Sudo:User', result.sender_user_id_)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'Sudo:User',msg.sender_user_id_) then
database:srem(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'CoSu'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'Constructor'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'Manager'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text and text:match("^تنزيل الكل @(.*)$") and Manager(msg) then
function FunctionStatus(extra, result, success)
if (result.id_) then
if BILLASudoBot(result.id_) then
send(msg.chat_id_, msg.id_," *𖢅︙لا تستطيع تنزيل مطور السورس او الاساسي*")
return false 
end
if Can_or_NotCan(result.id_,msg.chat_id_) ~= false then
send(msg.chat_id_, msg.id_,"\n *𖢅 تم تنزيل الشخص من جميع الرتب *")
else
send(msg.chat_id_, msg.id_,"\n *𖢅︙ عذرا العضو لايملك رتبه* \n")
end
if BILLASudoBot(msg.sender_user_id_) then
database:srem(bot_id..'DEV:Sudo:T', result.id_)
database:srem(bot_id..'Sudo:User', result.id_)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'DEV:Sudo:T',msg.sender_user_id_) then
database:srem(bot_id..'Sudo:User', result.id_)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'Sudo:User',msg.sender_user_id_) then
database:srem(bot_id..'CoSu'..msg.chat_id_, result.id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'CoSu'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'Constructor'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'Manager'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
end
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text:match("^تنزيل الكل @(.*)$")}, FunctionStatus, nil)
end
if text == ("مسح ردود المطور") and DevBILLAW(msg) then 
local list = database:smembers(bot_id..'List:Rd:Sudo')
for k,v in pairs(list) do
database:del(bot_id.."Add:Rd:Sudo:Gif"..v)   
database:del(bot_id.."Add:Rd:Sudo:vico"..v)   
database:del(bot_id.."Add:Rd:Sudo:stekr"..v) 
database:del(bot_id.."Add:Rd:Sudo:Text"..v)   
database:del(bot_id.."Add:Rd:Sudo:Photo"..v)
database:del(bot_id.."Add:Rd:Sudo:Video"..v)
database:del(bot_id.."Add:Rd:Sudo:File"..v)
database:del(bot_id.."Add:Rd:Sudo:Audio"..v)
database:del(bot_id..'List:Rd:Sudo')
end
send(msg.chat_id_, msg.id_," *𖢅︙تم مسح ردود المطور*")
end

if text == ("ردود المطور") and DevBILLAW(msg) then 
local list = database:smembers(bot_id..'List:Rd:Sudo')
text = "\n 𖢅︙قائمة ردود المطور \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
if database:get(bot_id.."Add:Rd:Sudo:Gif"..v) then
db = 'متحركه'
elseif database:get(bot_id.."Add:Rd:Sudo:vico"..v) then
db = 'بصمه'
elseif database:get(bot_id.."Add:Rd:Sudo:stekr"..v) then
db = 'ملصق'
elseif database:get(bot_id.."Add:Rd:Sudo:Text"..v) then
db = 'رساله'
elseif database:get(bot_id.."Add:Rd:Sudo:Photo"..v) then
db = 'صوره'
elseif database:get(bot_id.."Add:Rd:Sudo:Video"..v) then
db = 'فيديو'
elseif database:get(bot_id.."Add:Rd:Sudo:File"..v) then
db = 'ملف'
elseif database:get(bot_id.."Add:Rd:Sudo:Audio"..v) then
db = 'اغنيه'
end
text = text..""..k.." >> ("..v..") » {"..db.."}\n"
end
if #list == 0 then
text = " 𖢅︙لا يوجد ردود للمطور"
end
send(msg.chat_id_, msg.id_,'['..text..']')
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = database:get(bot_id..'Text:Sudo:Bot'..msg.sender_user_id_..':'..msg.chat_id_)
if database:get(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_) == 'true1' then
database:del(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_)
if msg.content_.sticker_ then   
database:set(bot_id.."Add:Rd:Sudo:stekr"..test, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
database:set(bot_id.."Add:Rd:Sudo:vico"..test, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
database:set(bot_id.."Add:Rd:Sudo:Gif"..test, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"','') 
text = text:gsub("'",'') 
text = text:gsub('`','') 
text = text:gsub('*','') 
database:set(bot_id.."Add:Rd:Sudo:Text"..test, text)  
end  
if msg.content_.audio_ then
database:set(bot_id.."Add:Rd:Sudo:Audio"..test, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
database:set(bot_id.."Add:Rd:Sudo:File"..test, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
database:set(bot_id.."Add:Rd:Sudo:Video"..test, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."Add:Rd:Sudo:Photo"..test, photo_in_group)  
end
send(msg.chat_id_, msg.id_,' *𖢅︙تم حفظ الرد*')
return false  
end  
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_) == 'true' then
send(msg.chat_id_, msg.id_,' *𖢅︙ارسل الرد الذي تريد اضافته*')
database:set(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_, 'true1')
database:set(bot_id..'Text:Sudo:Bot'..msg.sender_user_id_..':'..msg.chat_id_, text)
database:sadd(bot_id..'List:Rd:Sudo', text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'Set:On'..msg.sender_user_id_..':'..msg.chat_id_) == 'true' then
send(msg.chat_id_, msg.id_,' *𖢅︙تم ازالة الرد العام*')
list = {"Add:Rd:Sudo:Audio","Add:Rd:Sudo:File","Add:Rd:Sudo:Video","Add:Rd:Sudo:Photo","Add:Rd:Sudo:Text","Add:Rd:Sudo:stekr","Add:Rd:Sudo:vico","Add:Rd:Sudo:Gif"}
for k,v in pairs(list) do
database:del(bot_id..v..text)
end
database:del(bot_id..'Set:On'..msg.sender_user_id_..':'..msg.chat_id_)
database:srem(bot_id..'List:Rd:Sudo', text)
return false
end
end
if text == 'اضف رد للكل' and DevBILLAW(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_,' *𖢅︙ارسل الكلمه تريد اضافتها*')
database:set(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_,true)
return false 
end
if text == 'حذف رد للكل' and DevBILLAW(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_,' *𖢅︙ارسل الكلمه تريد حذفها*')
database:set(bot_id..'Set:On'..msg.sender_user_id_..':'..msg.chat_id_,true)
return false 
end
if text and not database:get(bot_id..'Reply:Sudo'..msg.chat_id_) then
if not database:sismember(bot_id..'Spam:Texting'..msg.sender_user_id_,text) then
local anemi = database:get(bot_id.."Add:Rd:Sudo:Gif"..text)   
local veico = database:get(bot_id.."Add:Rd:Sudo:vico"..text)   
local stekr = database:get(bot_id.."Add:Rd:Sudo:stekr"..text) 
local text1 = database:get(bot_id.."Add:Rd:Sudo:Text"..text)   
local photo = database:get(bot_id.."Add:Rd:Sudo:Photo"..text)
local video = database:get(bot_id.."Add:Rd:Sudo:Video"..text)
local document = database:get(bot_id.."Add:Rd:Sudo:File"..text)
local audio = database:get(bot_id.."Add:Rd:Sudo:Audio"..text)
هيمو ال تميم
هيمو ال تميم
if text1 then 
send(msg.chat_id_, msg.id_,text1)
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if stekr then 
sendSticker(msg.chat_id_, msg.id_, 0, 1, nil, stekr)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, veico)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_, 0, 1, nil,video)
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if anemi then 
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, anemi, '', nil)  
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, 0, 1,nil, document)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil,photo,'')
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end  
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."botss:Amir:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '\n*𖢅︙ارسل الكلمه تريد اضافتها*')
database:set(bot_id.."botss:Amir:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_, "true1")
database:set(bot_id.."botss:Amir:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:sadd(bot_id.."botss:"..msg.chat_id_..":Amir:List:Rd:Sudo", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."botss:Amir:Set:On"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_,"*𖢅︙تم حذف الرد من ردود المتعدده*")
database:del(bot_id..'botss:Amir:Add:Rd:Sudo:Text'..text)
database:del(bot_id..'botss:Amir:Add:Rd:Sudo:Text1'..text)
database:del(bot_id..'botss:Amir:Add:Rd:Sudo:Text2'..text)
database:del(bot_id.."botss:Amir:Set:On"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."botss:"..msg.chat_id_..":Amir:List:Rd:Sudo", text)
return false
end
end
if text == ("مسح الردود المتعدده") and SudoBotCoSu(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = database:smembers(bot_id.."botss:"..msg.chat_id_..":Amir:List:Rd:Sudo")
for k,v in pairs(list) do  
database:del(bot_id.."botss:"..msg.chat_id_..":Amir:Add:Rd:Sudo:Text"..v) 
database:del(bot_id.."botss:"..msg.chat_id_..":Amir:Add:Rd:Sudo:Text1"..v) 
database:del(bot_id.."botss:"..msg.chat_id_..":Amir:Add:Rd:Sudo:Text2"..v)   
database:del(bot_id.."botss:"..msg.chat_id_..":Amir:List:Rd:Sudo")
end
send(msg.chat_id_, msg.id_,"*𖢅︙تم حذف ردود المتعدده*")
end
if text == ("مسح ردود المدير") and BasicConstructor(msg) then
local list = database:smembers(bot_id..'List:Manager'..msg.chat_id_..'')
for k,v in pairs(list) do
database:del(bot_id.."Add:Rd:Manager:Gif"..v..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..v..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..v..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..v..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..v..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..v..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..v..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..v..msg.chat_id_)
database:del(bot_id..'List:Manager'..msg.chat_id_)
end
send(msg.chat_id_, msg.id_," *𖢅︙تم مسح ردود المدير*")
end

if text == ("ردود المدير") and Manager(msg) then
local list = database:smembers(bot_id..'List:Manager'..msg.chat_id_..'')
text = " 𖢅︙قائمه ردود المدير \n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
if database:get(bot_id.."Add:Rd:Manager:Gif"..v..msg.chat_id_) then
db = 'متحركه'
elseif database:get(bot_id.."Add:Rd:Manager:Vico"..v..msg.chat_id_) then
db = 'بصمه'
elseif database:get(bot_id.."Add:Rd:Manager:Stekrs"..v..msg.chat_id_) then
db = 'ملصق'
elseif database:get(bot_id.."Add:Rd:Manager:Text"..v..msg.chat_id_) then
db = 'رساله'
elseif database:get(bot_id.."Add:Rd:Manager:Photo"..v..msg.chat_id_) then
db = 'صوره'
elseif database:get(bot_id.."Add:Rd:Manager:Video"..v..msg.chat_id_) then
db = 'فيديو'
elseif database:get(bot_id.."Add:Rd:Manager:File"..v..msg.chat_id_) then
db = 'ملف'
elseif database:get(bot_id.."Add:Rd:Manager:Audio"..v..msg.chat_id_) then
db = 'اغنيه'
end
text = text..""..k..">> ("..v..") » {"..db.."}\n"
end
if #list == 0 then
text = " 𖢅︙لا يوجد ردود للمدير"
end
send(msg.chat_id_, msg.id_,'['..text..']')
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = database:get(bot_id..'Text:Manager'..msg.sender_user_id_..':'..msg.chat_id_..'')
if database:get(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_) == 'true1' then
database:del(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_)
if msg.content_.sticker_ then   
database:set(bot_id.."Add:Rd:Manager:Stekrs"..test..msg.chat_id_, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
database:set(bot_id.."Add:Rd:Manager:Vico"..test..msg.chat_id_, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
database:set(bot_id.."Add:Rd:Manager:Gif"..test..msg.chat_id_, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"','') 
text = text:gsub("'",'') 
text = text:gsub('`','') 
text = text:gsub('*','') 
database:set(bot_id.."Add:Rd:Manager:Text"..test..msg.chat_id_, text)  
end  
if msg.content_.audio_ then
database:set(bot_id.."Add:Rd:Manager:Audio"..test..msg.chat_id_, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
database:set(bot_id.."Add:Rd:Manager:File"..test..msg.chat_id_, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
database:set(bot_id.."Add:Rd:Manager:Video"..test..msg.chat_id_, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."Add:Rd:Manager:Photo"..test..msg.chat_id_, photo_in_group)  
end
send(msg.chat_id_, msg.id_,' *𖢅︙تم حفظ الرد*')
return false  
end  
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_) == 'true' then
send(msg.chat_id_, msg.id_,' *𖢅︙ارسل الرد الذي تريد اضافته*')
database:set(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_,'true1')
database:set(bot_id..'Text:Manager'..msg.sender_user_id_..':'..msg.chat_id_, text)
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:sadd(bot_id..'List:Manager'..msg.chat_id_..'', text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_..'') == 'true2' then
send(msg.chat_id_, msg.id_,' *𖢅︙تم ازالة الرد* ')
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:del(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_)
database:srem(bot_id..'List:Manager'..msg.chat_id_..'', text)
return false
end
end
if text == "اضف رد" and Manager(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_,"*𖢅︙ارسل الكلمه التي تريد اضافتها*")
database:set(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == "حذف رد" and Manager(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_,"*𖢅︙ارسل الكلمه التي تريد حذفها*")
database:set(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true2")
return false 
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '*𖢅︙الان ارسل الرد الذي تريد اضافته* \n*𖢅︙قد يكون (ملف - فديو - نص - ملصق - بصمه - متحركه )*\n*𖢅︙يمكنك اضافه الى النص :*\n𖢅︙`#username` > معرف المستخدم\n𖢅︙`#msgs` > عدد رسائل المستخدم\n𖢅︙`#name` > اسم المستخدم\n𖢅︙`#id` > ايدي المستخدم\n𖢅︙`#stast` > رتبه المستخدم \n𖢅︙`#edit` > عدد السحكات ')
database:set(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true1")
database:set(bot_id.."Text:Manager"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:sadd(bot_id.."List:Manager"..msg.chat_id_.."", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_.."") == "true2" then
send(msg.chat_id_, msg.id_,"*𖢅︙تم ازالة الرد من قائمه الردود*")
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:del(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."List:Manager"..msg.chat_id_.."", text)
return false
end
end
if text and not database:get(bot_id.."Reply:Manager"..msg.chat_id_) then
if not database:sismember(bot_id..'Spam:Texting'..msg.sender_user_id_,text) then
local anemi = database:get(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
local veico = database:get(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
local stekr = database:get(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
local Text = database:get(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
local photo = database:get(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
local video = database:get(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
local document = database:get(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
local audio = database:get(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
if Text then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local Msguser = database:get(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local rtp = Rutba(msg.sender_user_id_,msg.chat_id_)
local edit = database:get(bot_id..'edits'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = Text:gsub('#username',(data.username_ or 'لا يوجد')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',edit)
local Text = Text:gsub('#msgs',Msguser)
local Text = Text:gsub('#stast',rtp)
send(msg.chat_id_, msg.id_,'['..Text..']')
database:sadd(bot_id.."Spam:Texting"..msg.sender_user_id_,text) 
end,nil)
end
if stekr then 
sendSticker(msg.chat_id_, msg.id_, 0, 1, nil, stekr)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, veico)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_, 0, 1, nil,video)
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if anemi then 
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, anemi, '', nil)  
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, 0, 1,nil, document)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil,photo,'')
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end  
end
end
if text == ("الردود المتعدده") and SudoBotCoSu(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = database:smembers(bot_id.."botss:"..msg.chat_id_..":Amir:List:Rd:Sudo")
text = "\nقائمة ردود المتعدده\n*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n"
for k,v in pairs(list) do
db = "رساله "
text = text..""..k.." >> {"..v.."} >> {"..db.."}\n"
end
if #list == 0 then
text = "لا توجد ردود متعدده"
end
send(msg.chat_id_, msg.id_,"["..text.."]")
end
if text == "اضف رد متعدد" and SudoBotCoSu(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."botss:Amir:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return send(msg.chat_id_, msg.id_,"*𖢅︙ارسل الرد الذي اريد اضافته*")
end
if text == "حذف رد متعدد" and SudoBotCoSu(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."botss:Amir:Set:On"..msg.sender_user_id_..":"..msg.chat_id_,true)
return send(msg.chat_id_, msg.id_,"*𖢅︙ارسل الان الكلمه لحذفها*")
end
if text then  
local test = database:get(bot_id.."botss:Amir:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."botss:Amir:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true1" then
database:set(bot_id.."botss:Amir:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,'rd1')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."botss:"..msg.chat_id_..":Amir:Add:Rd:Sudo:Text"..test, text)  
end  
send(msg.chat_id_, msg.id_,"*𖢅︙تم حفظ الرد الاول ارسل الرد الثاني*")
return false  
end  
end
if text then  
local test = database:get(bot_id.."botss:Amir:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."botss:Amir:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "rd1" then
database:set(bot_id.."botss:Amir:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,'rd2')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."botss:"..msg.chat_id_..":Amir:Add:Rd:Sudo:Text1"..test, text)  
end  
send(msg.chat_id_, msg.id_,"*𖢅︙تم حفظ الرد الثاني ارسل الرد الثالث*")
return false  
end  
end
if text then  
local test = database:get(bot_id.."botss:Amir:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."botss:Amir:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "rd2" then
database:set(bot_id.."botss:Amir:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,'rd3')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."botss:Amir:"..msg.chat_id_..":Add:Rd:Sudo:Text2"..test, text)  
end  
send(msg.chat_id_, msg.id_,"*𖢅︙تم حفظ الرد*")
return false  
end  
end
if text then
local Text = database:get(bot_id.."botss:"..msg.chat_id_..":Amir:Add:Rd:Sudo:Text"..text)   
local Text1 = database:get(bot_id.."botss:"..msg.chat_id_..":Amir:Add:Rd:Sudo:Text1"..text)   
local Text2 = database:get(bot_id.."botss:"..msg.chat_id_..":Amir:Add:Rd:Sudo:Text2"..text)   
if Text or Text1 or Text2 then 
local texting = {
Text,
Text1,
Text2
}
Textes = math.random(#texting)
send(msg.chat_id_, msg.id_,texting[Textes])
end
end
-------------------------------
if text == ""..(database:get(bot_id..'Name:Bot') or 'بيلا').." غادر" or text == 'غادر' then  
if Sudo(msg) and not database:get(bot_id..'Left:Bot'..msg.chat_id_)  then 
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
send(msg.chat_id_, msg.id_,'*𖢅︙تم مغادرة المجموعه*') 
database:srem(bot_id..'Chek:Groups',msg.chat_id_)  
end
return false  
end
if text == 'بوت' then
Namebot = (database:get(bot_id..'Name:Bot') or 'بيلا')
send(msg.chat_id_, msg.id_,'*اسمي '..Namebot..'* ')
end
if text == 'الاحصائيات' then
if Sudo(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = ' الاحصائيات 𖢅 \n'..'*𖢅︙عدد الكروبات » {'..Groups..'}'..'*\n*𖢅︙ عدد المشتركين » {'..Users..'}*'
send(msg.chat_id_, msg.id_,Text) 
end
return false
end
if text == 'الكروبات' then
if Sudo(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = ' *𖢅︙عدد الكروبات »* {`'..Groups..'`}'
send(msg.chat_id_, msg.id_,Text) 
end
return false
end
if text == 'المشتركين' then
if Sudo(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = ' *𖢅︙عدد المشتركين »* {`'..Users..'`}'
send(msg.chat_id_, msg.id_,Text) 
end
return false
end
if text == 'تفعيل المغادره' and DevBILLAW(msg) then   
if database:get(bot_id..'Left:Bot'..msg.chat_id_) then
Text = ' *𖢅︙تم تفعيل مغادرة البوت*'
database:del(bot_id..'Left:Bot'..msg.chat_id_)  
else
Text = ' *𖢅︙بالتاكيد تم تفعيل مغادرة البوت*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل المغادره' and DevBILLAW(msg) then  
if not database:get(bot_id..'Left:Bot'..msg.chat_id_) then
Text = ' *𖢅︙تم تعطيل مغادرة البوت*'
database:set(bot_id..'Left:Bot'..msg.chat_id_,true)   
else
Text = ' *𖢅︙بالتاكيد تم تعطيل مغادرة البوت*'
end
send(msg.chat_id_, msg.id_, Text) 
end

if text == 'تفعيل ردود المدير' and Manager(msg) then   
if database:get(bot_id..'Reply:Manager'..msg.chat_id_) then
Text = ' *𖢅︙تم تفعيل ردود المدير*'
database:del(bot_id..'Reply:Manager'..msg.chat_id_)  
else
Text = ' *𖢅︙تم تفعيل ردود المدير*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل ردود المدير' and Manager(msg) then  
if not database:get(bot_id..'Reply:Manager'..msg.chat_id_) then
database:set(bot_id..'Reply:Manager'..msg.chat_id_,true)  
Text = '\n *𖢅︙تم تعطيل ردود المدير*' 
else
Text = '\n *𖢅︙بالتاكيد تم تعطيل ردود المدير*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل ردود المطور' and Manager(msg) then   
if database:get(bot_id..'Reply:Sudo'..msg.chat_id_) then
database:del(bot_id..'Reply:Sudo'..msg.chat_id_)  
Text = '\n *𖢅︙تم تفعيل ردود المطور*' 
else
Text = '\n *𖢅︙بالتاكيد تم تفعيل ردود المطور*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل ردود المطور' and Manager(msg) then  
if not database:get(bot_id..'Reply:Sudo'..msg.chat_id_) then
database:set(bot_id..'Reply:Sudo'..msg.chat_id_,true)   
Text = '\n *𖢅︙تم تعطيل ردود المطور*' 
else
Text = '\n *𖢅︙بالتاكيد تم تعطيل ردود المطور*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الايدي' and Manager(msg) then   
if database:get(bot_id..'Bot:Id'..msg.chat_id_)  then
database:del(bot_id..'Bot:Id'..msg.chat_id_) 
Text = '\n *𖢅︙تم تفعيل الايدي*' 
else
Text = '\n *𖢅︙ بالتاكيد تم تفعيل الايدي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الايدي' and Manager(msg) then  
if not database:get(bot_id..'Bot:Id'..msg.chat_id_)  then
database:set(bot_id..'Bot:Id'..msg.chat_id_,true) 
Text = '\n *𖢅︙تم تعطيل الايدي*' 
else
Text = '\n *𖢅︙بالتاكيد تم تعطيل الايدي*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الايدي بالصوره' and Manager(msg) then   
if database:get(bot_id..'Bot:Id:Photo'..msg.chat_id_)  then
database:del(bot_id..'Bot:Id:Photo'..msg.chat_id_) 
Text = '\n *𖢅︙تم تفعيل الايدي بالصور*' 
else
Text = '\n *𖢅︙بالتاكيد تم تفعيل الايدي بالصوره*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الايدي بالصوره' and Manager(msg) then  
if not database:get(bot_id..'Bot:Id:Photo'..msg.chat_id_)  then
database:set(bot_id..'Bot:Id:Photo'..msg.chat_id_,true) 
Text = '\n *𖢅︙تم تعطيل الايدي بالصوره*' 
else
Text = '\n *𖢅︙بالتاكيد تم تعطيل الايدي بالصوره*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الحظر' and Constructor(msg) then   
if database:get(bot_id..'Lock:kick'..msg.chat_id_)  then
database:del(bot_id..'Lock:kick'..msg.chat_id_) 
Text = '\n *𖢅︙تم تفعيل الحظر*' 
else
Text = '\n *𖢅︙بالتاكيد تم تفعيل الحظر*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الحظر' and Constructor(msg) then  
if not database:get(bot_id..'Lock:kick'..msg.chat_id_)  then
database:set(bot_id..'Lock:kick'..msg.chat_id_,true) 
Text = '\n *𖢅︙تم تعطيل الحظر*' 
else
Text = '\n *𖢅︙بالتاكيد تم تعطيل الحظر*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الرفع' and Constructor(msg) then   
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_)  then
database:del(bot_id..'Lock:Add:Bot'..msg.chat_id_) 
Text = '\n *𖢅︙تم تفعيل الرفع*' 
else
Text = '\n *𖢅︙بالتاكيد تم تفعيل الرفع*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الرفع' and Constructor(msg) then  
if not database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_)  then
database:set(bot_id..'Lock:Add:Bot'..msg.chat_id_,true) 
Text = '\n *𖢅︙تم تعطيل الرفع*' 
else
Text = '\n *𖢅︙بالتاكيد تم تعطيل الرفع*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match("^وضع لقب (.*)$") and msg.reply_to_message_id_ and Constructor(msg) then
local timsh = text:match("^وضع لقب (.*)$")
function start_function(extra, result, success)
local chek = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..bot_id)
local getInfo = JSON.decode(chek)
if getInfo.result.can_promote_members == false then
send(msg.chat_id_, msg.id_,'𖢅︙لا يمكنني تعديل  او وضع لقب ليس لدي صلاحيه') 
return false  
end
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=true&can_restrict_members=false&can_pin_messages=True&can_promote_members=true")
okfalse = json:decode(https.request("https://api.telegram.org/bot"..token.."/setChatAdministratorCustomTitle?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&custom_title="..timsh) ) 
if okfalse.ok == false then
send(msg.chat_id_, msg.id_,'𖢅︙لا يمكن وضع او تعديل لقب له') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n𖢅︙ العضو -› ['..data.first_name_..'](t.me/'..(data.username_ or 'EE92i')..') '
status  = '\n𖢅︙ الايدي -› '..result.sender_user_id_..'\n𖢅︙تم ضافه {'..timsh..'} كلقب له'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == 'ايدي' and tonumber(msg.reply_to_message_id_) > 0 then
function start_function(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(extra,data) 
local Msguser = tonumber(database:get(bot_id..'Msg_User'..msg.chat_id_..':'..result.sender_user_id_) or 1) 
local Contact = tonumber(database:get(bot_id..'Add:Contact'..msg.chat_id_..':'..result.sender_user_id_) or 0) 
local NUMPGAME = tonumber(database:get(bot_id..'NUM:GAMES'..msg.chat_id_..result.sender_user_id_) or 0)
local edit = tonumber(database:get(bot_id..'edits'..msg.chat_id_..result.sender_user_id_) or 0)
local rtp = Rutba(result.sender_user_id_,msg.chat_id_)
local username = ('[@'..data.username_..']' or 'لا يوجد')
local iduser = result.sender_user_id_
send(msg.chat_id_, msg.id_,' *𖢅︙ايديه ↫ '..iduser..'*\n*𖢅︙معرفه ↫* '..username..'\n*𖢅︙رتبته ↫ '..rtp..'*\n*𖢅︙تعديلاته ↫ '..edit..'*\n*𖢅︙نقاطه ↫ '..NUMPGAME..'*\n*𖢅︙جهاته ↫ '..Contact..'*\n*𖢅︙رسائله ↫ '..Msguser..'*')
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text and text:match("^ايدي @(.*)$") then
local username = text:match("^ايدي @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(extra,data) 
local Msguser = tonumber(database:get(bot_id..'Msg_User'..msg.chat_id_..':'..result.id_) or 1) 
local Contact = tonumber(database:get(bot_id..'Add:Contact'..msg.chat_id_..':'..result.id_) or 0) 
local NUMPGAME = tonumber(database:get(bot_id..'NUM:GAMES'..msg.chat_id_..result.id_) or 0)
local edit = tonumber(database:get(bot_id..'edits'..msg.chat_id_..result.id_) or 0)
local rtp = Rutba(result.id_,msg.chat_id_)
local username = ('[@'..data.username_..']' or 'لا يوجد')
local iduser = result.id_
send(msg.chat_id_, msg.id_,' *𖢅︙ايديه ↫ '..iduser..'*\n*𖢅︙معرفه ↫* '..username..'\n*𖢅︙رتبته ↫ '..rtp..'*\n*𖢅︙تعديلاته ↫ '..edit..'*\n*𖢅︙نقاطه ↫ '..NUMPGAME..'*\n*𖢅︙جهاته ↫ '..Contact..'*\n*𖢅︙رسائله ↫ '..Msguser..'*')
end,nil)
else
send(msg.chat_id_, msg.id_,' *𖢅︙المعرف غير صحيح* ')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
if text == 'رتبتي' then
local rtp = Rutba(msg.sender_user_id_,msg.chat_id_)
send(msg.chat_id_, msg.id_,' *𖢅︙رتبتك في البوت »* '..rtp)
end
if text == 'لقبه' and tonumber(msg.reply_to_message_id_) > 0 then
function start_function(extra, result, success)
send(msg.chat_id_, msg.id_,'*𖢅︙ لقبه هو :* '..getcustom(msg,result)) 
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text == 'لقبي' and tonumber(msg.reply_to_message_id_) == 0 then
send(msg.chat_id_, msg.id_,'*𖢅︙ لقبك هو :* '..getcustom(msg,msg)) 
end
if text == "اسمي"  then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(extra,result,success)
if result.first_name_  then
first_name = ' *𖢅︙اسمك الاول »* {*`'..(result.first_name_)..'`*}'
else
first_name = ''
end   
if result.last_name_ then 
last_name = ' *𖢅︙اسمك الثاني »* {*`'..result.last_name_..'`*}' 
else
last_name = ''
end  
send(msg.chat_id_, msg.id_,first_name..'\n'..last_name) 
end,nil)
end 
if text == 'بايو' then   
send(msg.chat_id_, msg.id_,getbio(msg.sender_user_id_)) 
end 
if text == 'ايديي' then
send(msg.chat_id_, msg.id_,' *𖢅︙ايديك »* '..msg.sender_user_id_)
end
if text == 'الرتبه' and tonumber(msg.reply_to_message_id_) > 0 then
function start_function(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(extra,data) 
local rtp = Rutba(result.sender_user_id_,msg.chat_id_)
local username = ' ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
local iduser = result.sender_user_id_
send(msg.chat_id_, msg.id_,'*𖢅︙اسم المستخدم » (*'..username..'*)\n𖢅︙الرتبه » ('..rtp..')*\n')
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
---------
if text and text:match("^الرتبه @(.*)$") then
local username = text:match("^الرتبه @(.*)$")
function start_function(extra, result, success)
if result.id_ then
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(extra,data) 
local rtp = Rutba(result.id_,msg.chat_id_)
local username = ('[@'..data.username_..']' or 'لا يوجد')
local iduser = result.id_
send(msg.chat_id_, msg.id_,'*𖢅︙اسم المستخدم » (*'..username..'*)\n𖢅︙الرتبه » ('..rtp..')*\n')
end,nil)
else
send(msg.chat_id_, msg.id_,'*- المعرف غير صحيح* ')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
if text == 'كشف' and tonumber(msg.reply_to_message_id_) > 0 then
function start_function(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(extra,data) 
local rtp = Rutba(result.sender_user_id_,msg.chat_id_)
local username = ' ['..data.first_name_..'](t.me/'..(data.username_ or 'EE28i')..')'
local iduser = result.sender_user_id_
send(msg.chat_id_, msg.id_,'*𖢅︙الايدي » ('..iduser..')*\n*𖢅︙الاسم » (*'..username..')\n*𖢅︙الرتبه » ('..rtp..')*\n*𖢅︙نوع الكشف » بالرد*')
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text and text:match("^كشف @(.*)$") then
local username = text:match("^كشف @(.*)$")
function Function_v(extra, result, success)
if result.id_ then
tdcli_function({ID = "GetUser",user_id_ = result.id_}, function(arg, data)
if data.username_ then
UserName_User = '@' .. data.username_
else
UserName_User = 'لا يوجد'
end
local Id = data.id_
local frLsn = data.first_name_..' '..(data.last_name_ or "")
 local Status_Gps = Rutba(Id,msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n*𖢅︙الاسم » ('..frLsn..')\n𖢅︙الايدي » '..Id..'\n𖢅︙المعرف » *['..UserName_User..']*\n𖢅︙الرتبة » '..Status_Gps..'\n𖢅︙نوع الكشف - بالمعرف*')
end, nil)
else
send(msg.chat_id_, msg.id_, ' *𖢅︙لا يوجد حساب بهاذا المعرف*')
end
end
tdcli_function({ID = "SearchPublicChat",username_ = username}, Function_v, nil)
return false
end
if text and text:match("^كشف (%d+)$") then
local userid = text:match("^كشف (%d+)$") 
if userid then
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
local UserName = ("@"..data.username_ or "لا يوجد")
local id = userid
local rtp = Rutba(id,msg.chat_id_)
texts ='*𖢅︙الايدي » ('..id..')*\n*𖢅︙المعرف » (*['..UserName..'])\n*𖢅︙الرتبه » ('..rtp..')*\n*𖢅︙نوع الكشف » بالايدي*'
send(msg.chat_id_, msg.id_, texts)
end,nil)
return false
end
end  
if text==('عدد الكروب') and Mod(msg) then  
if msg.can_be_deleted_ == false then 
send(msg.chat_id_,msg.id_," *𖢅︙البوت ليس ادمن* \n") 
return false  
end 
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,ta) 
tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub('-100','')},function(arg,data) 
local amir = ' *𖢅︙عدد الادمنيه :* '..data.administrator_count_..
'\n\n*𖢅︙عدد المطرودين :* '..data.kicked_count_..
'\n\n*𖢅︙عدد الاعضاء :* '..data.member_count_..
'\n\n*𖢅︙عدد رسائل الكروب :* '..(msg.id_/2097152/0.5)..
'\n\n*𖢅︙ اسم الكروب :* ['..ta.title_..']'
send(msg.chat_id_, msg.id_, amir) 
end,nil)
end,nil)
end 
if text == 'اطردني' or text == 'طردني' then
if not database:get(bot_id..'Cick:Me'..msg.chat_id_) then
if Can_or_NotCan(msg.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *𖢅︙عذرا لا استطيع طرد ( '..Rutba(msg.sender_user_id_,msg.chat_id_)..' )*')
return false
end
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=msg.sender_user_id_,status_={ID="ChatMemberStatusKicked"},},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *𖢅︙ليس لدي صلاحية حظر المستخدمين يرجى تفعيلها !*') 
return false  
end
if (data and data.code_ and data.code_ == 3) then 
send(msg.chat_id_, msg.id_,' *𖢅︙البوت ليس ادمن يرجى ترقيتي !*') 
return false  
end
if data and data.code_ and data.code_ == 400 and data.message_ == "USER_ADMIN_INVALID" then 
send(msg.chat_id_, msg.id_,' *𖢅︙عذرا لا استطيع طرد ادمنية الكروب*') 
return false  
end
if data and data.ID and data.ID == 'Ok' then
send(msg.chat_id_, msg.id_,' *𖢅︙تم طردك من الكروب*') 
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = msg.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
return false
end
end,nil)   
else
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل امر اطردني*') 
end
end
if text and text:match("^صيح (.*)$") then
local username = text:match("^صيح (.*)$") 
if not database:get(bot_id..'Seh:User'..msg.chat_id_) then
function start_function(extra, result, success)
if result and result.message_ and result.message_ == "USERNAME_NOT_OCCUPIED" then 
send(msg.chat_id_, msg.id_,' *𖢅︙المعرف غلط* ') 
return false  
end
if result and result.type_ and result.type_.channel_ and result.type_.channel_.ID == "Channel" then
send(msg.chat_id_, msg.id_,' *𖢅︙لا استطيع اصيح معرف قنوات*') 
return false  
end
if result.type_.user_.type_.ID == "UserTypeBot" then
send(msg.chat_id_, msg.id_,' *𖢅︙لا استطيع اصيح معرف بوتات*') 
return false  
end
if result and result.type_ and result.type_.channel_ and result.type_.channel_.is_supergroup_ == true then
send(msg.chat_id_, msg.id_,'*𖢅︙لا اسطيع صيح معرفات الكروبات*') 
return false  
end
if result.id_ then
send(msg.chat_id_, msg.id_,' *𖢅︙تعال حبي يصيحونك بل كروب ['..username..']*') 
return false
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
else
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل امر صيح*') 
end
return false
end

if text == 'منو ضافني' then
if not database:get(bot_id..'Added:Me'..msg.chat_id_) then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusCreator" then
send(msg.chat_id_, msg.id_,' *𖢅︙انت منشئ الكروب*') 
return false
end
local Added_Me = database:get(bot_id.."Who:Added:Me"..msg.chat_id_..':'..msg.sender_user_id_)
if Added_Me then 
tdcli_function ({ID = "GetUser",user_id_ = Added_Me},function(extra,result,success)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
Text = ' *𖢅︙الشخص الذي قام باضافتك هو »* '..Name
sendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
end,nil)
else
send(msg.chat_id_, msg.id_,' *𖢅︙انت دخلت عبر الرابط لتلح*') 
end
end,nil)
else
send(msg.chat_id_, msg.id_,' *𖢅︙تم تعطيل امر منو ضافني*') 
end
end

if text == 'تفعيل ضافني' and Manager(msg) then   
if database:get(bot_id..'Added:Me'..msg.chat_id_) then
Text = ' *𖢅︙تم تفعيل امر منو ضافني*'
database:del(bot_id..'Added:Me'..msg.chat_id_)  
else
Text = ' *𖢅︙بالتاكيد تم تفعيل امر منو ضافني*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل ضافني' and Manager(msg) then  
if not database:get(bot_id..'Added:Me'..msg.chat_id_) then
database:set(bot_id..'Added:Me'..msg.chat_id_,true)  
Text = '\n *𖢅︙تم تعطيل امر منو ضافني*'
else
Text = '\n *𖢅︙بالتاكيد تم تعطيل امر منو ضافني*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل صيح' and Manager(msg) then   
if database:get(bot_id..'Seh:User'..msg.chat_id_) then
Text = ' *𖢅︙تم تفعيل امر صيح*'
database:del(bot_id..'Seh:User'..msg.chat_id_)  
else
Text = ' *𖢅︙بالتاكيد تم تفعيل امر صيح*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تنزيل جميع الرتب' and BasicConstructor(msg) then  
database:del(bot_id..'Constructor'..msg.chat_id_)
database:del(bot_id..'Manager'..msg.chat_id_)
database:del(bot_id..'Mod:User'..msg.chat_id_)
database:del(bot_id..'Special:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n *𖢅︙تم تنزيل الكل من الرتب الاتيه* \n*𖢅︙المميزين ، الادمنيه ، المدراء ، المنشئين* \n')
end
if text == 'تعطيل صيح' and Manager(msg) then  
if not database:get(bot_id..'Seh:User'..msg.chat_id_) then
database:set(bot_id..'Seh:User'..msg.chat_id_,true)  
Text = '\n *𖢅︙تم تعطيل امر صيح*'
else
Text = '\n *𖢅︙بالتاكيد تم تعطيل امر صيح*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل اطردني' and Manager(msg) then   
if database:get(bot_id..'Cick:Me'..msg.chat_id_) then
Text = ' *𖢅︙تم تفعيل امر اطردني*'
database:del(bot_id..'Cick:Me'..msg.chat_id_)  
else
Text = ' *𖢅︙بالتاكيد تم تفعيل امر اطردني*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل اطردني' and Manager(msg) then  
if not database:get(bot_id..'Cick:Me'..msg.chat_id_) then
database:set(bot_id..'Cick:Me'..msg.chat_id_,true)  
Text = '\n *𖢅︙تم تعطيل امر اطردني*'
else
Text = '\n *𖢅︙بالتاكيد تم تعطيل امر اطردني*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == "صورتي"  then
local my_ph = database:get(bot_id.."my_photo:status"..msg.chat_id_)
if not my_ph then
send(msg.chat_id_, msg.id_," *𖢅︙الصوره معطله*") 
return false  
end
local function getpro(extra, result, success)
if result.photos_[0] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_," 𖢅︙عدد صورك ↫ "..result.total_count_.." صوره‌‏", msg.id_, msg.id_, "md")
else
send(msg.chat_id_, msg.id_,'لا تمتلك صوره في حسابك', 1, 'md')
  end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil)
end
if text == 'تغير الايدي' and Manager(msg) then 
local List = {
[[
- ᴜѕᴇʀɴᴀᴍᴇ 𓄹𓄼 #id .
- ʏᴏᴜʀ ɪᴅ 𓄹𓄼 #username  .
- ᴍѕɢѕ 𓄹𓄼 #msgs .
- ѕᴛᴀᴛѕ 𓄹𓄼 #stast .
- ᴇᴅɪᴛ 𓄹𓄼 #game .
]],
[[
➭- 𝒔𝒕𝒂𓂅 #stast 𓍯. 💕
➮- 𝒖𝒔𝒆𝒓𓂅 #username 𓍯. 💕
➭- 𝒎𝒔𝒈𝒆𓂅 #msgs 𓍯. 💕
➭- 𝒊𝒅 𓂅 #id 𓍯. 💕
]],
[[
⚕ 𓆰 𝑾𝒆𝒍𝒄𝒐𝒎𝒆 𝑻𝒐 𝑮𝒓𝒐𝒖𝒑 ★
• 🖤 | 𝑼𝑬𝑺 : #username ‌‌‏⚚
• 🖤 | 𝑺𝑻𝑨 : #stast 🧙🏻‍♂ ☥
• 🖤 | 𝑰𝑫 : #id ‌‌‏♕
• 🖤 | 𝑴𝑺𝑮 : #msgs 𓆊
]],
[[
┌ 𝐔𝐒𝐄𝐑 𖤱 #username 𖦴 .
├ 𝐌𝐒𝐆 𖤱 #msgs 𖦴 .
├ 𝐒𝐓𝐀 𖤱 #stast 𖦴 .
└ 𝐈𝐃 𖤱 #id 𖦴 .
]],
[[
➼ : 𝐼𝐷 𖠀 #id . ♡
➼ : 𝑈𝑆𝐸𝑅 𖠀 #username .♡
➼ : 𝑀𝑆𝐺𝑆 𖠀 #msgs .♡
➼ : 𝑆𝑇𝐴S𝑇 𖠀 #stast .♡ 
➼ : 𝐸𝐷𝐼𝑇  𖠀 #edit .♡
]],
[[
- ايديڪ  ⁞ #id 💘 ٬
- يوزرڪ القميل ⁞ #username 💘 ٬
- رسائلڪ  الطيفهہَ ⁞ #msgs 💘 ٬
- رتبتڪ الحلوه ⁞ #stast  💘٬
- سحڪاتڪ الفول ⁞ #edit 💘 ٬ 
]],
[[
- 𝒊𝒅 ➺ #id 💗
- 𝒖𝒔𝒆𝒓 ➺  #username 💗
- 𝒎𝒔𝒈 ➺ #msgs 💗
- 𝒔𝒕𝒂𝒕𝒆 ➺ #stast 💗
- 𝒆𝒅I𝒕 ➺ #edit  💗
]],
[[
☁️ . USERNAME . #username  💞🧸
☁️ . STAST . #stast 💗🦄
☁️ . ID . #id 🧘🏼‍♀💘
☁️ . MSGS . #msgs 💗👧🏻
]],
[[
- 𓏬 𝐔𝐬𝐄𝐫 : #username 𓂅 .
- 𓏬 𝐌𝐬𝐆  : #msgs 𓂅 .
- 𓏬 𝐒𝐭𝐀 : #stast 𓂅 .
- 𓏬 𝐈𝐃 : #id 𓂅 .
]],
[[
• 𝙐𝙎𝙀𝙍𝙉𝘼𝙈𝙀 ➤ #username .
• 𝙈𝙀𝙎𝙎𝘼𝙂𝙀𝙎 ➤ #msgs .
• 𝙎𝙏𝘼𝙏𝙎 ➤ #stast .
• 𝙄𝘿 ➤ #id .
]]}
local Text_Rand = List[math.random(#List)]
database:set(bot_id.."KLISH:ID"..msg.chat_id_,Text_Rand)
send(msg.chat_id_, msg.id_,'*𖢅︙تم تغير الايدي ارسل ايدي لرؤيته*')
end
if text == ("ايدي") and msg.reply_to_message_id_ == 0 and not database:get(bot_id..'Bot:Id'..msg.chat_id_) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if not database:sismember(bot_id..'Spam:Texting'..msg.sender_user_id_,text) then
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da)  tdcli_function ({ ID = "SendChatAction",  chat_id_ = msg.sender_user_id_, action_ = {  ID = "SendMessageTypingAction", progress_ = 100}  },function(arg,ta)  tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)  tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = msg.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,amir,success) 
if da.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'المالك'
elseif da.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'مشرف' 
elseif da.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'عضو'
end
local getcustomY = getcustom(msg,msg)
local getbioY = getbio(msg.sender_user_id_)
local Msguser = tonumber(database:get(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) or 1) 
local nummsggp = tonumber(msg.id_/2097152/0.5)
local nspatfa = tonumber(Msguser / nummsggp * 100)
local Contact = tonumber(database:get(bot_id..'Add:Contact'..msg.chat_id_..':'..msg.sender_user_id_) or 0) 
local NUMPGAME = tonumber(database:get(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_) or 0)
local rtp = Rutba(msg.sender_user_id_,msg.chat_id_)
if result.username_ then
username = '@'..result.username_ 
else
username = 'لا يوجد '
end
local iduser = msg.sender_user_id_
local edit = tonumber(database:get(bot_id..'edits'..msg.chat_id_..msg.sender_user_id_) or 0)
local photps = (amir.total_count_ or 0)
local interaction = Total_Msg(Msguser)
local rtpg = rtpa
local amira = {
" 𖢅︙اروح فـدوه للـحلوين",
" 𖢅︙فديت الصاك محح",
" 𖢅︙فـدشـي عمـي",
" 𖢅︙دغـيرهـا شبـي هـاذ",
" 𖢅︙شهل الگيمر ",
" 𖢅︙شهل الصوره تخمبش ",
" 𖢅︙فديت الحلو ",
" 𖢅︙بـبكن حـلك ",
}
local rdphoto = amira[math.random(#amira)]
if not database:get(bot_id..'Bot:Id:Photo'..msg.chat_id_) then  
local get_id_text = database:get(bot_id.."KLISH:ID"..msg.chat_id_)
if get_id_text then
if result.username_ then
username = '@'..result.username_ 
else
username = 'لا يوجد '
end
get_id_text = get_id_text:gsub('#custom',getcustomY) 
get_id_text = get_id_text:gsub('#bio',getbioY) 
get_id_text = get_id_text:gsub('#rdphoto',rdphoto) 
get_id_text = get_id_text:gsub('#id',iduser) 
get_id_text = get_id_text:gsub('#username',username) 
get_id_text = get_id_text:gsub('#msgs',Msguser) 
get_id_text = get_id_text:gsub('#edit',edit) 
get_id_text = get_id_text:gsub('#stast',rtp) 
get_id_text = get_id_text:gsub('#auto',interaction) 
get_id_text = get_id_text:gsub('#game',NUMPGAME) 
get_id_text = get_id_text:gsub('#photos',photps) 
if result.status_.ID == "UserStatusRecently" and result.profile_photo_ ~= false then   
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, amir.photos_[0].sizes_[1].photo_.persistent_id_,get_id_text)   
else 
if result.status_.ID == "UserStatusEmpty" and result.profile_photo_ == false then
send(msg.chat_id_, msg.id_,'['..get_id_text..']')   
else
send(msg.chat_id_, msg.id_, '\n *𖢅︙ليس لديك صور في حسابك* \n['..get_id_text..']')  
end 
end
else
if result.username_ then
username = '@'..result.username_ 
else
username = 'لا يوجد '
end
if result.status_.ID == "UserStatusRecently" and result.profile_photo_ ~= false then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, amir.photos_[0].sizes_[1].photo_.persistent_id_,''..rdphoto..'\n𖢅︙ايديك ↫ '..msg.sender_user_id_..'\n𖢅︙معرفك ↫ '..username..'\n𖢅︙رتبتك ↫ '..Rutba(msg.sender_user_id_,msg.chat_id_)..'\n𖢅︙موقعك ↫ '..rtpa..'\n𖢅︙تفاعلك ↫ '..Total_Msg(Msguser)..'\n𖢅︙رسائلك ↫ '..Msguser..'\n𖢅︙البايو ↫ '..getbioY..' \n𖢅︙السحكات ↫ '..edit..'\n𖢅︙نقاطك ↫ '..NUMPGAME..'\n')
else 
if result.status_.ID == "UserStatusEmpty" and result.profile_photo_ == false then
send(msg.chat_id_, msg.id_,'[\n𖢅︙ايديك ↫ '..msg.sender_user_id_..'\n𖢅︙معرفك ↫ '..username..'\n𖢅︙رتبتك ↫ '..Rutba(msg.sender_user_id_,msg.chat_id_)..'\n𖢅︙موقعك ↫ '..rtpa..'\n𖢅︙تفاعلك ↫ '..Total_Msg(Msguser)..'\n𖢅︙رسائلك ↫ '..Msguser..'\n𖢅︙البايو ↫ '..getbioY..' \n𖢅︙السحكات ↫ '..edit..'\n𖢅︙نقاطك ↫ '..NUMPGAME..']\n')
else
send(msg.chat_id_, msg.id_, '\n𖢅︙الصوره ↫ ليس لديك صور في حسابك'..'[\n𖢅︙ايديك ↫ '..msg.sender_user_id_..'\n𖢅︙معرفك ↫ '..username..'\n𖢅︙رتبتك ↫ '..Rutba(msg.sender_user_id_,msg.chat_id_)..'\n𖢅︙موقعك ↫ '..rtpa..'\n𖢅︙تفاعلك ↫ '..Total_Msg(Msguser)..'\n𖢅︙رسائلك ↫ '..Msguser..'\n𖢅︙البايو ↫ '..getbioY..' \n𖢅︙السحكات ↫ '..edit..'\n𖢅︙نقاطك ↫ '..NUMPGAME..']\n')
end 
end
end
else
local get_id_text = database:get(bot_id.."KLISH:ID"..msg.chat_id_)
if get_id_text then
get_id_text = get_id_text:gsub('#custom',getcustomY) 
get_id_text = get_id_text:gsub('#bio',getbioY) 
get_id_text = get_id_text:gsub('#rdphoto',rdphoto) 
get_id_text = get_id_text:gsub('#id',iduser) 
get_id_text = get_id_text:gsub('#username',username) 
get_id_text = get_id_text:gsub('#msgs',Msguser) 
get_id_text = get_id_text:gsub('#edit',edit) 
get_id_text = get_id_text:gsub('#stast',rtp) 
get_id_text = get_id_text:gsub('#auto',interaction) 
get_id_text = get_id_text:gsub('#game',NUMPGAME) 
get_id_text = get_id_text:gsub('#photos',photps) 
send(msg.chat_id_, msg.id_,'['..get_id_text..']')   
else
send(msg.chat_id_, msg.id_,'[\n 𖢅︙ايديك ↫ '..msg.sender_user_id_..'\n 𖢅︙معرفك ↫ '..username..'\n 𖢅︙رتبتك ↫ '..Rutba(msg.sender_user_id_,msg.chat_id_)..'\n 𖢅︙موقعك ↫ '..rtpa..'\n 𖢅︙تفاعلك ↫ '..Total_Msg(Msguser)..'\n 𖢅︙رسائلك ↫ '..Msguser..'\n 𖢅︙البايو ↫ '..getbioY..' \n 𖢅︙السحكات ↫ '..edit..'\n 𖢅︙نقاطك ↫ '..NUMPGAME..']\n')
end
end

end,nil)
end,nil)
end,nil)
end,nil)
end
end

if text == 'سحكاتي' or text == 'تعديلاتي' then 
local Num = tonumber(database:get(bot_id..'edits'..msg.chat_id_..msg.sender_user_id_) or 0)
if Num == 0 then 
Text = ' *𖢅︙ ليس لديك سحكات*'
else
Text = ' *𖢅︙عدد سحكاتك » { '..Num..' } *'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == "مسح سحكاتي" or text == "حذف سحكاتي" then  
send(msg.chat_id_, msg.id_,' *𖢅︙تم مسح سحكاتك*'  )  
database:del(bot_id..'edits'..msg.chat_id_..msg.sender_user_id_)
end
if text == "مسح جهاتي" or text == "حذف جهاتي" then  
send(msg.chat_id_, msg.id_,' *𖢅︙تم مسح جهاتك*'  )  
database:del(bot_id..'Add:Contact'..msg.chat_id_..':'..msg.sender_user_id_)
end
if text == 'جهاتي' or text == 'شكد ضفت' then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local Num = tonumber(database:get(bot_id..'Add:Contact'..msg.chat_id_..':'..msg.sender_user_id_) or 0) 
if Num == 0 then 
Text = ' *𖢅︙لم تقم بأضافه احد*'
else
Text = ' *𖢅︙عدد جهاتك » { '..Num..' } *'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == "تنظيف المشتركين" and DevBILLAW(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local pv = database:smembers(bot_id.."User_Bot")
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]
},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",  
chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} 
},function(arg,data) 
if data.ID and data.ID == "Ok"  then
else
database:srem(bot_id.."User_Bot",pv[i])
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,' *𖢅︙ لا يوجد مشتركين وهميين في البوت* \n')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,' *𖢅︙عدد المشتركين الان » ( '..#pv..' )*\n*𖢅︙تم ازالة » ( '..sendok..' ) من المشتركين*\n*𖢅︙الان عدد المشتركين الحقيقي » ( '..ok..' ) مشترك* \n')   
end
end
end,nil)
end,nil)
end
return false
end
if text == "تنظيف الكروبات" and DevBILLAW(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local group = database:smembers(bot_id..'Chek:Groups') 
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
database:srem(bot_id..'Chek:Groups',group[i])  
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=group[i],user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,' *𖢅︙ لا يوجد كروبات وهميه في البوت*\n')   
else
local BILLA = (w + q)
local sendok = #group - BILLA
if q == 0 then
BILLA = ''
else
BILLA = '\n*𖢅︙تم ازالة » { '..q..' } كروبات من البوت*'
end
if w == 0 then
BILLAk = ''
else
BILLAk = '\n*𖢅︙تم ازالة » {'..w..'} كروب لان البوت عضو*'
end
send(msg.chat_id_, msg.id_,' *𖢅︙عدد الكروبات الان » { '..#group..' }'..BILLAk..''..BILLA..'*\n*𖢅︙الان عدد الكروبات الحقيقي » { '..sendok..' } كروبات*\n')   
end
end
end,nil)
end
return false
end

if text and text:match("^(gpinfo)$") or text and text:match("^معلومات الكروب$") then
function gpinfo(arg,data)
-- vardump(data) 
BILLAdx(msg.chat_id_, msg.id_, ' *𖢅︙ايدي المجموعة » ( '..msg.chat_id_..' )*\n*𖢅︙عدد الادمنيه » ( '..data.administrator_count_..' )*\n*𖢅︙عدد المحظورين » ( '..data.kicked_count_..' )*\n*𖢅︙عدد الاعضاء » ( '..data.member_count_..' )*\n', 'md') 
end 
getChannelFull(msg.chat_id_, gpinfo, nil) 
end
-----------
if text ==("مسح") and Mod(msg) and tonumber(msg.reply_to_message_id_) > 0 then
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.reply_to_message_id_),msg.id_})   
end   
if database:get(bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
database:del(bot_id..'id:user'..msg.chat_id_)  
send(msg.chat_id_, msg.id_, " *𖢅︙تم الغاء الامر* ") 
database:del(bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id..'id:user'..msg.chat_id_)  
database:del(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) 
database:incrby(bot_id..'Msg_User'..msg.chat_id_..':'..iduserr,numadded)  
send(msg.chat_id_, msg.id_," *𖢅︙تم اضافة له {"..numadded..'} من الرسائل*')  
end
------------------------------------------------------------------------
if database:get(bot_id.."gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
database:del(bot_id..'idgem:user'..msg.chat_id_)  
send(msg.chat_id_, msg.id_, " *𖢅︙تم الغاء الامر* ") 
database:del(bot_id.."gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id..'idgem:user'..msg.chat_id_)  
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..iduserr,numadded)  
send(msg.chat_id_, msg.id_,  1, "*𖢅︙تم اضافة له* {"..numadded..'} من النقود', 1 , 'md')  
end
------------------------------------------------------------
if text and text:match("^اضف رسائل (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then
amir = text:match("^اضف رسائل (%d+)$")
database:set(bot_id..'id:user'..msg.chat_id_,amir)  
database:setex(bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, ' *𖢅︙ارسل لي عدد الرسائل الان*') 
return false
end
------------------------------------------------------------------------
if text and text:match("^اضف نقاط (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
amir = text:match("^اضف نقاط (%d+)$")
database:set(bot_id..'idgem:user'..msg.chat_id_,amir)  
database:setex(bot_id.."gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, ' *𖢅︙ارسل لي عدد النقاط التي تريد اضافتها*') 
return false
end
------------------------------------------------------------------------
if text and text:match("^اضف نقاط (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^اضف نقاط (%d+)$")
function reply(extra, result, success)
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_," *𖢅︙تم اضافة له {"..Num..'} من النقاط*')  
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^اضف رسائل (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^اضف رسائل (%d+)$")
function reply(extra, result, success)
database:del(bot_id..'Msg_User'..msg.chat_id_..':'..result.sender_user_id_) 
database:incrby(bot_id..'Msg_User'..msg.chat_id_..':'..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_, "\n *𖢅︙تم اضافة له {"..Num..'} من الرسائل*')  
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end
if text == 'نقاط' or text == 'نقاطي' then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local Num = database:get(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_) or 0
if Num == 0 then 
Text = ' *𖢅︙لم تلعب اي لعبه للحصول على نقاط*'
else
Text = ' *𖢅︙عدد نقاطك التي ربحتها هيه » { '..Num..' } نقاط*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match("^بيع نقاطي (%d+)$") or text and text:match("^بيع نقاط (%d+)$") then
local NUMPY = text:match("^بيع نقاطي (%d+)$") or text and text:match("^بيع نقاط (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if tonumber(NUMPY) == tonumber(0) then
send(msg.chat_id_,msg.id_,"\n* 𖢅︙لا استطيع البيع اقل من 1 *") 
return false 
end
if tonumber(database:get(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_)) == tonumber(0) then
send(msg.chat_id_,msg.id_,' *𖢅︙ليس لديك نقاط في الالعاب*\n*𖢅︙اذا كنت تريد ربح نقاط \n*𖢅︙ارسل الالعاب وابدأ اللعب !* ') 
else
local NUM_GAMES = database:get(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_)
if tonumber(NUMPY) > tonumber(NUM_GAMES) then
send(msg.chat_id_,msg.id_,'\n 𖢅︙ليس لديك نقاط في هذه لعبه \n 𖢅︙لزيادة نقاطك في اللعبه \n 𖢅︙ارسل الالعاب وابدأ اللعب !') 
return false 
end
local NUMNKO = (NUMPY * 50)
database:decrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_,NUMPY)  
database:incrby(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_,NUMNKO)  
send(msg.chat_id_,msg.id_,' *𖢅︙تم خصم » { '..NUMPY..' } من نقاطك* \n*𖢅︙وتم اضافة » { '..(NUMPY * 50)..' } رساله الى رسالك*')
end 
return false 
end
if text == 'فحص البوت' and Manager(msg) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. msg.chat_id_ ..'&user_id='.. bot_id..'')
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.ok == true then
if Json_Info.result.status == "administrator" then
if Json_Info.result.can_change_info == true then
info = 'ꪜ' else info = '✘' end
if Json_Info.result.can_delete_messages == true then
delete = 'ꪜ' else delete = '✘' end
if Json_Info.result.can_invite_users == true then
invite = 'ꪜ' else invite = '✘' end
if Json_Info.result.can_pin_messages == true then
pin = 'ꪜ' else pin = '✘' end
if Json_Info.result.can_restrict_members == true then
restrict = 'ꪜ' else restrict = '✘' end
if Json_Info.result.can_promote_members == true then
promote = 'ꪜ' else promote = '✘' end 
send(msg.chat_id_,msg.id_,'\n *𖢅︙اهلا عزيزي البوت هنا ادمن*'..'\n*𖢅︙وصلاحياته هي ↓* \n*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*'..'\n*𖢅︙تغير معلومات الكروب ↞ ❴ '..info..' ❵'..'*\n*𖢅︙حذف الرسائل ↞ ❴ '..delete..' ❵'..'*\n*𖢅︙حظر المستخدمين ↞ ❴ '..restrict..' ❵'..'*\n*𖢅︙دعوة مستخدمين ↞ ❴ '..invite..' ❵'..'*\n*𖢅︙تثبيت الرسائل ↞ ❴ '..pin..' ❵'..'*\n*𖢅︙اضافة مشرفين جدد ↞ ❴ '..promote..' ❵*')   
end
end
end


if text and text:match("^تغير رد المطور (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المطور (.*)$") 
database:set(bot_id.."Sudo:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *𖢅︙تم تغير رد المطور الى »* "..Teext)
end
if text and text:match("^تغير رد المالك (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المالك (.*)$") 
database:set(bot_id.."CoSu:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *𖢅︙تم تغير رد المالك الى »* "..Teext)
end
if text and text:match("^تغير رد منشئ الاساسي (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد منشئ الاساسي (.*)$") 
database:set(bot_id.."BasicConstructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *𖢅︙تم تغير رد المنشئ الاساسي الى »* "..Teext)
end
if text and text:match("^تغير رد المنشئ (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المنشئ (.*)$") 
database:set(bot_id.."Constructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *𖢅︙تم تغير رد المنشئ الى »* "..Teext)
end
if text and text:match("^تغير رد المدير (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المدير (.*)$") 
database:set(bot_id.."Manager:Rd"..msg.chat_id_,Teext) 
send(msg.chat_id_, msg.id_," *𖢅︙تم تغير رد المدير الى »* "..Teext)
end
if text and text:match("^تغير رد الادمن (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد الادمن (.*)$") 
database:set(bot_id.."Mod:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *𖢅︙تم تغير رد الادمن الى »* "..Teext)
end
if text and text:match("^تغير رد المميز (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المميز (.*)$") 
database:set(bot_id.."Special:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *𖢅︙تم تغير رد المميز الى »* "..Teext)
end
if text and text:match("^تغير رد العضو (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد العضو (.*)$") 
database:set(bot_id.."Memp:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *𖢅︙تم تغير رد العضو الى »* "..Teext)
end

if text and text:match("^(.*)$") then
if database:get(bot_id..'help'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *𖢅︙تم حفظ الكليشه*')
database:del(bot_id..'help'..msg.sender_user_id_)
database:set(bot_id..'help_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help1'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *𖢅︙تم حفظ الكليشه*')
database:del(bot_id..'help1'..msg.sender_user_id_)
database:set(bot_id..'help1_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help2'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *𖢅︙تم حفظ الكليشه*')
database:del(bot_id..'help2'..msg.sender_user_id_)
database:set(bot_id..'help2_text',text)
return false
end
end

if text and text:match("^(.*)$") then
if database:get(bot_id..'help3'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *𖢅︙تم حفظ الكليشه*')
database:del(bot_id..'help3'..msg.sender_user_id_)
database:set(bot_id..'help3_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help4'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *𖢅︙تم حفظ الكليشه*')
database:del(bot_id..'help4'..msg.sender_user_id_)
database:set(bot_id..'help4_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help5'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *𖢅︙تم حفظ الكليشه*')
database:del(bot_id..'help5'..msg.sender_user_id_)
database:set(bot_id..'help5_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help6'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *𖢅︙تم حفظ الكليشه*')
database:del(bot_id..'help6'..msg.sender_user_id_)
database:set(bot_id..'help6_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help7'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *𖢅︙تم حفظ الكليشه*')
database:del(bot_id..'help7'..msg.sender_user_id_)
database:set(bot_id..'help7_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help8'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *𖢅︙تم حفظ الكليشه*')
database:del(bot_id..'help8'..msg.sender_user_id_)
database:set(bot_id..'help8_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help9'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *𖢅︙تم حفظ الكليشه*')
database:del(bot_id..'help9'..msg.sender_user_id_)
database:set(bot_id..'help9_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help10'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *𖢅︙تم حفظ الكليشه*')
database:del(bot_id..'help10'..msg.sender_user_id_)
database:set(bot_id..'help10_text',text)
return false
end
end

if text == 'استعاده الاوامر' and DevBILLAW(msg) then
database:del(bot_id..'help_text')
database:del(bot_id..'help1_text')
database:del(bot_id..'help2_text')
database:del(bot_id..'help3_text')
database:del(bot_id..'help4_text')
database:del(bot_id..'help5_text')
database:del(bot_id..'help6_text')
database:del(bot_id..'help7_text')
database:del(bot_id..'help8_text')
database:del(bot_id..'help9_text')
database:del(bot_id..'help10_text')
send(msg.chat_id_, msg.id_, ' *𖢅︙تم استعادة الاوامر القديمه*')
end
if text == 'تغير امر الاوامر' and DevBILLAW(msg) then
send(msg.chat_id_, msg.id_, ' *𖢅︙الان يمكنك ارسال الكليشه الاوامر*')
database:set(bot_id..'help'..msg.sender_user_id_,'true')
return false 
end
if text == 'تغير امر م1' and DevBILLAW(msg) then
send(msg.chat_id_, msg.id_, ' *𖢅︙الان يمكنك ارسال الكليشه م1*')
database:set(bot_id..'help1'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م2' and DevBILLAW(msg) then
send(msg.chat_id_, msg.id_, ' *𖢅︙الان يمكنك ارسال الكليشه م2*')
database:set(bot_id..'help2'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م3' and DevBILLAW(msg) then
send(msg.chat_id_, msg.id_, ' *𖢅︙الان يمكنك ارسال الكليشه م3*')
database:set(bot_id..'help3'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م4' and DevBILLAW(msg) then
send(msg.chat_id_, msg.id_, ' *𖢅︙الان يمكنك ارسال الكليشه م4*')
database:set(bot_id..'help4'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م5' and DevBILLAW(msg) then
send(msg.chat_id_, msg.id_, ' *𖢅︙الان يمكنك ارسال الكليشه م5*')
database:set(bot_id..'help5'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م6' and DevBILLAW(msg) then
send(msg.chat_id_, msg.id_, ' *𖢅︙الان يمكنك ارسال الكليشه م6*')
database:set(bot_id..'help6'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م7' and DevBILLAW(msg) then
send(msg.chat_id_, msg.id_, ' *𖢅︙الان يمكنك ارسال الكليشه م7*')
database:set(bot_id..'help7'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م8' and DevBILLAW(msg) then
send(msg.chat_id_, msg.id_, ' *𖢅︙ الان يمكنك ارسال الكليشه م8*')
database:set(bot_id..'help8'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م9' and DevBILLAW(msg) then
send(msg.chat_id_, msg.id_, ' *𖢅︙الان يمكنك ارسال الكليشه م9*')
database:set(bot_id..'help9'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م10' and DevBILLAW(msg) then
send(msg.chat_id_, msg.id_, ' *𖢅︙الان يمكنك ارسال الكليشه م10*')
database:set(bot_id..'help10'..msg.sender_user_id_,'true')
return false 
end

if text == 'الاوامر' then
if not Mod(msg) then
send(msg.chat_id_, msg.id_,' *𖢅︙هاذا الامر خاص بالادمنيه*\n*𖢅︙ارسل {م10} لعرض اوامر الاعضاء*')
return false
end
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *𖢅︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*𖢅︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local help_text = database:get(bot_id..'help_text')
Text = [[
*𖢅اهلا انتツفي اوامر البوت𖢅*
ٴ*•━━━━━━ 𝑩𝑰 ━━━━━━━•*ٴ
*𖢅م1 ◂ اوامر الحمايه*
*𖢅م2 ◂ اوامر تعطيل ~ تفعيل*
*𖢅م3 ◂ اوامر ضع ~ اضف*
*𖢅م4 ◂ اوامر مسح ~ حذف*
*𖢅م5 ◂ اوامر تنزيل+رفع+التغير*
*𖢅م6 ◂ اوامر الكروب*
*𖢅م7 ◂ اوامر التحشيش*
*𖢅م8 ◂ اوامر مطور البوت*
*𖢅م9 ◂ اوامر مطور الاساسي* 
*𖢅م10 ◂ اوامر الاعضاء*
ٴ*•━━━━━━ 𝑩𝑰 ━━━━━━━•*ٴ
[⍆ BiLla 𝘛𝘦𝘈𝘮 ](t.me/EE28i) 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = '⍆ BiLla 𝘛𝘦𝘈𝘮', url="t.me/EE92i"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
return false
end
if text == "تعطيل الزخرفه" and Manager(msg) then
send(msg.chat_id_, msg.id_, '*𖢅︙تم تعطيل الزخرفه*')
database:set(bot_id.." amir:zhrf_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل الزخرفه" and Manager(msg) then
send(msg.chat_id_, msg.id_,'*𖢅︙تم تفعيل الزخرفه*')
database:set(bot_id.." amir:zhrf_Bots"..msg.chat_id_,"open")
end
if text and text:match("^زخرفه (.*)$") and database:get(bot_id.." amir:zhrf_Bots"..msg.chat_id_) == "open" then
local TextZhrfa = text:match("^زخرفه (.*)$")
zh = https.request('https://vvvzvv.ml/amirZhfa/Teland.php?en='..URL.escape(TextZhrfa)..'')
zx = JSON.decode(zh)
t = "\n*𖢅︙قائمه الزخرفه* \nٴ𖢅∫ٴ*•━━━━━━ 𝑩𝑰 ━━━━━━━•*ٴ𖢅∫○ٴ \n"
i = 0
for k,v in pairs(zx.ok) do
i = i + 1
t = t..i.."-  "..v.." \n"
end
send(msg.chat_id_, msg.id_, t..'ٴ𖢅∫ٴ*•━━━━━━ 𝑩𝑰 ━━━━━━━•*ٴ𖢅∫○ٴ\n𖢅︙[⍆ BiLla 𝘛𝘦𝘈𝘮](t.me/EE28i) ')
end
if text == "تعطيل الابراج" and Manager(msg) then
send(msg.chat_id_, msg.id_, '*𖢅︙تم تعطيل الابراج*')
database:set(bot_id.." amir:brj_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل الابراج" and Manager(msg) then
send(msg.chat_id_, msg.id_,'*𖢅︙تم تفعيل الابراج*')
database:set(bot_id.." amir:brj_Bots"..msg.chat_id_,"open")
end
if text and text:match("^برج (.*)$") and database:get(bot_id.." amir:brj_Bots"..msg.chat_id_) == "open" then
local Textbrj = text:match("^برج (.*)$")
gk = https.request('https://vvvzvv.ml/amirBrg/Teland.php?br='..URL.escape(Textbrj)..'')
br = JSON.decode(gk)
i = 0
for k,v in pairs(br.ok) do
i = i + 1
t = v.."\n"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "تعطيل حساب العمر" and Manager(msg) then
send(msg.chat_id_, msg.id_, '*𖢅︙تم تعطيل حساب العمر*')
database:set(bot_id.." amir:age_Bots"..msg.chat_id_,"close")
end
if text == "تعطيل حساب العمر" and Manager(msg) then
send(msg.chat_id_, msg.id_, '*𖢅︙تم تعطيل حساب العمر*')
database:set(bot_id.." amir:age_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل حساب العمر" and Manager(msg) then
send(msg.chat_id_, msg.id_,'*𖢅︙تم تفعيل حساب العمر*')
database:set(bot_id.." amir:age_Bots"..msg.chat_id_,"open")
end
if text and text:match("^احسب (.*)$") and database:get(bot_id.." amir:age_Bots"..msg.chat_id_) == "open" then
local Textage = text:match("^احسب (.*)$")
ge = https.request('https://vvvzvv.ml/amirOmr/Teland.php?age='..URL.escape(Textage)..'')
ag = JSON.decode(ge)
i = 0
for k,v in pairs(ag.ok) do
i = i + 1
t = v.."\n"
end
send(msg.chat_id_, msg.id_, t)
end
if text and not database:get(bot_id.."AutoFile") then
Time = database:get(bot_id.."AutoFile:Time")
if Time then 
if Time ~= os.date("%x") then  
local list = database:smembers(bot_id..'Chek:Groups') 
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'BILLAW Chat'
link = database:get(bot_id.."Private:Group:Link"..msg.chat_id_) or ''
CoSu = database:smembers(bot_id..'CoSu'..v)
ASAS = database:smembers(bot_id..'Basic:Constructor'..v)
MNSH = database:smembers(bot_id..'Constructor'..v)
MDER = database:smembers(bot_id..'Manager'..v)
MOD = database:smembers(bot_id..'Mod:User'..v)
if k == 1 then
t = t..'"'..v..'":{"BILLAW":"'..NAME..'",'
else
t = t..',"'..v..'":{"BILLAW":"'..NAME..'",'
end
if #CoSu ~= 0 then 
t = t..'"CoSu":['
for k,v in pairs(CoSu) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(SUDO, msg.id_,0, 1, nil, './'..bot_id..'.json', '𖢅︙عدد مجموعات التي في البوت { '..#list..'}')
database:set(bot_id.."AutoFile:Time",os.date("%x"))
end
else 
database:set(bot_id.."AutoFile:Time",os.date("%x"))
end
end

if text == "غنيلي" and not database:get(bot_id.."sing:for:me"..msg.chat_id_) then
data,res = https.request('https://vvvzvv.ml/amirVois/Teland.php')
if res == 200 then
audios = json:decode(data)
if audios.Info == true then
local Text ='*𖢅︙تم اختيار المقطع الصوتي لك*'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⍆ BiLla 𝘛𝘦𝘈𝘮.',url="t.me/EE92i"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendVoice?chat_id=' .. msg.chat_id_ .. '&voice='..URL.escape(audios.info)..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
end
if text == "شنو رئيك بهذا" or text == "شنو رئيك بهذ" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"ادب سسز يباوع علي بنات ??🥺"," مو خوش ولد 😶","زاحف وما احبه 😾😹"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "شنو رئيك بهاي" or text == "شنو رئيك بهايي" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"دور حلوين 🤕😹","جكمه وصخه عوفها ☹️😾","حقيره ومنتكبره 😶😂"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "هينه" or text == "رزله" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"ولك هيو لتندك بسيادك لو بهاي 👞👈","ميستاهل اتعبي روحي ويا لانه عار","عوفه يروحي هاذا طيز يضل يمضرط🤣"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "مصه" or text == "بوسه" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"مووووووووواححح????","مابوس ولي😌😹","خدك/ج نضيف 😂","البوسه بالف حمبي 🌝💋","خلي يزحفلي وابوسه 🙊😻","كل شويه ابوسه كافي 😏","ماابوسه والله هذا زاحف🦎","محح هاي لحاته صاكه??"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "تويت" or text == "كت" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"آخر مرة زرت مدينة الملاهي؟","آخر مرة أكلت أكلتك المفضّلة؟","الوضع الحالي؟\n‏1. سهران\n‏2. ضايج\n‏3. أتأمل","آخر شيء ضاع منك؟","كلمة أخيرة لشاغل البال؟","طريقتك المعتادة في التخلّص من الطاقة السلبية؟","شهر من أشهر العام له ذكرى جميلة معك؟","كلمة غريبة من لهجتك ومعناها؟🤓","‏- شيء سمعته عالق في ذهنك هاليومين؟","متى تكره الشخص الذي أمامك حتى لو كنت مِن أشد معجبينه؟","‏- أبرز صفة حسنة في صديقك المقرب؟","هل تشعر أن هنالك مَن يُحبك؟","اذا اكتشفت أن أعز أصدقائك يضمر لك السوء، موقفك الصريح؟","أجمل شيء حصل معك خلال هاليوم؟","صِف شعورك وأنت تُحب شخص يُحب غيرك؟👀💔","كلمة لشخص غالي اشتقت إليه؟💕","آخر خبر سعيد، متى وصلك؟","أنا آسف على ....؟","أوصف نفسك بكلمة؟","صريح، مشتاق؟","‏- صريح، هل سبق وخذلت أحدهم ولو عن غير قصد؟","‏- ماذا ستختار من الكلمات لتعبر لنا عن حياتك التي عشتها الى الآن؟💭","‏- فنان/ة تود لو يدعوكَ على مائدة عشاء؟😁❤","‏- تخيّل شيء قد يحدث في المستقبل؟","‏- للشباب | آخر مرة وصلك غزل من فتاة؟🌚","شخص أو صاحب عوضك ونساك مُر الحياة ما اسمه ؟","اذا شفت حد واعجبك وعندك الجرأه انك تروح وتتعرف عليه ، مقدمة الحديث شو راح تكون ؟."," فنانك المُفضل؟","لو خيروك تصاحب الناس الاذكياء او الناس المرحين","اسم معلم ترك اثراً جميل عليك رغم قسوتة.؟","وش الحب بنظرك؟","لو خيروك جاي او قهوه","لو فزعت/ي لصديق/ه وقالك مالك دخل وش بتسوي/ين؟","شاركنا أقوى بيت شِعر من تأليفك؟","نصيحه تبدا ب -لا- ؟","كل شيء يهون الا ؟","عندك الشخص الي مستعد يوقف ضد العالم عشانك.؟","العلاقة السرية دائماً تكون حلوة؟","منشن شخص واعترف له بشي","منشن لصديقك المُقرب؟.","اخر خيانه؟.","أول حرف من اسم الحب؟","تشارك كل شي لاهلك ولا فيه أشياء ما تتشارك؟","أكثر شيء تغيّر في أسلوب حياتك بعد كورونا ؟","هات شعورك بسطر اغُنيه؟","شيء مهما حطيت فيه مصاري بتكون مبسوط؟","اغرب شي سويته ؟","كيف تشوف الجيل هذا؟","اخر همك في الحياة ؟","انت من الناس الكتومة ولا تفضفض؟","اكثر مكان تروحه لحالك ؟","قوة الصداقة بشو بتتكون؟","تطبيق تبي تحذفه من جهازك بس مضطر تستخدمه ؟","كم أعلى مبلغ جمعته؟","اخر شي شريته ؟","كلمة للشخص اللي يسب ويسكر؟","لعبة بجوالك تلعبها دايم ؟","مر عليك موقف محرج؟","علمنا عن تجربه خلت شخصيتك اقوى ؟","يوم من أيام الأسبوع روتينه ممل عندك ؟","عندك شخص تسميه ثالث والديك؟","شو هو طعامك المفضل؟","اخر همك في الحياة ؟","شو حابب تقول للاشخاص اللي بتدخل حياتك؟","عبر عن حبك او كرهك لشخص ما تقدر توصل له مشاعرك","موهبتك المكبوتة ؟","انت من الناس اللي تتغزل بالكل ولا بالشخص اللي تحبه بس؟","عبر عن حبك او كرهك لشخص ما تقدر توصل له مشاعرك","ماذا يعني لك حرف A","ماذا يعني لك حرحرM","نسبة رضاك عن نفسك من 10 ؟","عندكم شخص بالبيت بصلح اي شي بيخرب؟","تحس نفسك هطف ؟","تدوس على قلبك او كرامتك؟","  تحس حياتك فاشله ولا ناجحه؟","لو الشخص اللي تحبه قال بدخل حساباتك بتعطيه ولا بترفض؟","ميزة وعيب فيك ؟","وش ينادونك في البيت ؟", }  
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == 'تفعيل الردود' and Manager(msg) then   
database:del(bot_id..'lock:reply'..msg.chat_id_)  
Text = ' *𖢅︙تم تفعيل الردود*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الردود' and Manager(msg) then  
database:set(bot_id..'lock:reply'..msg.chat_id_,true)  
Text = '\n *𖢅︙تم تعطيل الردود*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'رابط الحذف' or text == 'رابط حذف' then
t =[[
*رابط الحذف في جميع مواقع التواصل 𖢅
فكر قبل لا تتسرع وتروح*
ٴ*•━━━━━━ 𝑩𝑰 ━━━━━━━•*ٴ
 *𖢅 رابط حذف*  [Telegram](https://my.telegram.org/auth?to=delete) ܁
 *𖢅 رابط حذف* [instagram](https://www.instagram.com/accounts/login/?next=/accounts/remove/request/permanent/) ܁
 *𖢅 رابط حذف* [Facebook](https://www.facebook.com/help/deleteaccount) ܁
 *𖢅 رابط حذف* [Snspchat](https://accounts.snapchat.com/accounts/login?continue=https%3A%2F%2Faccounts.snapchat.com%2Faccounts%2Fdeleteaccount) ܁
]]
send(msg.chat_id_, msg.id_,t) 
return false
end
if text and text:match('^الحساب (%d+)$') then
local id = text:match('^الحساب (%d+)$')
local text = 'اضغط لمشاهده الحساب'
tdcli_function ({ID="SendMessage", chat_id_=msg.chat_id_, reply_to_message_id_=msg.id_, disable_notification_=0, from_background_=1, reply_markup_=nil, input_message_content_={ID="InputMessageText", text_=text, disable_web_page_preview_=1, clear_draft_=0, entities_={[0] = {ID="MessageEntityMentionName", offset_=0, length_=19, user_id_=id}}}}, dl_cb, nil)
end
local function oChat(chat_id,cb)
tdcli_function ({
ID = "OpenChat",
chat_id_ = chat_id
}, cb, nil)
end
if text == "صلاحياته" and tonumber(msg.reply_to_message_id_) > 0 then
if tonumber(msg.reply_to_message_id_) ~= 0 then 
function prom_reply(extra, result, success) 
Get_Info(msg,msg.chat_id_,result.sender_user_id_)
end  
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},prom_reply, nil)
end
end
------------------------------------------------------------------------
if text == "صلاحياتي" then 
if tonumber(msg.reply_to_message_id_) == 0 then 
Get_Info(msg,msg.chat_id_,msg.sender_user_id_)
end  
end
------------------------------------------------------------------------
if text and text:match('^صلاحياته @(.*)') then   
local username = text:match('صلاحياته @(.*)')   
if tonumber(msg.reply_to_message_id_) == 0 then 
function prom_username(extra, result, success) 
if (result and result.code_ == 400 or result and result.message_ == "USERNAME_NOT_OCCUPIED") then
SendText(msg.chat_id_,msg.id_,"*𖢅︙المعرف غير صحيح \n*")   
return false  end   

Get_Info(msg,msg.chat_id_,result.id_)
end  
tdcli_function ({ID = "SearchPublicChat",username_ = username},prom_username,nil) 
end 
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
end -- Chat_Type = 'GroupBot' 
end -- end msg 
--------------------------------------------------------------------------------------------------------------
function tdcli_update_callback(data)  -- clback
if data.ID == "UpdateChannel" then 
if data.channel_.status_.ID == "ChatMemberStatusKicked" then 
t = "قام احد المنشئين بطرد البوت من مجموعته\n\n"
tdcli_function({ID ="GetChat",chat_id_="-100"..data.channel_.id_},function(arg,chat)  
local NameChat = chat.title_
t =t.."اسم المجموعه\n"..NameChat
local IdChat = "-100"..data.channel_.id_
t =t.."\n\nايدي المجموعه\n"..IdChat
send(SUDO, msg.id_,t)
database:srem(bot_id..'Chek:Groups','-100'..data.channel_.id_)  
end,nil)
end
end
if data.ID == "UpdateNewCallbackQuery" then
local Chat_id = data.chat_id_
local From_id = data.id_
local Msg_id = data.message_id_
local msg_idd = Msg_id/2097152/0.5
local DAata = data.payload_.data_
Ok_id  = DAata:match("(%d+)")  
if DAata == 'okCaptcha'..data.sender_user_id_ then  
DeleteMessage(Chat_id, {[0] = Msg_id}) 
return https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. Chat_id .. "&user_id="..Ok_id .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
end
if DAata == '/help1' then
if not Mod(data) then
local notText = '𖢅 عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*𖢅⤂ اوامر الحمايه اتبع مايلي ...*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ قفل + فتح ← الامر…*
*𖢅⤂ ← { بالتقيد ، بالطرد ، بالكتم }*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ الروابط*
*𖢅⤂ المعرف*
*𖢅⤂ التاك*
*𖢅⤂ الشارحه*
*𖢅⤂ التعديل*
*𖢅⤂ التثبيت*
*𖢅⤂ المتحركه*
*𖢅⤂ الملفات*
*𖢅⤂ الصور*
*𖢅⤂ التفليش*
*𖢅⤂ الاباحي*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ الماركداون*
*𖢅⤂ البوتات*
*𖢅⤂ التكرار*
*𖢅⤂ الكلايش*
*𖢅⤂ السيلفي*
*𖢅⤂ الملصقات*
*𖢅⤂ الفيديو*
*𖢅⤂ الانلاين*
*𖢅⤂ الدردشه*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ التوجيه*
*𖢅⤂ الاغاني*
*𖢅⤂ الصوت*
*𖢅⤂ الجهات*
*𖢅⤂ الاشعارات*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
[⍆ BiLla 𝘛𝘦𝘈𝘮](t.me/EE92i)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '⍆ BiLla 𝘛𝘦𝘈𝘮', url="t.me/EE92i"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help2' then
if not Mod(data) then
local notText = '𖢅 عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*𖢅⤂ اهلا بك عزيزي …*
*𖢅⤂ اوامر تفعيل وتعطيل …*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ تفعيل ~ تعطيل + امر …*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ اطردني*
*𖢅⤂ صيح*
*𖢅⤂ ضافني*
*𖢅⤂ الرابط* 
*𖢅⤂ الحظر*
*𖢅⤂ الرفع*
*𖢅⤂ الحظر*
*𖢅⤂ الرفع *
*𖢅⤂ الايدي*
*𖢅⤂ الالعاب*
*𖢅⤂ ردود المطور*
*𖢅⤂ الترحيب*
*𖢅⤂ ردود المدير*
*𖢅⤂ الردود*
*𖢅⤂ ردود البوت*
*𖢅⤂ الرسائل اليوميه*
*𖢅⤂ التحقق*
*𖢅⤂ اوامر التحشيش*
*𖢅⤂ صورتي*
*𖢅⤂ زخرفه*
*𖢅⤂ حساب العمر*
*𖢅⤂ الابراج*
*𖢅⤂ تنبيه الاسماء*
*𖢅⤂ تنبيه المعرف*
*𖢅⤂ تنبيه الصور*
*𖢅⤂ التوحيد*
*𖢅⤂ الكتم الاسم*
*𖢅⤂ نسبه الرجوله* 
*𖢅⤂ نسبه الانوثه*
*𖢅⤂ نسبه الكره*
*𖢅⤂ نسبه الحب*
*𖢅⤂ ءall*
 *ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
[⍆ BiLla 𝘛𝘦𝘈𝘮](t.me/EE92i)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '⍆ BiLla 𝘛𝘦𝘈𝘮', url="t.me/EE92i"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help3' then
if not Mod(data) then
local notText = '𖢅 عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*𖢅⤂ اهلا بك عزيزي …*
*𖢅⤂ اوامر الوضع ~ اضف …*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ اضف / حذف ← رد*
*𖢅⤂ اضف / حذف ← رد متعدد*
*𖢅⤂ اضف / حذف ← صلاحيه*
 *ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ ضع + امر …*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ اسم*
*𖢅⤂ رابط*
*𖢅⤂ ترحيب*
*𖢅⤂ قوانين*
*𖢅⤂ صوره*
*𖢅⤂ وصف*
*𖢅⤂ تكرار + عدد*
 *ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
[⍆ BiLla 𝘛𝘦𝘈𝘮](t.me/EE92i)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '⍆ BiLla 𝘛𝘦𝘈𝘮', url="t.me/EE92i"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help4' then
if not Mod(data) then
local notText = '𖢅 عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*𖢅⤂ اهلا بك عزيزي …*
*𖢅⤂ اوامر مسح / الحذف ← امر*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ مسح + امر …*
 *ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ الايدي*
*𖢅⤂ الادمنيه*
*𖢅⤂ المميزين*
*𖢅⤂ ردود المدير*
*𖢅⤂ المدراء* 
*𖢅⤂ المنشئين* 
*𖢅⤂ الاساسين*
*𖢅⤂ الاسماء المكتومه*
*𖢅⤂ البوتات*
*𖢅⤂ امسح*
*𖢅⤂ صلاحيه*
*𖢅⤂ قائمه منع المتحركات*
*𖢅⤂ قائمه منع الصور*
*𖢅⤂ قائمه منع الملصقات*
*𖢅⤂ مسح قائمه المنع* 
*𖢅⤂ المحذوفين*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ حذف + امر ...*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ امر *
*𖢅⤂ الاوامر المضافه*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
[⍆ BiLla 𝘛𝘦𝘈𝘮](t.me/EE92i)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '⍆ BiLla 𝘛𝘦𝘈𝘮', url="t.me/EE92i"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help5' then
if not Mod(data) then
local notText = '𖢅 عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*𖢅⤂ اهلا بك عزيزي …*
*𖢅⤂ اوامر تنزيل ورفع …*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ مميز*
*𖢅⤂ ادمن*
*𖢅⤂ مدير*
*𖢅⤂ منشئ*
*𖢅⤂ منشئ اساسي*
*𖢅⤂ مالك*
*𖢅⤂ الادمنيه*
*𖢅⤂ ادمن بالكروب*
*𖢅⤂ ادمن بكل الصلاحيات*
*𖢅⤂ القيود*
*𖢅⤂ تنزيل جميع الرتب*
*𖢅⤂ تنزيل الكل* 
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ اوامر التغير …*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ تغير رد المطور + اسم*
*𖢅⤂ تغير رد المالك + اسم*
*𖢅⤂ تغير رد منشئ الاساسي + اسم*
*𖢅⤂ تغير رد المنشئ + اسم*
*𖢅⤂ تغير رد المدير + اسم*
*𖢅⤂ تغير رد الادمن + اسم*
*𖢅⤂ تغير رد المميز + اسم*
*𖢅⤂ تغير رد العضو + اسم*
*𖢅⤂ تغير امر الاوامر*
*𖢅⤂ تغير امر م1 ~ الئ م10*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
[⍆ BiLla 𝘛𝘦𝘈𝘮](t.me/EE92i)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '⍆ BiLla 𝘛𝘦𝘈𝘮', url="t.me/EE92i"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help6' then
if not Mod(data) then
local notText = '𖢅 عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*𖢅⤂ اهلا بك عزيزي …*
*𖢅⤂ اوامر المجموعه …*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ الاوامر … كالتالي*
 *ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ استعاده الاوامر*
*𖢅⤂ تحويل كالاتي⤂ صور : ملصق : صوت : بصمه*
*𖢅⤂ صيح ~ تاك ~ المميزين : الادمنيه : المدراء : المنشئين : المنشئين الاساسين : للمالك*
*𖢅⤂ كشف القيود *
*𖢅⤂ تعين الايدي*
*𖢅⤂ تغير الايدي*
*𖢅⤂ الحساب + ايدي الحساب*
*𖢅⤂ تنظيف + العدد*
*𖢅⤂ تنزيل الكل*
*𖢅⤂ تنزيل جميع الرتب*
*𖢅⤂ منع + برد*
*𖢅⤂~ الصور + متحركه + ملصق ~*
*𖢅⤂ حظر ~ كتم ~ تقيد ~ طرد*
*𖢅⤂ المحظورين ~ المكتومين ~ المقيدين*
*𖢅⤂ الغاء كتم + حظر + تقيد ~ بالرد و معرف و ايدي*
*𖢅⤂ تقيد ~ كتم + الرقم + ساعه*
*𖢅⤂ تقيد ~ كتم + الرقم + يوم*
*𖢅⤂ تقيد ~ كتم + الرقم + دقيقه*
*𖢅⤂ تثبيت ~ الغاء تثبيت*
*𖢅⤂ الترحيب*
*𖢅⤂ الغاء تثبيت الكل* 
*𖢅⤂ كشف البوتات*
*𖢅⤂ الصلاحيات*
*𖢅⤂ كشف ~ برد ← بمعرف ← ايدي*
*𖢅⤂ تاك للكل*
*𖢅⤂ اضف لقب + لقب*
*𖢅⤂ حذف اللقب*
*𖢅⤂ تاك للمشرفين*
*𖢅⤂ اعدادات المجموعه*
*𖢅⤂ عدد الكروب*
*𖢅⤂ ردود المدير*
*𖢅⤂ اسم بوت + الرتبه*
*𖢅⤂ الاوامر المضافه*
*𖢅⤂ وضع توحيد + توحيد*
*𖢅⤂ تعين عدد الكتم + رقم*
*𖢅⤂ التوحيد*
*𖢅⤂ كتم اسم + اسم*
*𖢅⤂ قائمه المنع*
*𖢅⤂ نسبه الحب* 
*𖢅⤂ نسبه رجوله*
*𖢅⤂ نسبه الكره*
*𖢅⤂ نسبه الانوثه*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
[⍆ BiLla 𝘛𝘦𝘈𝘮](t.me/EE92i)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '⍆ BiLla 𝘛𝘦𝘈𝘮', url="t.me/EE92i"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help7' then
if not Mod(data) then
local notText = '𖢅 عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*𖢅⤂ الاوامر التحشيش …*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ رفع + تنزيل ← الامࢪ*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ رفع + تنزيل ← مطي* 
*𖢅⤂ تاك للمطايه*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ رفع + تنزيل ← صخل*
*𖢅⤂ تاك لصخوله*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ رفع + تنزيل ← جلب*
*𖢅⤂ تاك لجلاب*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ رفع + تنزيل ← قرد *
*𖢅⤂ تاك لقروده*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ رفع + تنزيل ← بقره*
*𖢅⤂ تاك لبقرات*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ رفع + تنزيل ← حصان*
*𖢅⤂ تاك لحصونه*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ رفع + تنزيل ← طلي*
*𖢅⤂ تاك لطليان*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ رفع + تنزيل ← زاحف* 
*𖢅⤂ تاك لزواحف*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ رفع + تنزيل ← جريذي*
*𖢅⤂ تاك لجريذيه*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ رفع + تنزيل ← الحات*
*𖢅⤂ تاك للحات*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ رفع + تنزيل ← الحاته*
*𖢅⤂ تاك للحاتات*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
[⍆ BiLla 𝘛𝘦𝘈𝘮](t.me/EE92i)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '⍆ BiLla 𝘛𝘦𝘈𝘮', url="t.me/EE92i"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help8' then
if not Mod(data) then
local notText = '𖢅 عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*𖢅⤂اوامر المطورين* 
 *ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ تفعيل ← تعطيل* 
*𖢅⤂ المجموعات ← المشتركين ← الاحصائيات*
*𖢅⤂ رفع ← تنزيل منشئ اساسي*
*𖢅⤂ مسح الاساسين ← المنشئين الاساسين*
*𖢅⤂ مسح المنشئين ← المنشئين*
*𖢅⤂ رفع ⇠ تنزيل مالك*
*𖢅⤂ مسح قائمه المالك* 
*𖢅⤂ اسم ⤂ غادر + غادر*
*𖢅⤂ اذاعه* 
*𖢅⤂ ردود المطور *
 *ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
[⍆ BiLla 𝘛𝘦𝘈𝘮](t.me/EE92i)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '⍆ BiLla 𝘛𝘦𝘈𝘮', url="t.me/EE92i"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help9' then
if not Mod(data) then
local notText = '𖢅 عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*𖢅⤂ اهلا بك عزيزي √*
*𖢅⤂ اوامر مطور الاساسي...↓*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ تفعيل*
*𖢅⤂ تعطيل*
*𖢅⤂ مسح الاساسين*
*𖢅⤂ المنشئين الاساسين*
*𖢅⤂ رفع ⇠ تنزيل منشئ اساسي*
*𖢅⤂ مسح المطورين*
*𖢅⤂ رفع ⇠ تنزيل مالك* 
*𖢅⤂ المطورين*
*𖢅⤂ رفع ⇠ تنزيل مطور*
*𖢅⤂ رفع ⤂ تنزيل مطور ثانوي*
*𖢅⤂ الثانويين ⤂ مسح الثانويين*
*𖢅⤂ تفعيل ⤂ تعطيل الاضافات*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ اسم البوت + غادر*
*𖢅⤂ غادر*
*𖢅⤂ اسم بوت + الرتبه*
*𖢅⤂ تحديث السورس*
*𖢅⤂ حضر عام*
*𖢅⤂ كتم عام*
*𖢅⤂ الغاء العام*
𖢅⤂ قائمه العام*
*𖢅⤂ مسح قائمه العام*
*𖢅⤂ جلب نسخه الاحتياطيه*
*𖢅⤂ رفع نسخه الاحتياطيه*
 *ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ المتجر* 
*𖢅⤂ متجر الملفات*
*𖢅⤂ الملفات*
*𖢅⤂ مسح الملفات*
*𖢅⤂ تعطيل + تفعيل + اسم ملف*
 *ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ اذاعه خاص*
*𖢅⤂ اذاعه*
*𖢅⤂ اذاعه بالتوجيه*
*𖢅⤂ اذاعه بالتوجيه خاص*
*𖢅⤂ اذاعه بالتثبيت*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ جلب نسخه الاحتياطيه*
*𖢅⤂ رفع نسخه احتياطيه*
*𖢅⤂ ضع عدد الاعضاء + العدد*
*𖢅⤂ ضع كليشه المطور*
*𖢅⤂ تفعيل/تعطيل الاذاعه*
*𖢅⤂ تفعيل/تعطيل البوت الخدمي*
*𖢅⤂ تفعيل/تعطيل التواصل*
*𖢅⤂ تغير اسم البوت*
*𖢅⤂ اضف/حذف رد للكل*
*𖢅⤂ ردود المطور*
𖢅⤂ مسح ردود المطور*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ الاشتراك الاجباري*
*𖢅⤂ تعطيل الاشتراك الاجباري*
*𖢅⤂ تفعيل الاشتراك الاجباري*
*𖢅⤂ حذف رساله الاشتراك*
*𖢅⤂ تغير رساله الاشتراك*
*𖢅⤂ تغير الاشتراك*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ الاحصائيات*
*𖢅⤂ المشتركين*
*𖢅⤂ المجموعات* 
*𖢅⤂ تفعيل/تعطيل المغادره*
*𖢅⤂ تنظيف المشتركين*
*𖢅⤂ تنظيف الكروبات*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
[⍆ BiLla 𝘛𝘦𝘈𝘮](t.me/EE92i)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '⍆ BiLla 𝘛𝘦𝘈𝘮', url="t.me/EE92i"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help10' then
if not Mod(data) then
local notText = '𖢅 عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*𖢅⤂ اهلا بك عزيزي √*
*𖢅⤂ اوامر الاعضاء كتالي…↓*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ عرض معلوماتك ↑↓*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ ايديي ← اسمي* 
*𖢅⤂ تفاعلي اليوم ← تفاعله اليوم*
*𖢅⤂ رسايلي ← مسح رسايلي* 
*𖢅⤂ رتبتي ← سحكاتي* 
*𖢅⤂ مسح سحكاتي ← المنشئ* 
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ اوآمر المجموعه ↑↓*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ الرابط ← القوانين – الترحيب*
*𖢅⤂ ايدي ← اطردني* 
*𖢅⤂ اسمي ← المطور*  
*𖢅⤂ كشف ~ بالرد بالمعرف*
  *ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ اسم البوت + الامر ↑↓*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅⤂ بوسه بالرد* 
*𖢅⤂ مصه بالرد*
*𖢅⤂ رزله بالرد* 
*𖢅⤂ شنو رئيك بهذا بالرد*
*𖢅⤂ شنو رئيك بهاي بالرد*
*𖢅⤂ تحب هذا*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
[⍆ BiLla 𝘛𝘦𝘈𝘮](t.me/EE92i)
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = 'الاوامر الرئيسيه', callback_data="/help"}},
{{text = '⍆ BiLla 𝘛𝘦𝘈𝘮', url="t.me/EE92i"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata == '/help' then
if not Mod(data) then
local notText = '𖢅 عذرا الاوامر هذه لا تخصك'
https.request("https://api.telegram.org/bot"..token.."/answerCallbackQuery?callback_query_id="..data.id_.."&text="..URL.escape(notText).."&show_alert=true")
return false
end
local Teext =[[
*اهلا انتツفي اوامر البوت*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
*𖢅م1 ◂ اوامر الحمايه*
*𖢅م2 ◂ اوامر تعطيل ~ تفعيل*
*𖢅م3 ◂ اوامر ضع ~ اضف*
*𖢅م4 ◂ اوامر مسح ~ حذف*
*𖢅م5 ◂ اوامر تنزيل+رفع+التغير*
*𖢅م6 ◂ اوامر الكروب*
*𖢅م7 ◂ اوامر التحشيش*
*𖢅م8 ◂ اوامر مطور البوت*
*𖢅م9 ◂ اوامر مطور الاساسي* 
*𖢅م10 ◂ اوامر الاعضاء*
*ٴ•━━━━━━ 𝑩𝑰 ━━━━━━━•*
[⍆ BiLla 𝘛𝘦𝘈𝘮](t.me/EE92i) 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '⓵', callback_data="/help1"},{text = '⓶', callback_data="/help2"},{text = '⓷', callback_data="/help3"}},
{{text = '⓸', callback_data="/help4"},{text = '⓹', callback_data="/help5"}},
{{text = '⓺', callback_data="/help6"},{text = '⓻', callback_data="/help7"},{text = '⓼', callback_data="/help8"}},
{{text = '⓽', callback_data="/help9"},{text = '⓵⓪', callback_data="/help10"}},
{{text = '⍆ BiLla 𝘛𝘦𝘈𝘮', url="t.me/EE92i"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if DAata and DAata:match("^animation(.*)$") then  
idch = DAata:match("-100(%d+)")
local idchci = "-100"..idch
local animation = DAata:match("^animation(.*)$"):gsub('chatid',''):gsub('chatid',''):gsub(idch,''):gsub('-100','')
local Text ="*𖢅 تم الغاء منعها بنجاح*"
inline = {
{{text = 'sᴏᴜʀᴄʀ ʙɪʟʟᴀ',url='http://t.me/EE92i'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
database:srem(bot_id.."filteranimation"..idchci,animation)  
end
if DAata and DAata:match("^pito(.*)$") then  
local idchci = database:get(bot_id.."Filter:msg")
local photo = DAata:match("^pito(.*)$")
local Text ="*𖢅 تم الغاء منعها بنجاح*"
inline = {
{{text = 'sᴏᴜʀᴄʀ ʙɪʟʟᴀ',url='http://t.me/EE92i'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
database:srem(bot_id.."filterphoto"..idchci,photo)  
end
if DAata and DAata:match("^Sticker(.*)$") then  
idch = DAata:match("-100(%d+)")
local idchci = "-100"..idch
local Sticker = DAata:match("^Sticker(.*)$"):gsub('chatid',''):gsub('chatid',''):gsub(idch,''):gsub('-100','')
local Text ="*𖢅 تم الغاء منعه بنجاح*"
inline = {
{{text = 'sᴏᴜʀᴄʀ ʙɪʟʟᴀ',url='http://t.me/EE92i'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
database:srem(bot_id.."filtersteckr"..idchci,Sticker)  
end
if DAata and DAata:match("^delallSticker(.*)$") then  
local delallSticker = DAata:match("^delallSticker(.*)$")
local Text ="*𖢅 تم الغاء منع كل المتحركات*"
inline = {
{{text = 'sᴏᴜʀᴄʀ ʙɪʟʟᴀ',url='http://t.me/EE92i'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
local listSticker = database:smembers(bot_id.."filtersteckr"..delallSticker)  
for k,v in pairs(listSticker) do  
database:srem(bot_id.."filtersteckr"..delallSticker,v)  
end  
end
if DAata and DAata:match("^delallanimation(.*)$") then  
local delallmation = DAata:match("^delallanimation(.*)$")
local Text ="*𖢅 تم الغاء منع كل المتحركات*"
inline = {
{{text = 'sᴏᴜʀᴄʀ ʙɪʟʟᴀ',url='http://t.me/EE92i'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
local listAnimation = database:smembers(bot_id.."filteranimation"..delallmation)  
for k,v in pairs(listAnimation) do  
database:srem(bot_id.."filteranimation"..delallmation,v)  
end  
end
if DAata and DAata:match("^delallph(.*)$") then  
local delallph = DAata:match("^delallph(.*)$")
local Text ="*𖢅 تم الغاء منع كل الصور*"
inline = {
{{text = 'sᴏᴜʀᴄʀ ʙɪʟʟᴀ',url='http://t.me/EE92i'}},
}
https.request("https://api.telegram.org/bot"..token.."/deleteMessage?chat_id="..Chat_id.."&message_id="..msg_idd)
send_inlin_key(Chat_id,Text,inline)
local listPhoto = database:smembers(bot_id.."filterphoto"..delallph)  
for k,v in pairs(listPhoto) do  
database:srem(bot_id.."filterphoto"..delallph,v)  
end  
end
end
if data.ID == "UpdateNewMessage" then  -- new msg
msg = data.message_
text = msg.content_.text_
--------------------------------------------------------------------------------------------------------------
if text and not database:sismember(bot_id..'Spam:Texting'..msg.sender_user_id_,text) then
database:del(bot_id..'Spam:Texting'..msg.sender_user_id_) 
end
--------------------------------------------------------------------------------------------------------------
if text and database:get(bot_id.."Del:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_) == 'true' then
local NewCmmd = database:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..text)
if NewCmmd then
database:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..text)
database:del(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
database:srem(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,' *𖢅︙تم حذف الامر*')  
else
send(msg.chat_id_, msg.id_,' *𖢅︙لا يوجد امر بهاذا الاسم*')  
end
database:del(bot_id.."Del:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_)
return false
end 
-------------------------------------------------------------------------------------------------------------- 
if data.message_.content_.text_ then
local NewCmmd = database:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..data.message_.content_.text_)
if NewCmmd then
data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
end
end
if (text and text == "تعطيل اوامر التحشيش") then 
send(msg.chat_id_, msg.id_, ' *𖢅︙تم تعطيل اوامر التحشيش*')
database:set(bot_id.."Fun_Bots:"..msg.chat_id_,"true")
end
if (text and text == "تفعيل اوامر التحشيش") then 
send(msg.chat_id_, msg.id_, '  *𖢅︙تم تفعيل اوامر التحشيش*')
database:del(bot_id.."Fun_Bots:"..msg.chat_id_)
end
local Name_Bot = (database:get(bot_id..'Name:Bot') or 'بيلا')
if not database:get(bot_id.."Fun_Bots:"..msg.chat_id_) then
if text ==  ""..Name_Bot..' شنو رئيك بهاذا' and tonumber(msg.reply_to_message_id_) > 0 then 
function FunBot(extra, result, success) 
local Fun = {'لوكي وزاحف من ساع زحفلي وحضرته 😒','خوش ولد و ورده مال الله 💋🙄','يلعب ع البنات 🙄', 'ولد زايعته الكاع 😶🙊','صاك يخبل ومعضل ','محلو وشواربه جنها مكناسه 😂🤷🏼‍♀️','اموت عليه 🌝','هوه غير الحب مال اني 🤓❤️','مو خوش ولد صراحه ☹️','ادبسز وميحترم البنات  ', 'فد واحد قذر 🙄😒','ماطيقه كل ما اكمشه ريحته جنها بخاخ بف باف مال حشرات 😂🤷‍♀️','مو خوش ولد 🤓' } 
send(msg.chat_id_, result.id_,''..Fun[math.random(#Fun)]..'')   
end   
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end  
if text == ""..Name_Bot..' تحب هذا' and tonumber(msg.reply_to_message_id_) > 0 then
function FunBot(extra, result, success) 
local Fun = {'الكبد مال اني ','يولي ماحبه ',' لٱ ايع ','بس لو الكفها اله اعضها 💔','ماخب مطايه اسف','اكلك ۿذﭑ يكلي احبكك لولا ﭑݩٺ شتكول  ','ئووووووووف اموت ع ربه ','ايععععععععع','بلعباس اعشكك','ماحب مخابيل','احبب ميدو وبس','لٱ ماحبه','بله هاي جهره تكلي تحبهه ؟ ','بربك ئنته والله فارغ وبطران وماعدك شي تسوي جاي تسئلني احبهم لولا','افبس حبيبي هذا' } 
send(msg.chat_id_,result.id_,''..Fun[math.random(#Fun)]..'') 
end  
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end
end
if text and text:match('^'..Name_Bot..' ') then
data.message_.content_.text_ = data.message_.content_.text_:gsub('^'..Name_Bot..' ','')
end
if text == "نسبه الحب" or text == "نسبه حب" and msg.reply_to_message_id_ ~= 0 and Mod(msg) then
if not database:get(bot_id..'Cick:lov'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_,"sendlove")
Text = '*ارسل اسمك واسم الشخص الثاني،*  *\n مثال اسد و لبوى*'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبه الحب" and database:get(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_) == "sendlove" then
num = {"10","20","30","35","75","34","66","82","23","19","55","8","63","32","27","89","99","98","3","80","49","100","6","0",};
sendnum = num[math.random(#num)]
sl = '*نسبه حب* *'..text..'* هي :* '..sendnum..'%*'
send(msg.chat_id_, msg.id_,sl) 
database:del(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_)
end
if text == "نسبه الكره" or text == "نسبه كره" and msg.reply_to_message_id_ ~= 0 and Mod(msg) then
if not database:get(bot_id..'Cick:krh'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_,"sendkrhe")
Text = '*ارسل اسمك واسم الشخص الثاني،*  *\n مثال اسد و لبوى*'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبه الكره" and database:get(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_) == "sendkrhe" then
num = {"10","20","30","35","75","34","66","82","23","19","55","8","63","32","27","89","99","98","3","80","8","100","6","0",};
sendnum = num[math.random(#num)]
sl = '*نسبه كره* *'..text..'* هي : *'..sendnum..'%*'
send(msg.chat_id_, msg.id_,sl) 
database:del(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_)
end
if text == "نسبه رجوله" or text == "نسبه الرجوله" and msg.reply_to_message_id_ ~= 0 and Mod(msg) then
if not database:get(bot_id..'Cick:rjo'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_,"sendrjoe")
Text = '*ارسل اسم الشخص الذي تريد قياس نسبه رجولته* *\n مثال امير*'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبه رجوله" and database:get(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_) == "sendrjoe" then
numj = {"10","20","30","35","75","34","66","82","23","19","55","80","63","32","27","89","99","98","79","100","8","3","6","0",};
sendnuj = numj[math.random(#numj)]
xl = '*نسبه رجوله* *'..text..'* هي : *\n '..sendnuj..'%*'
send(msg.chat_id_, msg.id_,xl) 
database:del(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_)
end
if text == "نسبه الانوثه" or text == "نسبه انوثه" and msg.reply_to_message_id_ ~= 0 and Mod(msg) then
if not database:get(bot_id..'Cick:ano'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_,"sendanoe")
Text = '*ارسل اسم الشخص الذي تريد قياس نسبه انوثتها* *\n مثال نونه*'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبه الانوثه" and database:get(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_) == "sendanoe" then
numj = {"10","20","30","35","75","34","66","82","23","19","55","80","63","32","27","89","99","98","79","100","8","3","6","0",};
sendnuj = numj[math.random(#numj)]
xl = '*نسبه الانوثه* *'..text..'* هي : *\n '..sendnuj..'%*'
send(msg.chat_id_, msg.id_,xl) 
database:del(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_)
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and Muted_User(msg.chat_id_,msg.sender_user_id_) then 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
return false  
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and Ban_User(msg.chat_id_,msg.sender_user_id_) then 
chat_kick(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false  
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban_User(msg.chat_id_,msg.content_.members_[0].id_) then 
chat_kick(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and GBan_User(msg.sender_user_id_) then 
chat_kick(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false 
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and Gmute_User(msg.sender_user_id_) then 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false 
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and GBan_User(msg.content_.members_[0].id_) then 
chat_kick(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
end 
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then  
database:set(bot_id.."Who:Added:Me"..msg.chat_id_..':'..msg.content_.members_[0].id_,msg.sender_user_id_)
local mem_id = msg.content_.members_  
local Bots = database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Mod(msg) and Bots == "kick" then   
https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
BILLA = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(BILLA)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_})
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_mod(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
local Bots = database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Mod(msg) and Bots == "del" then   
BILLA = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(BILLA)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_})
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_mod(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end 
end
end
if msg.content_.ID == 'MessagePinMessage' then
if Constructor(msg) then 
database:set(bot_id..'Pin:Id:Msg'..msg.chat_id_,msg.content_.message_id_)
else
local Msg_Pin = database:get(bot_id..'Pin:Id:Msg'..msg.chat_id_)
if Msg_Pin and database:get(bot_id.."lockpin"..msg.chat_id_) then
PinMessage(msg.chat_id_,Msg_Pin)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == 'MessagePinMessage' or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == 'MessageChatChangeTitle' or msg.content_.ID == "MessageChatDeleteMember" then   
if database:get(bot_id..'lock:tagservr'..msg.chat_id_) then  
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false
end
end   
--------------------------------------------------------------------------------------------------------------
SourceBILLA(data.message_,data)
plugin_Peland(data.message_)
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' and ChekAdd(msg.chat_id_) == true then
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ then
database:set(bot_id..'user:Name'..msg.sender_user_id_,(data.username_))
end
--------------------------------------------------------------------------------------------------------------
if tonumber(data.id_) == tonumber(bot_id) then
return false
end
end,nil)   
end
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.message_id_)},function(extra, result, success)
database:incr(bot_id..'edits'..result.chat_id_..result.sender_user_id_)
local Text = result.content_.text_
if database:get(bot_id.."lock_edit_med"..msg.chat_id_) and not Text and not BasicConstructor(result) then
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local username = data.username_
local name = data.first_name_
local iduser = data.id_
local users = ('[@'..data.username_..']' or iduser)
local list = database:smembers(bot_id..'Constructor'..msg.chat_id_)
t = "\n *𖢅︙شخص ما يحاول تعديل الميديا* \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *𖢅︙لا يوجد ادمن*"
end
send(msg.chat_id_,0,''..t..'\n*•━━━━━━ 𝑩𝑰 ━━━━━━━•*\n*𖢅︙تم التعديل على الميديا*\n*𖢅︙الشخص الي قام بالتعديل*\n*𖢅︙ايدي الشخص ◂ '..result.sender_user_id_..'*\n*𖢅︙معرف الشخص»{ '..users..' }*') 
end,nil)
DeleteMessage(msg.chat_id_,{[0] = msg.message_id_}) 
end
local text = result.content_.text_
if not Mod(result) then
------------------------------------------------------------------------
if text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("[hH][tT][tT][pP][sT]") or text and text:match("[tT][eE][lL][eE][gG][rR][aA].[Pp][Hh]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa].[Pp][Hh]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(@)(.*)") then
if database:get(bot_id.."lock:user:name"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("@") then
if database:get(bot_id.."lock:user:name"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(#)(.*)") then
if database:get(bot_id.."lock:hashtak"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("#") then
if database:get(bot_id.."lock:user:name"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
local BILLAAbot = database:get(bot_id.."BILLA1:Add:Filter:Rp2"..text..result.chat_id_)   
if BILLAAbot then
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0," *𖢅︙العضو :* {["..data.first_name_.."](T.ME/"..data.username_..")}\n𖢅︙["..BILLAAbot.."] \n") 
else
send(msg.chat_id_,0," *𖢅︙العضو :* {["..data.first_name_.."](T.ME/EE28i)}\n𖢅︙["..BILLAAbot.."] \n") 
end
end,nil)   
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end
------------------------------------------------------------------------
if text and text:match("/") then
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end 
end 
if text and text:match("(.*)(/)(.*)") then
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text then
local BILLA1_Msg = database:get(bot_id.."BILLA1:Add:Filter:Rp2"..text..result.chat_id_)   
if BILLA1_Msg then
send(msg.chat_id_, msg.id_," 𖢅︙"..BILLA1_Msg)
DeleteMessage(result.chat_id_, {[0] = data.message_id_}) 
return false
end
end
end
end,nil)
------------------------------------------------------------------------

elseif (data.ID == "UpdateOption" and data.name_ == "my_id") then 
local list = database:smembers(bot_id.."User_Bot") 
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data) end,nil) 
end 
local list = database:smembers(bot_id..'Chek:Groups') 
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
database:srem(bot_id..'Chek:Groups',v)  
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=v,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Chek:Groups',v)  
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id..'Chek:Groups',v)  
end 
end,nil)
end

elseif (data.ID == "UpdateMessageSendSucceeded") then
local msg = data.message_
local text = msg.content_.text_
local Get_Msg_Pin = database:get(bot_id..'Msg:Pin:Chat'..msg.chat_id_)
if Get_Msg_Pin ~= nil then
if text == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) if d.ID == 'Ok' then;database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_);end;end,nil)   
elseif (msg.content_.sticker_) then 
if Get_Msg_Pin == msg.content_.sticker_.sticker_.persistent_id_ then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.animation_) then 
if msg.content_.animation_.animation_.persistent_id_ == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.photo_) then
if msg.content_.photo_.sizes_[0] then
id_photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
id_photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
id_photo = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
id_photo = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
if id_photo == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
end


end -- end new msg
end -- end callback
















