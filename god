function timer(A0_0)
  io.open("CET_TRAINER.CETRAINER", "w"):write("Hello Noob.")
  io.open("CET_TRAINER.CETRAINER", "w"):close()
end
ANTI_CETRAINER_TIMER = createTimer(nil)
ANTI_CETRAINER_TIMER.interval = 1000
ANTI_CETRAINER_TIMER.enabled = true
ANTI_CETRAINER_TIMER.OnTimer = timer
activateProtection()
hideAllCEWindows()
MainForm.Panel1.Visible = false
MainForm.Panel1.Top = 999
MainForm.Panel1.Width = 1
getLuaEngine().cbShowOnPrint.Checked = false
getLuaEngine().mOutput.Clear()
MainForm.cbWritable.State = cbGrayed
collectgarbage("setpause", 120)
collectgarbage("setstepmul", 400)
UDF1.Show()
UDF1.CEPanel5.Width = 0
function main()
  function addBlacklist(A0_1)
    if ipaddress == A0_1 then
      messageDialog([[
You got banned from HOYUN Tool
If you want unban: kanghy3094@gmail.com]], mtWarning, mbOK)
      closeCE()
    end
  end
  terminate = true
  assert(loadstring(getInternet().getURL("https://dl.dropbox.com/s/prcvfgd2x1ulb04/toolStart.lua?dl=0")))()
  if terminate == true then
    messageDialog(terminate_msg, mtError, mbOK)
    closeCE()
  end
  if showNotice == true then
    showMessage(tool_notice)
  end
end
createThread(main)
settings = getSettings("HOYUN Tool")
memrec = getAddressList().getMemoryRecordByDescription
cmdItems = Console.CSListView1.Items
toolversion = "4.7"
gtversion = "2.99"
toolbeta = false
crcbypass = "Growtopia.exe+1A0C33"
if toolbeta == true then
  UDF1.Caption = string.format("HOYUN Tool %s Beta (Growtopia %s)", toolversion, gtversion)
else
  UDF1.Caption = string.format("HOYUN Tool %s (Growtopia %s)", toolversion, gtversion)
end
function updateCheck()
  latest_ver = ""
  updateURL = ""
  assert(loadstring(getInternet().getURL("https://dl.dropbox.com/s/hwigw18lgm5ong5/toolUpdate.lua?dl=0")))()
  messageDialog(string.format([[
HOYUN Tool
Latest Version: %s
Current Version: %s]], latest_ver, toolversion), mtInformation, mbOK)
  if toolversion < latest_ver then
    if messageDialog("Would you like to download the latest version?", mtInformation, mbYes, mbNo) == mrYes then
      shellExecute(updateURL)
    end
  else
    messageDialog("You are currently using the latest version!", mtInformation, mbOK)
  end
end
pointerbase = "Growtopia.exe+3F75A0"
growtopiahost = {
  "Growtopia.exe+326800",
  "Growtopia.exe+35E100"
}
R, G, B, A = "00", "00", "00", "FF"
rainbow = 0
rainbowredhex, rainbowbluehex, rainbowgreenhex = "FF", "00", "00"
statusvalue = 0
playereffectvalue = 0
itemcount = 0
UDF1.TabSheet10.Enabled = true
UDF1.CEButton7.Caption = "Dump Now"
clRed, clLime, clYellow = "$000000FF", "$0000FF00", "$000FFFF"
gtname = "Unknown"
gtdetect = false
tempmsg, tempmsg2, tempmsg3, tempmsg4, tempmsg5 = nil, nil, nil, nil, nil
unbanmsg = "[Unban]"
consolemsg = "[Console]"
adminconsolemsg = "[Console]"
consoleprefix = "/"
Console.Caption = string.format("HOYUN Tool Console (%shelp)", consoleprefix)
Console.CSEdit1.TextHint = string.format("%shelp", consoleprefix)
Console.CSEdit1.Items.Text = ""
form_background_color = "$00FFFFFF"
UDF1.Color = form_background_color
player_skin_color = "000000FF"
player_eye_color = "00000000"
player_name_color = "FFFFFFFF"
forms = {
  UDF1,
  UDF2,
  Console,
  WorldView,
  AutoGT
}
UDF1.CETrackBar3.Value = 255
for _FORV_3_ = 1, #forms do
  forms[_FORV_3_].AlphaBlendValue = 255
end
oldworld = "START"
cmd_openprocess = cmdItems[0].Caption
cmd_name = cmdItems[1].Caption
cmd_clear = cmdItems[2].Caption
cmd_run = cmdItems[3].Caption
cmd_prefix = cmdItems[4].Caption
cmd_set = cmdItems[5].Caption
cmd_get = cmdItems[6].Caption
cmd_fly = cmdItems[7].Caption
hcbnil = UDF1.hcb0
hhk = {}
hhk[1] = {}
hhk[1][0] = UDF1.hcb7
hhk[1][1] = 0
hhk[1][2] = hhk[1][0].Caption
hhk[1][3] = ""
hhk[1][4] = ""
hhk[2] = {}
hhk[2][0] = UDF1.hcb1
hhk[2][1] = 0
hhk[2][2] = hhk[2][0].Caption
hhk[2][3] = ""
hhk[2][4] = ""
hhk[3] = {}
hhk[3][0] = hcbnil
hhk[3][1] = 0
hhk[3][2] = hhk[3][0].Caption
hhk[3][3] = ""
hhk[3][4] = ""
hhk[4] = {}
hhk[4][0] = hcbnil
hhk[4][1] = 0
hhk[4][2] = hhk[4][0].Caption
hhk[4][3] = ""
hhk[4][4] = ""
hhk[5] = {}
hhk[5][0] = hcbnil
hhk[5][1] = 0
hhk[5][2] = hhk[5][0].Caption
hhk[5][3] = ""
hhk[5][4] = ""
hhk[6] = {}
hhk[6][0] = hcbnil
hhk[6][1] = 0
hhk[6][2] = hhk[6][0].Caption
hhk[6][3] = ""
hhk[6][4] = ""
hhk[7] = {}
hhk[7][0] = hcbnil
hhk[7][1] = 0
hhk[7][2] = hhk[7][0].Caption
hhk[7][3] = ""
hhk[7][4] = ""
hhk[8] = {}
hhk[8][0] = hcbnil
hhk[8][1] = 0
hhk[8][2] = hhk[8][0].Caption
hhk[8][3] = ""
hhk[8][4] = ""
hhk[9] = {}
hhk[9][0] = hcbnil
hhk[9][1] = 0
hhk[9][2] = hhk[9][0].Caption
hhk[9][3] = ""
hhk[9][4] = ""
function keyfF1()
  local L0_2, L1_3
end
function saveSettings()
  settings = getSettings("HOYUN Tool")
  settings.Value["Form Transparency"] = UDF1.CECheckbox17.State
  settings.Value["Form Transparency Value"] = UDF1.CETrackBar3.Position
  settings.Value["Form Stay On Top"] = UDF1.CECheckbox18.State
  settings.Value["Remember Form Position"] = UDF1.CECheckbox23.State
  settings.Value["[Unban] Regedit First Number"] = UDF1.CEEdit4.Text
  settings.Value["[Unban] Regedit Second Number"] = UDF1.CEEdit5.Text
  settings.Value["[Unban] Last MAC Address"] = UDF1.CEEdit6.Text
  settings.Value["[Unban] Use '02' as"] = UDF1.CECheckbox20.State
  settings.Value["[Unban] Network Adapter"] = UDF1.CEEdit7.Text
  settings.Value["[Unban] Adapter Folder"] = UDF1.CEEdit8.Text
  settings.Value["[Unban] Remove 'save.dat'"] = UDF1.CECheckbox21.State
  settings.Value["[Unban] Auto generate random MAC address"] = UDF1.CECheckbox22.State
  settings.Value.cmd_openprocess = cmdItems[0].Caption
  settings.Value.cmd_name = cmdItems[1].Caption
  settings.Value.cmd_clear = cmdItems[2].Caption
  settings.Value.cmd_run = cmdItems[3].Caption
  settings.Value.cmd_prefix = cmdItems[4].Caption
  settings.Value.cmd_set = cmdItems[5].Caption
  settings.Value.cmd_get = cmdItems[6].Caption
  settings.Value.cmd_fly = cmdItems[7].Caption
  settings.Value["[Console] Remember the message"] = Console.CSCheckbox1.State
  settings.Value["[Console] Auto Completion"] = Console.CSCheckbox2.State
  settings.Value.hhk1_0 = hhk[1][0].Name
  settings.Value.hhk1_1 = hhk[1][1]
  settings.Value.hhk1_2 = hhk[1][2]
  settings.Value.hhk1_3 = hhk[1][3]
  settings.Value.hhk1_4 = hhk[1][4]
  settings.Value.hhk2_0 = hhk[2][0].Name
  settings.Value.hhk2_1 = hhk[2][1]
  settings.Value.hhk2_2 = hhk[2][2]
  settings.Value.hhk2_3 = hhk[2][3]
  settings.Value.hhk2_4 = hhk[2][4]
  settings.Value.hhk3_0 = hhk[3][0].Name
  settings.Value.hhk3_1 = hhk[3][1]
  settings.Value.hhk3_2 = hhk[3][2]
  settings.Value.hhk3_3 = hhk[3][3]
  settings.Value.hhk3_4 = hhk[3][4]
  settings.Value.hhk4_0 = hhk[4][0].Name
  settings.Value.hhk4_1 = hhk[4][1]
  settings.Value.hhk4_2 = hhk[4][2]
  settings.Value.hhk4_3 = hhk[4][3]
  settings.Value.hhk4_4 = hhk[4][4]
  settings.Value.hhk5_0 = hhk[5][0].Name
  settings.Value.hhk5_1 = hhk[5][1]
  settings.Value.hhk5_2 = hhk[5][2]
  settings.Value.hhk5_3 = hhk[5][3]
  settings.Value.hhk5_4 = hhk[5][4]
  settings.Value.hhk6_0 = hhk[6][0].Name
  settings.Value.hhk6_1 = hhk[6][1]
  settings.Value.hhk6_2 = hhk[6][2]
  settings.Value.hhk6_3 = hhk[6][3]
  settings.Value.hhk6_4 = hhk[6][4]
  settings.Value.hhk7_0 = hhk[7][0].Name
  settings.Value.hhk7_1 = hhk[7][1]
  settings.Value.hhk7_2 = hhk[7][2]
  settings.Value.hhk7_3 = hhk[7][3]
  settings.Value.hhk7_4 = hhk[7][4]
  settings.Value.hhk8_0 = hhk[8][0].Name
  settings.Value.hhk8_1 = hhk[8][1]
  settings.Value.hhk8_2 = hhk[8][2]
  settings.Value.hhk8_3 = hhk[8][3]
  settings.Value.hhk8_4 = hhk[8][4]
  settings.Value.hhk9_0 = hhk[9][0].Name
  settings.Value.hhk9_1 = hhk[9][1]
  settings.Value.hhk9_2 = hhk[9][2]
  settings.Value.hhk9_3 = hhk[9][3]
  settings.Value.hhk9_4 = hhk[9][4]
end
function loadSettings()
  if settings.Value.Count >= "1" then
    UDF1.CECheckbox17.State = settings.Value["Form Transparency"]
    UDF1.CETrackBar3.Position = settings.Value["Form Transparency Value"]
    UDF1.CECheckbox18.State = settings.Value["Form Stay On Top"]
    UDF1.CECheckbox23.State = settings.Value["Remember Form Position"]
    UDF1.CEEdit4.Text = settings.Value["[Unban] Regedit First Number"]
    UDF1.CEEdit5.Text = settings.Value["[Unban] Regedit Second Number"]
    UDF1.CEEdit6.Text = settings.Value["[Unban] Last MAC Address"]
    UDF1.CECheckbox20.State = settings.Value["[Unban] Use '02' as"]
    UDF1.CEEdit7.Text = settings.Value["[Unban] Network Adapter"]
    UDF1.CEEdit8.Text = settings.Value["[Unban] Adapter Folder"]
    UDF1.CECheckbox21.State = settings.Value["[Unban] Remove 'save.dat'"]
    UDF1.CECheckbox22.State = settings.Value["[Unban] Auto generate random MAC address"]
    cmdItems[0].Caption = settings.Value.cmd_openprocess
    cmdItems[1].Caption = settings.Value.cmd_name
    cmdItems[2].Caption = settings.Value.cmd_clear
    cmdItems[3].Caption = settings.Value.cmd_run
    cmdItems[4].Caption = settings.Value.cmd_prefix
    cmdItems[5].Caption = settings.Value.cmd_set
    cmdItems[6].Caption = settings.Value.cmd_get
    cmdItems[7].Caption = settings.Value.cmd_fly
    Console.CSCheckbox1.State = settings.Value["[Console] Remember the message"]
    Console.CSCheckbox2.State = settings.Value["[Console] Auto Completion"]
    hhk[1][0] = UDF1[settings.Value.hhk1_0]
    hhk[1][1] = tonumber(settings.Value.hhk1_1)
    hhk[1][2] = settings.Value.hhk1_2
    hhk[1][3] = settings.Value.hhk1_3
    hhk[1][4] = settings.Value.hhk1_4
    hhk[2][0] = UDF1[settings.Value.hhk2_0]
    hhk[2][1] = tonumber(settings.Value.hhk2_1)
    hhk[2][2] = settings.Value.hhk2_2
    hhk[2][3] = settings.Value.hhk2_3
    hhk[2][4] = settings.Value.hhk2_4
    hhk[3][0] = UDF1[settings.Value.hhk3_0]
    hhk[3][1] = tonumber(settings.Value.hhk3_1)
    hhk[3][2] = settings.Value.hhk3_2
    hhk[3][3] = settings.Value.hhk3_3
    hhk[3][4] = settings.Value.hhk3_4
    hhk[4][0] = UDF1[settings.Value.hhk4_0]
    hhk[4][1] = tonumber(settings.Value.hhk4_1)
    hhk[4][2] = settings.Value.hhk4_2
    hhk[4][3] = settings.Value.hhk4_3
    hhk[4][4] = settings.Value.hhk4_4
    hhk[5][0] = UDF1[settings.Value.hhk5_0]
    hhk[5][1] = tonumber(settings.Value.hhk5_1)
    hhk[5][2] = settings.Value.hhk5_2
    hhk[5][3] = settings.Value.hhk5_3
    hhk[5][4] = settings.Value.hhk5_4
    hhk[6][0] = UDF1[settings.Value.hhk6_0]
    hhk[6][1] = tonumber(settings.Value.hhk6_1)
    hhk[6][2] = settings.Value.hhk6_2
    hhk[6][3] = settings.Value.hhk6_3
    hhk[6][4] = settings.Value.hhk6_4
    hhk[7][0] = UDF1[settings.Value.hhk7_0]
    hhk[7][1] = tonumber(settings.Value.hhk7_1)
    hhk[7][2] = settings.Value.hhk7_2
    hhk[7][3] = settings.Value.hhk7_3
    hhk[7][4] = settings.Value.hhk7_4
    hhk[8][0] = UDF1[settings.Value.hhk8_0]
    hhk[8][1] = tonumber(settings.Value.hhk8_1)
    hhk[8][2] = settings.Value.hhk8_2
    hhk[8][3] = settings.Value.hhk8_3
    hhk[8][4] = settings.Value.hhk8_4
    hhk[9][0] = UDF1[settings.Value.hhk9_0]
    hhk[9][1] = tonumber(settings.Value.hhk9_1)
    hhk[9][2] = settings.Value.hhk9_2
    hhk[9][3] = settings.Value.hhk9_3
    hhk[9][4] = settings.Value.hhk9_4
  else
    settings.Value.Count = "0"
    saveSettings()
  end
  settings.Value.Count = tonumber(settings.Value.Count) + 1
end
loadSettings()
function antiDecompile()
  activateProtection()
  hideAllCEWindows()
  MainForm.Panel1.Visible = false
  MainForm.Panel1.Top = 999
  MainForm.Panel1.Width = 1
end
hex = {
  [VK_A] = "A",
  [VK_B] = "B",
  [VK_C] = "C",
  [VK_D] = "D",
  [VK_E] = "E",
  [VK_F] = "F",
  [VK_0] = "0",
  [VK_NUMPAD0] = "0",
  [VK_1] = "1",
  [VK_NUMPAD1] = "1",
  [VK_2] = "2",
  [VK_NUMPAD2] = "2",
  [VK_3] = "3",
  [VK_NUMPAD3] = "3",
  [VK_4] = "4",
  [VK_NUMPAD4] = "4",
  [VK_5] = "5",
  [VK_NUMPAD5] = "5",
  [VK_6] = "6",
  [VK_NUMPAD6] = "6",
  [VK_7] = "7",
  [VK_NUMPAD7] = "7",
  [VK_8] = "8",
  [VK_NUMPAD8] = "8",
  [VK_9] = "9",
  [VK_NUMPAD9] = "9"
}
dec = {
  [VK_0] = "0",
  [VK_NUMPAD0] = "0",
  [VK_1] = "1",
  [VK_NUMPAD1] = "1",
  [VK_2] = "2",
  [VK_NUMPAD2] = "2",
  [VK_3] = "3",
  [VK_NUMPAD3] = "3",
  [VK_4] = "4",
  [VK_NUMPAD4] = "4",
  [VK_5] = "5",
  [VK_NUMPAD5] = "5",
  [VK_6] = "6",
  [VK_NUMPAD6] = "6",
  [VK_7] = "7",
  [VK_NUMPAD7] = "7",
  [VK_8] = "8",
  [VK_NUMPAD8] = "8",
  [VK_9] = "9",
  [VK_NUMPAD9] = "9"
}
function NumberOnly(A0_4, A1_5)
  local L2_6, L3_7, L4_8
  L2_6 = A0_4.CharCase
  if L2_6 == "ecUppercase" then
    L2_6 = hex
    hexordec = L2_6
  else
    L2_6 = dec
    hexordec = L2_6
  end
  L2_6 = isKeyPressed
  L3_7 = 17
  L2_6 = L2_6(L3_7)
  if L2_6 then
    L2_6 = VK_V
    if A1_5 == L2_6 then
      L2_6 = A0_4.Text
      L3_7 = readFromClipboard
      L3_7 = L3_7()
      L2_6 = L2_6 .. L3_7
      A0_4.Text = L2_6
    else
      L2_6 = VK_Z
      if A1_5 == L2_6 then
        L2_6 = A0_4.Tag
        A0_4.Text = L2_6
      end
    end
  elseif A1_5 == 8 then
    L2_6 = A0_4.Text
    A0_4.Tag = L2_6
    L2_6 = A0_4.SelLength
    if L2_6 >= 1 then
      L2_6 = string
      L2_6 = L2_6.sub
      L3_7 = A0_4.Text
      L4_8 = 0
      L2_6 = L2_6(L3_7, L4_8, A0_4.SelStart)
      L3_7 = string
      L3_7 = L3_7.sub
      L4_8 = A0_4.Text
      L3_7 = L3_7(L4_8, A0_4.SelStart + 1, A0_4.SelStart + A0_4.SelLength)
      L4_8 = string
      L4_8 = L4_8.sub
      L4_8 = L4_8(A0_4.Text, A0_4.SelStart + 1 + A0_4.SelLength, string.len(A0_4.Text))
      A0_4.Text = L2_6 .. L4_8
    else
      L2_6 = string
      L2_6 = L2_6.sub
      L3_7 = A0_4.Text
      L4_8 = 0
      L2_6 = L2_6(L3_7, L4_8, string.len(A0_4.Text) - 1)
      A0_4.Text = L2_6
    end
  else
    L2_6 = hexordec
    L2_6 = L2_6[A1_5]
    if L2_6 ~= nil then
      L2_6 = A0_4.Text
      L3_7 = hexordec
      L3_7 = L3_7[A1_5]
      L2_6 = L2_6 .. L3_7
      A0_4.Text = L2_6
    end
  end
  return A1_5
end
function tohex(A0_9)
  return (A0_9:gsub(".", function(A0_10)
    local L2_11
    L2_11 = string
    L2_11 = L2_11.format
    return L2_11("%02X", string.byte(A0_10))
  end))
end
function tohexbytes(A0_12)
  return (A0_12:gsub(".", function(A0_13)
    local L2_14
    L2_14 = string
    L2_14 = L2_14.format
    return L2_14("%02X ", string.byte(A0_13))
  end))
end
function GTDETECT(A0_15)
  if memrec("GTDETECT").Value == "??" then
    gtdetect = false
    if A0_15 == true then
      messageDialog("Please connect the Growtopia process first.", mtWarning, mbOK)
    end
  elseif memrec("Current World").Value == "??" and memrec("Current World(FIX)").Value == "??" then
    gtdetect = false
    if A0_15 == true then
      messageDialog("Please enter the world first.", mtWarning, mbOK)
    end
  else
    gtdetect = true
  end
end
function GTPROCESS(A0_16)
  if memrec("GTDETECT").Value == "??" then
    gtdetect = false
    if A0_16 == true then
      messageDialog("Please connect the Growtopia process first.", mtWarning, mbOK)
    end
  else
    gtdetect = true
  end
end
function ezAssemble(A0_17, A1_18, A2_19)
  if A0_17.state == 1 then
    GTPROCESS(true)
    if gtdetect == true then
      autoAssemble(A1_18)
    else
      A0_17.state = 0
    end
  else
    autoAssemble(A2_19)
  end
end
function GetTheProcessList()
  local L0_20, L1_21, L2_22, L3_23, L4_24, L5_25, L6_26, L7_27
  L0_20 = createStringlist
  L0_20 = L0_20()
  L1_21(L2_22)
  for L4_24 = 0, L2_22 - 1 do
    L5_25 = strings_getString
    L6_26 = L0_20
    L7_27 = L4_24
    L5_25 = L5_25(L6_26, L7_27)
    L7_27 = L5_25
    L6_26 = L5_25.sub
    L6_26 = L6_26(L7_27, 10, 255)
    L7_27 = tonumber
    L7_27 = L7_27("0x" .. L5_25:sub(1, 8))
    TempTable[L4_24] = {L7_27, L6_26}
  end
  return L1_21
end
function AddTheProcessList()
  local L0_28, L1_29, L2_30, L3_31, L4_32
  L0_28()
  index = 0
  gtindex = -1
  for L3_31 in L0_28(L1_29) do
    L4_32 = index
    L4_32 = L4_32 + 1
    index = L4_32
  end
  for L3_31 = 0, L1_29 - 1 do
    L4_32 = TempTable
    L4_32 = L4_32[L3_31]
    if L4_32 ~= "" then
      L4_32 = TempTable
      L4_32 = L4_32[L3_31]
      if L4_32 ~= nil then
        L4_32 = string
        L4_32 = L4_32.format
        L4_32 = L4_32("%04s", L3_31)
        L4_32 = L4_32 .. " | " .. string.format("%06X", TempTable[L3_31][1]) .. " - " .. TempTable[L3_31][2]
        strings_add(Items, L4_32)
        if string.find(TempTable[L3_31][2], "rowtopia") then
          gtindex = gtindex + 1
          savegtindex[gtindex] = L3_31
          strings_add(ItemsGT, L4_32)
        end
      end
    end
  end
  L0_28.ItemIndex = 0
  L0_28.ItemIndex = 0
end
function AttachToTheSelectedProcess()
  if listbox_getItemIndex(UDF2.CE2ListBox1) ~= -1 then
    if TempTable[listbox_getItemIndex(UDF2.CE2ListBox1)][1] ~= nil then
      if openProcess(TempTable[listbox_getItemIndex(UDF2.CE2ListBox1)][1]) then
        autoAssemble(string.format([[
    label(Growtopia.exe)
    %s:
    Growtopia.exe:
    registersymbol(Growtopia.exe)
    ]], TempTable[listbox_getItemIndex(UDF2.CE2ListBox1)][2]))
        autoAssemble(string.format([[
    %s:
    db 90 90
    define(pointerbase, %s)
    registersymbol(pointerbase)
    ]], crcbypass, pointerbase))
        Console.CSMemo1.Lines.Add(string.format("%s Process \"%s\" PID \"%s\" is connected.", consolemsg, TempTable[listbox_getItemIndex(UDF2.CE2ListBox1)][2], TempTable[listbox_getItemIndex(UDF2.CE2ListBox1)][1]))
        UDF2.Hide()
      end
    else
      return showMessage("Failed to open the select process.")
    end
  else
    return showMessage("Please choose a process from the list.")
  end
end
function showProcessList(A0_33)
  UDF2.Show()
  Items = listbox_getItems(UDF2.CE2ListBox1)
  ItemsGT = listbox_getItems(UDF2.CE2ListBox2)
  TempTable = {}
  savegtindex = {}
  strings_clear(Items)
  strings_clear(ItemsGT)
  AddTheProcessList()
  CE2ListBox2Click()
end
function FormClose(A0_34)
  saveSettings()
  closeCE()
  return caHide
end
function openGrowtopia()
  shellExecute(os.getenv("localappdata") .. "\\Growtopia\\Growtopia.exe")
end
function CE2ListBox2Click(A0_35)
  if UDF2.CE2ListBox1.Items.Count > 0 then
    UDF2.CE2ListBox1.ItemIndex = savegtindex[listbox_getItemIndex(UDF2.CE2ListBox2)]
  end
end
function CETrackBar1Change(A0_36)
  if UDF1.CETrackBar1.Position == 100 then
    pspeed = "1"
    writeFloat("pspeed", "1")
  elseif UDF1.CETrackBar1.Position < 10 then
    pspeed = "0.0" .. UDF1.CETrackBar1.Position
  else
    pspeed = "0." .. UDF1.CETrackBar1.Position
  end
  if UDF1.CECheckbox33.Checked == true then
    writeFloat("pspeed", pspeed)
  end
  UDF1.CELabel2.Caption = "Value: " .. pspeed
end
function CECheckbox33Change(A0_37)
  if A0_37.State == 1 then
    autoAssemble([[
 alloc(PunchHack,104,Growtopia.exe+21D8FD)
 label(return)
 alloc(pspeed,12)
 pspeed:
 dd (float)0.0

 Growtopia.exe+21D891:
 mov edx,00400800

 PunchHack:
 movss xmm3,[pspeed]
 subss xmm2,xmm0
 subss xmm2,xmm3
 movaps xmm0,xmm1
 jmp return
 Growtopia.exe+21D8FD:
 jmp PunchHack
 db 90 90
 return:
 registersymbol(pspeed)
 ]])
    CETrackBar1Change()
  else
    autoAssemble([[
 Growtopia.exe+21D8FD:
 subss xmm2,xmm0
 movaps xmm0,xmm1
 mulss xmm0,xmm6

 Growtopia.exe+21D891:
 mov edx,00000A00
 dealloc(PunchHack)
 dealloc(pspeed)
 unregistersymbol(pspeed)
 ]])
  end
end
function CECheckbox34Change(A0_38)
  if A0_38.State == 1 then
    autoAssemble([[
 alloc(growz, 128, Growtopia.exe+233DCF)
 alloc(movespeed,4)

 movespeed:
 dd (float)0.0

 Growtopia.exe+233DCF:
 jmp growz
 db 90 90 90 90

 registersymbol(movespeed)

 growz:
 movss xmm5,[movespeed]
 subss xmm1,xmm5
 subss xmm2,xmm1
 addss xmm8,xmm2
 jmp Growtopia.exe+233DD8
 ]])
    UDF1.CETrackbar2.Enabled = true
    UDF1.movingspeedctrl.Enabled = true
  else
    autoAssemble([[
 dealloc(growz)
 dealloc(movespeed)

 Growtopia.exe+233DCF:
 subss xmm2,xmm1
 addss xmm8,xmm2

 unregistersymbol(movespeed)
 ]])
    UDF1.CETrackbar2.Position = 0
    UDF1.CETrackbar2.Enabled = false
    UDF1.movingspeedctrl.Enabled = false
  end
end
function movingspeedctrlTimer(A0_39)
  if UDF1.CETrackBar2.Enabled == true then
    if isKeyPressed(190) then
      UDF1.CETrackBar2.Position = UDF1.CETrackBar2.Position + 10
    end
    if isKeyPressed(188) then
      if UDF1.CETrackBar2.Position <= 0 then
        UDF1.CECheckbox34.Checked = false
        UDF1.movingspeedctrl.Enabled = false
      else
        UDF1.CETrackBar2.Position = UDF1.CETrackBar2.Position - 10
      end
    end
  end
end
function CETrackBar2Change(A0_40)
  movespeed = A0_40.Position
  writeFloat("movespeed", movespeed)
  UDF1.CELabel3.Caption = "Value: " .. movespeed
end
function changeWindowText(A0_41, A1_42)
  autoAssemble(string.format([[
globalalloc(changeWindowText,512)
   label(exit)
   label(oldname)
   label(newname)
   createthread(changeWindowText)
   changeWindowText:
     [64-bit]
     sub rsp,20
     xor rcx,rcx
     mov rdx,oldname
     call User32.FindWindowA
     test rax,rax
     jz exit
     mov rcx,rax
     mov rdx,newname
     call User32.SetWindowTextA
   exit:
     add rsp,20
     [/64-bit]
     [32-bit]
     push oldname
     push 0
     call User32.FindWindowA
     test eax,eax
     jz exit
     push newname
     push eax
     call User32.SetWindowTextA
   exit:
     [/32-bit]
     ret
   oldname:
     db '%s',0
   newname:
     db '%s',0]], A0_41, A1_42), true)
end
function CEButton1Click(A0_43)
  OriginalCaption = UDF1.CEEdit1.text
  ChangedCaption = UDF1.CEEdit2.text
  changeWindowText(OriginalCaption, ChangedCaption)
end
function CELabel6Click(A0_44)
  local L1_45, L2_46
  L1_45 = UDF1
  L1_45 = L1_45.CEEdit1
  L1_45 = L1_45.text
  Edit1_Origin = L1_45
  L1_45 = UDF1
  L1_45 = L1_45.CEEdit2
  L1_45 = L1_45.text
  Edit2_Origin = L1_45
  L1_45 = UDF1
  L1_45 = L1_45.CEEdit1
  L2_46 = Edit2_Origin
  L1_45.text = L2_46
  L1_45 = UDF1
  L1_45 = L1_45.CEEdit2
  L2_46 = Edit1_Origin
  L1_45.text = L2_46
end
function hcb4Change(A0_47)
  if A0_47.state == 1 then
    autoAssemble([[
  Growtopia.exe+19F0E3:
  db 90 90 90 90 90
  ]])
  else
    autoAssemble([[
  Growtopia.exe+19F0E3:
  db e8 c4 85 0d 00
  ]])
  end
end
function hcb3Change(A0_48)
  if A0_48.state == 1 then
    autoAssemble([[
  Growtopia.exe+23ECAC:
  db 74
  Growtopia.exe+2381E7:
  db 74
  ]])
  else
    autoAssemble([[
  Growtopia.exe+23ECAC:
  db 75
  Growtopia.exe+2381E7:
  db 75
  ]])
  end
end
function hcb2Change(A0_49)
  if A0_49.state == 1 then
    autoAssemble([[
  Growtopia.exe+2363A2:
  db E9 F5 00 00 00 90
  Growtopia.exe+23663F:
  db E9 73 01 00 00 90
  ]])
  else
    autoAssemble([[
  Growtopia.exe+2363A2:
  db 0F 85 F4 00 00 00
  Growtopia.exe+23663F:
  db 0F 85 72 01 00 00
  ]])
  end
end
function hcb1Change(A0_50)
  if A0_50.state == 1 then
    UDF1.airplatdown.Enabled = true
  else
    UDF1.airplatdown.Enabled = false
  end
  if A0_50.state == 1 then
    UDF1.hcb14.Enabled = false
    UDF1.hcb14.Checked = false
    UDF1.hcb14.Checked = true
    autoAssemble([[
  Growtopia.exe+2913F5:
  db 90 90 90 90 90 90
  ]])
  else
    autoAssemble([[
  Growtopia.exe+2913F5:
  db 0F 84 83 00 00 00
  ]])
    UDF1.hcb14.Enabled = true
    UDF1.hcb14.Checked = false
  end
end
function airplatdownTimer(A0_51)
  if getForegroundProcess() == getOpenedProcessID() and (isKeyPressed(VK_S) or isKeyPressed(VK_DOWN)) then
    autoAssemble([[
 Growtopia.exe+2913F5:
 db 0F 84 83 00 00 00
 ]])
  else
    autoAssemble([[
 Growtopia.exe+2913F5:
 db 90 90 90 90 90 90
 ]])
  end
end
function hcb14Change(A0_52)
  if A0_52.state == 1 then
    autoAssemble([[
 Growtopia.exe+AA375:
 db 90 90 90 90
 Growtopia.exe+AA37C:
 db 90 90 90 90 90
 Growtopia.exe+235FF8:
 db 90 90 90 90 90
 Growtopia.exe+235FFD:
 db 90 90 90 90 90
 ]])
  else
    autoAssemble([[
 Growtopia.exe+AA375:
 db F3 0F 11 11
 Growtopia.exe+AA37C:
 db F3 0F 11 41 04
 Growtopia.exe+235FF8:
 db F3 0F 11 53 20
 Growtopia.exe+235FFD:
 db F3 0F 11 43 24
 ]])
  end
end
function loop1Timer(A0_53)
  if MainForm.ProcessLabel.Caption == "No Process Selected" then
    UDF1.CElabel1.Caption = "No Process Selected"
  elseif string.find(MainForm.ProcessLabel.Caption, "(paused)") then
    UDF1.CELabel1.Caption = "Connected Process : " .. MainForm.ProcessLabel.Caption
    UDF1.CELabel1.Font.Color = "0x0000FF"
  elseif getForegroundProcess() == getOpenedProcessID() then
    UDF1.CELabel1.Caption = "Connected Process : " .. MainForm.ProcessLabel.Caption .. " (Playing)"
    UDF1.CELabel1.Font.Color = "0x008000"
  else
    UDF1.CELabel1.Caption = "Connected Process : " .. MainForm.ProcessLabel.Caption .. " (Not Focused)"
    UDF1.CELabel1.Font.Color = "0x0080FF"
  end
  if memrec("GTDETECT").Value == "??" then
    gtname = "(Unknown)"
  elseif memrec("Current World(FIX)").Value == "??" and memrec("Current World").Value == "??" then
  elseif memrec("LName").Value == "??" then
    gtname = memrec("Name").Value
  else
    gtname = memrec("LName").Value
  end
  UDF1.MenuItem5.Caption = string.format("%s : %s", "Nickname", gtname)
end
function onOpenProcess()
  local L0_54, L1_55
end
function cmdConsole(A0_56)
  if string.find(A0_56, consoleprefix .. "help") == 1 then
    Console.CSMemo1.Lines.Add(string.format("%s%s          Connect processes.", consoleprefix, cmd_openprocess))
    Console.CSMemo1.Lines.Add(string.format("%s%s          Change your Growtopia nickname.", consoleprefix, cmd_name))
    Console.CSMemo1.Lines.Add(string.format("%s%s          Clears console logs.", consoleprefix, cmd_clear))
    Console.CSMemo1.Lines.Add(string.format("%s%s          Run the link or program.", consoleprefix, cmd_run))
    Console.CSMemo1.Lines.Add(string.format("%s%s          Changes the prefix of the command.", consoleprefix, cmd_prefix))
    Console.CSMemo1.Lines.Add(string.format("%s%s          Set the value.", consoleprefix, cmd_set))
    Console.CSMemo1.Lines.Add(string.format("%s%s          Get the value.", consoleprefix, cmd_get))
    Console.CSMemo1.Lines.Add(string.format("%s%s          Enable/Disable Air platform.", consoleprefix, cmd_fly))
  elseif string.find(A0_56, consoleprefix .. cmd_clear) == 1 then
    Console.CSMemo1.Lines.Clear()
  elseif string.find(A0_56, consoleprefix .. cmd_prefix) == 1 then
    if string.find(A0_56, consoleprefix .. cmd_prefix .. " ") == 1 then
      tempmsg = string.sub(A0_56, string.find(A0_56, consoleprefix .. cmd_prefix .. " ") + string.len(consoleprefix .. cmd_prefix .. " "), string.len(A0_56))
      if tempmsg == "" or string.find(tempmsg, " ") or string.find(tempmsg, "#") or string.find(tempmsg, "$$") or string.find(tempmsg, "%%") then
        Console.CSMemo1.Lines.Add(string.format("%s Prefix can not contain \"Space, #, $, %%\"", consolemsg))
        Console.CSMemo1.Lines.Add(string.format("%s If prefix having trouble, enter \"#resetprefix\" to reset the prefix.", consolemsg))
      else
        consoleprefix = tempmsg
        Console.Caption = string.format("HOYUN Tool Console (%shelp)", consoleprefix)
        Console.CSEdit1.TextHint = string.format("%shelp", consoleprefix)
        Console.CSMemo1.Lines.Add(string.format("%s Command prefix changed to \"%s\".", consolemsg, consoleprefix))
      end
    else
      Console.CSMemo1.Lines.Add(string.format("%s %s%s (All characters except \"Space, #, $, %%\")", consolemsg, consoleprefix, cmd_prefix))
    end
  elseif string.find(A0_56, consoleprefix .. cmd_name) == 1 then
    if string.find(A0_56, consoleprefix .. cmd_name .. " ") == 1 then
      tempmsg = string.sub(A0_56, string.find(A0_56, consoleprefix .. cmd_name .. " ") + string.len(consoleprefix .. cmd_name .. " "), string.len(A0_56))
      if tempmsg == "" then
        if memrec("Lname").Value == "??" then
          Console.CSMemo1.Lines.Add(string.format("%s %s%s (Name within 11 characters)", consolemsg, consoleprefix, cmd_name))
        else
          Console.CSMemo1.Lines.Add(string.format("%s %s%s (Name within 18 characters)", consolemsg, consoleprefix, cmd_name))
        end
      else
        if memrec("LName").Value == "??" then
          tempmsg = string.sub(tempmsg, 0, 12)
          autoAssemble("     [[[pointerbase]+B10]+180]+28:\n     db 00 00 00 00 00 00 00 00 00 00 00 00\n     ")
          gtname = tempmsg
          memrec("Name").Value = gtname
        else
          tempmsg = string.sub(tempmsg, 0, 18)
          autoAssemble("     [[[[pointerbase]+B10]+180]+28]+0:\n     db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00\n     ")
          gtname = tempmsg
          memrec("LName").Value = gtname
        end
        Console.CSMemo1.Lines.Add(string.format("%s Growtopia nickname changed to \"%s\".", consolemsg, tempmsg))
      end
    elseif memrec("Lname").Value == "??" then
      Console.CSMemo1.Lines.Add(string.format("%s %s%s (Name within 11 characters)", consolemsg, consoleprefix, cmd_name))
    else
      Console.CSMemo1.Lines.Add(string.format("%s %s%s (Name within 18 characters)", consolemsg, consoleprefix, cmd_name))
    end
  elseif string.find(A0_56, consoleprefix .. cmd_openprocess) == 1 then
    if string.find(A0_56, consoleprefix .. cmd_openprocess .. " ") == 1 then
      tempmsg = string.sub(A0_56, string.find(A0_56, consoleprefix .. cmd_openprocess .. " ") + string.len(consoleprefix .. cmd_openprocess .. " "), string.len(A0_56))
      if tempmsg == "" then
        Console.CSMemo1.Lines.Add(string.format("%s %s%s (Process)", consolemsg, consoleprefix, cmd_openprocess))
      elseif openProcess(tempmsg) then
        UDF1.CElabel1.Caption = "\236\151\176\234\178\176\235\144\156 \237\148\132\235\161\156\236\132\184\236\138\164: " .. MainForm.ProcessLabel.Caption
        Console.CSMemo1.Lines.Add(string.format("%s Process \"%s\" is connected.", consolemsg, MainForm.ProcessLabel.Caption))
      else
        Console.CSMemo1.Lines.Add(string.format("%s Failed to connect process \"%s\".", consolemsg, tempmsg))
      end
    else
      Console.CSMemo1.Lines.Add(string.format("%s %s%s (Process)", consolemsg, consoleprefix, cmd_openprocess))
    end
  elseif string.find(A0_56, consoleprefix .. cmd_run) == 1 then
    if string.find(A0_56, consoleprefix .. cmd_run .. " ") == 1 then
      tempmsg = string.sub(A0_56, string.find(A0_56, consoleprefix .. cmd_run .. " ") + string.len(consoleprefix .. cmd_run .. " "), string.len(A0_56))
      if tempmsg == "" then
        Console.CSMemo1.Lines.Add(string.format("%s %s%s (Link or Program)", consolemsg, consoleprefix, cmd_run))
      else
        shellExecute(tempmsg)
        Console.CSMemo1.Lines.Add(string.format("%s Successfully executed \"%s\".", consolemsg, tempmsg))
      end
    else
      Console.CSMemo1.Lines.Add(string.format("%s %s%s (Link or Program)", consolemsg, consoleprefix, cmd_run))
    end
  elseif string.find(A0_56, consoleprefix .. cmd_set) == 1 then
    if string.find(A0_56, consoleprefix .. cmd_set .. " ") == 1 then
      tempmsg = string.sub(A0_56, string.find(A0_56, consoleprefix .. cmd_set .. " ") + string.len(consoleprefix .. cmd_set .. " "), string.len(A0_56))
      if string.find(tempmsg, " ") then
        tempmsg2 = string.sub(tempmsg, string.find(tempmsg, " ") + 1, string.len(tempmsg))
        tempmsg3 = string.sub(tempmsg, 0, string.find(tempmsg, " ") - 1)
        if type(memrec("(s) " .. tempmsg3)) == "nil" then
          Console.CSMemo1.Lines.Add(string.format("%s \"%s\" does not exist.", consolemsg, tempmsg3))
        else
          if string.find(tempmsg2, "-") then
            tempmsg4 = string.sub(tempmsg2, string.find(tempmsg2, "-") + 1, string.len(tempmsg2))
            if string.find(tempmsg2, "-") == 1 then
              tempmsg2 = memrec("(s) " .. tempmsg3).Value - tonumber(tempmsg4)
            else
              tempmsg5 = string.sub(tempmsg2, 0, string.find(tempmsg2, "-") - 1)
              tempmsg2 = tonumber(tempmsg5) - tonumber(tempmsg4)
            end
          elseif string.find(tempmsg2, "+") then
            tempmsg4 = string.sub(tempmsg2, string.find(tempmsg2, "+") + 1, string.len(tempmsg2))
            if string.find(tempmsg2, "+") == 1 then
              tempmsg2 = memrec("(s) " .. tempmsg3).Value + tonumber(tempmsg4)
            else
              tempmsg5 = string.sub(tempmsg2, 0, string.find(tempmsg2, "+") - 1)
              tempmsg2 = tonumber(tempmsg5) + tonumber(tempmsg4)
            end
          end
          memrec("(s) " .. tempmsg3).Value = tempmsg2
          Console.CSMemo1.Lines.Add(string.format("%s Changed the value of \"%s\" to \"%s\".", consolemsg, tempmsg3, tempmsg2))
        end
      else
        Console.CSMemo1.Lines.Add(string.format("%s %s%s (Name) (Value)", consolemsg, consoleprefix, cmd_set))
      end
    else
      Console.CSMemo1.Lines.Add(string.format("%s %s%s (Name) (Value)", consolemsg, consoleprefix, cmd_set))
    end
  elseif string.find(A0_56, consoleprefix .. cmd_get) == 1 then
    if string.find(A0_56, consoleprefix .. cmd_get .. " ") == 1 then
      tempmsg = string.sub(A0_56, string.find(A0_56, consoleprefix .. cmd_get .. " ") + string.len(consoleprefix .. cmd_get .. " "), string.len(A0_56))
      if type(memrec("(s) " .. tempmsg)) == "nil" then
        Console.CSMemo1.Lines.Add(string.format("%s \"%s\" does not exist.", consolemsg, tempmsg))
      elseif memrec("(s) " .. tempmsg).Value == "??" then
        Console.CSMemo1.Lines.Add(string.format("%s Can not get the value of \"%s\".", consolemsg, tempmsg))
      else
        tempmsg2 = memrec("(s) " .. tempmsg).Value
        Console.CSMemo1.Lines.Add(string.format("%s The value of \"%s\" is \"%s\".", consolemsg, tempmsg, tempmsg2))
      end
    end
  elseif string.find(A0_56, consoleprefix .. cmd_fly) == 1 then
    if UDF1.hcb1.Checked == true then
      UDF1.hcb1.Checked = false
      Console.CSMemo1.Lines.Add(string.format("%s \"%s\" has been deactivated.", consolemsg, UDF1.hcb1.Caption))
    else
      UDF1.hcb1.Checked = true
      Console.CSMemo1.Lines.Add(string.format("%s \"%s\" has been activated.", consolemsg, UDF1.hcb1.Caption))
    end
  else
    Console.CSMemo1.Lines.Add(string.format("%s Unknown command.", consolemsg))
  end
end
function adminConsole(A0_57)
  if string.find(A0_57, "#resetprefix") == 1 then
    consoleprefix = "/"
    Console.Caption = string.format("\237\152\184\236\156\164\237\136\180 \236\189\152\236\134\148 (Console) \"%shelp\"", consoleprefix)
    Console.CSEdit1.TextHint = string.format("%shelp", consoleprefix)
    Console.CSMemo1.Lines.Add(string.format("%s Prefix is reset to \"%s\".", adminconsolemsg, consoleprefix))
  elseif string.find(A0_57, "#prefix") == 1 then
    Console.CSMemo1.Lines.Add(string.format("%s Current prefix is \"%s\".", adminconsolemsg, consoleprefix))
  elseif string.find(A0_57, "#resetlist") == 1 then
    Console.CSEdit1.Items.Clear()
    Console.CSMemo1.Lines.Add(string.format("%s Saved autocomplete list has been reset", adminconsolemsg))
  end
end
function sendConsole(A0_58)
  Console.CSMemo1.Lines.Add((string.format("<%s> %s", gtname, A0_58)))
  if Console.CSCheckbox2.Checked == true then
    Console.CSEdit1.Items.Add(A0_58)
  end
  if string.find(A0_58, "#") == 1 then
    adminConsole(A0_58)
  end
  if string.find(A0_58, consoleprefix) == 1 then
    cmdConsole(A0_58)
  end
end
function CSButtonClick(A0_59)
  message = Console.CSEdit1.Text
  sendConsole(message)
  if Console.CSCheckbox1.Checked == false then
    Console.CSEdit1.Text = ""
  end
end
function MenuItem6Click(A0_60)
  Console.Show()
end
function CSCheckbox2Change(A0_61)
  local L1_62
  L1_62 = A0_61.state
  if L1_62 == 1 then
    L1_62 = Console
    L1_62 = L1_62.CSEdit1
    L1_62.AutoComplete = true
  else
    L1_62 = Console
    L1_62 = L1_62.CSEdit1
    L1_62.AutoComplete = false
  end
end
function colorTrackBar(A0_63)
  R, G, B, A = string.format("%02X", UDF1.hexR.Position), string.format("%02X", UDF1.hexG.Position), string.format("%02X", UDF1.hexB.Position), string.format("%02X", UDF1.hexA.Position)
  colorhex = string.format("%s%s%s", B, G, R)
  UDF1.CEPanel6.Color = string.format("$00%s", colorhex)
  UDF1.CELabel18.Caption = string.format(UDF1.CELabel18.Hint, tonumber(colorhex .. A, 16))
  UDF1.CELabel30.Caption = string.format(UDF1.CELabel30.Hint, tonumber(colorhex .. A, 16))
  if UDF1.CECheckbox2.Checked == true then
    form_background_color = string.format("$00%s", colorhex)
    UDF1.Color = form_background_color
  end
  if UDF1.CECheckbox9.Checked == true then
    player_skin_color = string.format("%s%s", colorhex, A)
    memrec("Player Skin").Value = player_skin_color
  end
  if UDF1.CECheckbox10.Checked == true then
    player_eye_color = string.format("%s%s", colorhex, A)
    memrec("Player Eye Color").Value = player_eye_color
  end
  if UDF1.CECheckbox4.Checked == true then
    player_name_color = string.format("%s%s", colorhex, A)
    memrec("Player Name Color").Value = player_name_color
  end
end
function CECheckbox4Change(A0_64)
  GTDETECT(true)
  if gtdetect == false then
    autoAssemble([[
  Growtopia.exe+2415D9:
  db  73 4a
  ]])
    A0_64.state = 0
  elseif A0_64.state == 1 then
    autoAssemble([[
   Growtopia.exe+2415D9:
   db 90 90
   ]])
    memrec("Player Name Color").Value = player_name_color
  else
    autoAssemble([[
   Growtopia.exe+2415D9:
   db  73 4a
   ]])
  end
end
function CECheckbox9Change(A0_65)
  GTDETECT(true)
  if gtdetect == false then
    memrec("Player Skin").Active = false
    A0_65.state = 0
  elseif A0_65.state == 1 then
    memrec("Player Skin").Active = true
    memrec("Player Skin").Value = player_skin_color
  else
    memrec("Player Skin").Active = false
  end
end
function CECheckbox10Change(A0_66)
  GTDETECT(true)
  if gtdetect == false then
    memrec("Player Eye Color").Active = false
    A0_66.state = 0
  elseif A0_66.state == 1 then
    memrec("Player Eye Color").Active = true
    memrec("Player Eye Color").Value = player_eye_color
  else
    memrec("Player Eye Color").Active = false
  end
end
function CECheckbox2Change(A0_67)
  local L1_68
  L1_68 = A0_67.state
  if L1_68 == 1 then
    L1_68 = UDF1
    L1_68.Color = form_background_color
  else
    L1_68 = UDF1
    L1_68.Color = "$00FFFFFF"
  end
end
function CECheckbox17Change(A0_69)
  local L2_70, L3_71, L4_72, L5_73
  if L2_70 == 1 then
    for L5_73 = 1, #L3_71 do
      forms[L5_73].AlphaBlend = true
    end
  else
    for L5_73 = 1, #L3_71 do
      forms[L5_73].AlphaBlend = false
    end
  end
end
function CETrackBar3Change(A0_74)
  local L1_75
  form_alphablend = L1_75
  L1_75.Caption = string.format("Value: %s", form_alphablend)
  for _FORV_4_ = 1, #forms do
    forms[_FORV_4_].AlphaBlendValue = form_alphablend
  end
end
function CECheckbox18Change(A0_76)
  local L2_77, L3_78, L4_79, L5_80
  if L2_77 == 1 then
    for L5_80 = 1, #L3_78 do
      forms[L5_80].FormStyle = "fsSystemStayOnTop"
    end
  else
    for L5_80 = 1, #L3_78 do
      forms[L5_80].FormStyle = "fsNormal"
    end
  end
end
function CECheckbox19Change(A0_81)
  if A0_81.state == 1 then
    pause()
  else
    unpause()
  end
end
function CEButton3Click(A0_82)
  f = io.open("C:\\Windows\\System32\\drivers\\etc\\hosts", "r")
  UDF1.CEMemo2.Lines.Text = f:read("*all")
  f:close()
end
function CEButton4Click(A0_83)
  UDF1.CEMemo2.Lines.saveToFile("C:\\Windows\\System32\\drivers\\etc\\hosts")
end
function UpdateCMD(A0_84)
  local L1_85
  L1_85 = cmdItems
  L1_85 = L1_85[0]
  L1_85 = L1_85.Caption
  cmd_openprocess = L1_85
  L1_85 = cmdItems
  L1_85 = L1_85[1]
  L1_85 = L1_85.Caption
  cmd_name = L1_85
  L1_85 = cmdItems
  L1_85 = L1_85[2]
  L1_85 = L1_85.Caption
  cmd_clear = L1_85
  L1_85 = cmdItems
  L1_85 = L1_85[3]
  L1_85 = L1_85.Caption
  cmd_run = L1_85
  L1_85 = cmdItems
  L1_85 = L1_85[4]
  L1_85 = L1_85.Caption
  cmd_prefix = L1_85
  L1_85 = cmdItems
  L1_85 = L1_85[5]
  L1_85 = L1_85.Caption
  cmd_set = L1_85
  L1_85 = cmdItems
  L1_85 = L1_85[6]
  L1_85 = L1_85.Caption
  cmd_get = L1_85
  L1_85 = cmdItems
  L1_85 = L1_85[7]
  L1_85 = L1_85.Caption
  cmd_fly = L1_85
end
function createPictureFromURL(A0_86)
  local L1_87, L2_88, L3_89, L4_90
  L1_87 = getInternet
  L1_87 = L1_87()
  L2_88 = L1_87.getURL
  L3_89 = A0_86
  L2_88 = L2_88(L3_89)
  L3_89 = L1_87.destroy
  L3_89()
  L3_89 = createPicture
  L3_89 = L3_89()
  L4_90 = createStringStream
  L4_90 = L4_90(L2_88)
  L3_89.loadFromStream(L4_90)
  return L3_89
end
function WVButton1Click(A0_91)
  WorldView.Caption = string.format("HOYUN Tool World Viewer (%s)", WorldView.WVEdit1.Text)
  WorldView.WVEdit2.Text = WorldView.WVEdit1.Text
  url = string.format("https://s3.amazonaws.com/world.growtopiagame.com/%s.png", WorldView.WVEdit2.Text)
  WorldView.WVImage1.setPicture(WorldView.WVError.Picture)
  LinxPic = createPictureFromURL(url)
  picture = LinxPic
  WorldView.WVImage1.setPicture(picture)
  WorldView.WVImage2.setPicture(picture)
  WorldView.WVImage3.setPicture(picture)
end
function MenuItem7Click(A0_92)
  WorldView.Show()
end
function playerposTimer(A0_93)
  local L1_94, L2_95
  L1_94, L2_95 = nil, nil
  GTDETECT(false)
  if gtdetect ~= true or memrec("(s) xpos").Value == "??" then
  else
    WVxpos = tonumber(memrec("X Position").Value)
    WVypos = tonumber(memrec("Y Position").Value)
    L1_94 = math.floor(WVxpos / 32 + 1)
    L2_95 = math.floor(WVypos / 32 + 1)
    WorldView.WVPlayer.Left = WVxpos / 4
    WorldView.WVPlayer.Top = WVypos / 4 + 22
    WVposleft = WorldView.WVPlayer.Left
    WVpostop = WorldView.WVPlayer.Top
    WorldView.WVmaxup.Left = WVposleft - 80
    WorldView.WVmaxdown.Left = WVposleft - 80
    WorldView.WVmaxleft.Left = WVposleft - 80
    WorldView.WVmaxright.Left = WVposleft + 88 - 1
    WorldView.WVmaxup.Top = WVpostop - 80
    WorldView.WVmaxdown.Top = WVpostop + 88 - 1
    WorldView.WVmaxleft.Top = WVpostop - 80
    WorldView.WVmaxright.Top = WVpostop - 80
    WorldView.WVPanel3.Caption = string.format("Bedrock (Position %s:%s, Tile %s:%s)", WVxpos, WVypos, L1_94, L2_95)
    if memrec("die").Value == "2" then
      WorldView.WVPlayer2.Color = clRed
      WorldView.WVmaxup.Color = clRed
      WorldView.WVmaxdown.Color = clRed
      WorldView.WVmaxleft.Color = clRed
      WorldView.WVmaxright.Color = clRed
    else
      WorldView.WVPlayer2.Color = clLime
      WorldView.WVmaxup.Color = clYellow
      WorldView.WVmaxdown.Color = clYellow
      WorldView.WVmaxleft.Color = clYellow
      WorldView.WVmaxright.Color = clYellow
    end
    if memrec("viewing").Value == "1" then
      WorldView.WVPlayer3.Left = 0
    else
      WorldView.WVPlayer3.Left = 1
    end
  end
end
function WVCheckbox1Change(A0_96)
  local L1_97, L2_98
  L1_97 = A0_96.state
  if L1_97 == 1 then
    L1_97 = WorldView
    L1_97 = L1_97.playerpos
    L2_98 = WorldView
    L2_98 = L2_98.WVEdit3
    L2_98 = L2_98.Text
    L1_97.Interval = L2_98
    L1_97 = WorldView
    L1_97 = L1_97.WVPlayer
    L1_97.Visible = true
    L1_97 = WorldView
    L1_97 = L1_97.WVmaxup
    L1_97.Visible = true
    L1_97 = WorldView
    L1_97 = L1_97.WVmaxdown
    L1_97.Visible = true
    L1_97 = WorldView
    L1_97 = L1_97.WVmaxleft
    L1_97.Visible = true
    L1_97 = WorldView
    L1_97 = L1_97.WVmaxright
    L1_97.Visible = true
    L1_97 = WorldView
    L1_97 = L1_97.playerpos
    L1_97.Enabled = true
  else
    L1_97 = WorldView
    L1_97 = L1_97.WVPlayer
    L1_97.Visible = false
    L1_97 = WorldView
    L1_97 = L1_97.WVmaxup
    L1_97.Visible = false
    L1_97 = WorldView
    L1_97 = L1_97.WVmaxdown
    L1_97.Visible = false
    L1_97 = WorldView
    L1_97 = L1_97.WVmaxleft
    L1_97.Visible = false
    L1_97 = WorldView
    L1_97 = L1_97.WVmaxright
    L1_97.Visible = false
    L1_97 = WorldView
    L1_97 = L1_97.playerpos
    L1_97.Enabled = false
  end
end
function WVTrackBar1Change(A0_99)
  local L1_100, L2_101
  L1_100 = WorldView
  L1_100 = L1_100.WVTrackBar1
  L2_101 = WorldView
  L2_101 = L2_101.WVEdit3
  L2_101 = L2_101.Text
  L1_100.Position = L2_101
  L1_100 = WorldView
  L1_100 = L1_100.WVEdit3
  L2_101 = WorldView
  L2_101 = L2_101.WVTrackBar1
  L2_101 = L2_101.Position
  L1_100.Text = L2_101
  L1_100 = WorldView
  L1_100 = L1_100.playerpos
  L2_101 = WorldView
  L2_101 = L2_101.WVEdit3
  L2_101 = L2_101.Text
  L1_100.Interval = L2_101
end
function autoworldviewTimer(A0_102)
  GTDETECT(false)
  if gtdetect ~= true or oldworld == currentworld then
  else
    WorldView.WVEdit1.Text = currentworld
    oldworld = currentworld
    WVButton1Click()
  end
end
function WVCheckbox2Change(A0_103)
  local L1_104
  L1_104 = A0_103.state
  if L1_104 == 1 then
    L1_104 = WorldView
    L1_104 = L1_104.WVEdit1
    L1_104.Enabled = false
    L1_104 = WorldView
    L1_104 = L1_104.WVButton1
    L1_104.Enabled = false
    L1_104 = WorldView
    L1_104 = L1_104.autoworldview
    L1_104.Enabled = true
  else
    L1_104 = WorldView
    L1_104 = L1_104.WVEdit1
    L1_104.Enabled = true
    L1_104 = WorldView
    L1_104 = L1_104.WVButton1
    L1_104.Enabled = true
    L1_104 = WorldView
    L1_104 = L1_104.autoworldview
    L1_104.Enabled = false
  end
end
function loopWVTimer(A0_105)
  GTDETECT(false)
  if gtdetect == false then
    WorldView.WVLabel3.Caption = string.format("Current World: %s", "(Unknown)")
  else
    if memrec("Current World(FIX)").Value == "??" then
      currentworld = memrec("Current World").Value
    else
      currentworld = memrec("Current World(FIX)").Value
    end
    WorldView.WVLabel3.Caption = string.format("Current World: %s", currentworld)
  end
end
function mousetpTimer(A0_106)
  if WorldView.WVCheckbox3.Checked == true then
    GTDETECT(false)
    if gtdetect == true then
      memrec("X Position").Value = tpx * 4
      memrec("Y Position").Value = tpy * 4
    end
  end
end
function WVImage1MouseDown(A0_107, A1_108, A2_109, A3_110)
  local L4_111
  L4_111 = WorldView
  L4_111 = L4_111.WVCheckbox3
  L4_111 = L4_111.Checked
  if L4_111 == true then
    mousetp = true
    L4_111 = WorldView
    L4_111 = L4_111.mousetp
    L4_111.Enabled = true
    tpx = A2_109
    tpy = A3_110
  end
end
function WVImage1MouseUp(A0_112, A1_113, A2_114, A3_115)
  local L4_116
  L4_116 = WorldView
  L4_116 = L4_116.WVCheckbox3
  L4_116 = L4_116.Checked
  if L4_116 == true then
    mousetp = false
    L4_116 = WorldView
    L4_116 = L4_116.mousetp
    L4_116.Enabled = false
  end
end
function WVImage1MouseMove(A0_117, A1_118, A2_119)
  local L3_120
  L3_120 = WorldView
  L3_120 = L3_120.WVCheckbox3
  L3_120 = L3_120.Checked
  if L3_120 == true then
    tpx = A1_118
    tpy = A2_119
  end
end
function CEButton5Click(A0_121)
  local L1_122
  mac = L1_122
  if L1_122 == true then
    L1_122[1] = 2
  end
  for _FORV_4_ = 1, 6 do
    mac[_FORV_4_] = string.format("%02X", mac[_FORV_4_])
  end
  L1_122.Text = string.upper(mac[1] .. mac[2] .. mac[3] .. mac[4] .. mac[5] .. mac[6])
end
function CEButton6Click(A0_123)
  UDF1.TabSheet9.Enabled = false
  if UDF1.CECheckbox22.Checked == true then
    CEButton5Click()
  end
  MAC_ADDRESS = string.upper(UDF1.CEEdit6.Text)
  FIRST_NUMBER = UDF1.CEEdit4.Text
  SECOND_NUMBER = UDF1.CEEdit5.Text
  NETWORKADDRESS_FOLDER_NAME = UDF1.CEEdit8.Text
  NETWORK_ADAPTER = UDF1.CEEdit7.Text
  if UDF1.CECheckbox21.Checked == true then
    Console.CSMemo1.Lines.Add(string.format("%s Removing \"save.dat\" files in \"%s\"", unbanmsg, os.getenv("localappdata") .. "\\Growtopia"))
    shellExecute("cmd", "/c \"taskkill /IM Growtopia.exe & del /s /q /f \"%localappdata%\\Growtopia\\*save*.dat\"\"", nil, false)
  end
  if UDF1.CECheckbox1.Checked == true then
    shellExecute("cmd", "/c \"ipconfig /release " .. NETWORK_ADAPTER .. "\"", nil, false)
  end
  Console.CSMemo1.Lines.Add(string.format("%s Removing user data reg \"%s\"", unbanmsg, "HKEY_CURRENT_USER\\" .. FIRST_NUMBER))
  shellExecute("cmd", "/c \"REG DELETE HKEY_CURRENT_USER\\" .. FIRST_NUMBER .. " /f\"", nil, false)
  Console.CSMemo1.Lines.Add(string.format("%s Removing reg \"%s\"", unbanmsg, "HKEY_CURRENT_USER\\Software\\Microsoft\\" .. SECOND_NUMBER))
  shellExecute("cmd", "/c \"REG DELETE HKEY_CURRENT_USER\\Software\\Microsoft\\" .. SECOND_NUMBER .. " /f\"", nil, false)
  Console.CSMemo1.Lines.Add(string.format("%s Removing regedit \"MachineGuid\"", unbanmsg))
  shellExecute("cmd", "/c \"REG DELETE HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Cryptography /v MachineGuid /f\"", nil, false)
  if UDF1.CECheckbox1.Checked == true then
    Console.CSMemo1.Lines.Add(string.format("%s Updating MAC for: %s", unbanmsg, NETWORK_ADAPTER))
    Console.CSMemo1.Lines.Add(string.format("%s New MAC Address: %s", unbanmsg, MAC_ADDRESS))
    shellExecute("cmd", "/c \"REG ADD HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\Class\\{4d36e972-e325-11ce-bfc1-08002be10318}\\" .. NETWORKADDRESS_FOLDER_NAME .. "  /v \"NetworkAddress\" /t REG_SZ /d \"" .. MAC_ADDRESS .. "\" /f\"", nil, false)
    Console.CSMemo1.Lines.Add(string.format("%s Restarting Adapter [%s]", unbanmsg, NETWORK_ADAPTER))
    shellExecute("cmd", "/c \"netsh interface set interface \"" .. NETWORK_ADAPTER .. "\" DISABLED & netsh interface set interface \"" .. NETWORK_ADAPTER .. "\" ENABLED & ipconfig /renew " .. NETWORK_ADAPTER .. "\"", nil, false)
  end
  Console.CSMemo1.Lines.Add(string.format("%s Done!", unbanmsg))
  UDF1.TabSheet9.Enabled = true
end
function CECheckbox22Change(A0_124)
  local L1_125
  L1_125 = A0_124.state
  if L1_125 == 1 then
    L1_125 = UDF1
    L1_125 = L1_125.CEEdit6
    L1_125.Enabled = false
    L1_125 = UDF1
    L1_125 = L1_125.CEButton5
    L1_125.Enabled = false
  else
    L1_125 = UDF1
    L1_125 = L1_125.CEEdit6
    L1_125.Enabled = true
    L1_125 = UDF1
    L1_125 = L1_125.CEButton5
    L1_125.Enabled = true
  end
end
function WVTrackBar2Change(A0_126)
  local L1_127
  L1_127 = WorldView
  L1_127 = L1_127.WVLabel4
  L1_127.Caption = string.format("Speed: %s", A0_126.position)
end
function WVCheckbox4Change(A0_128)
  if A0_128.state == 1 then
    WorldView.WVTrackBar2.Enabled = false
    autoAssemble([[
  alloc(mteleport,128,Growtopia.exe+19987A)
  alloc(mtime,4)
  label(m_return)

  mtime:
  dd 0

  mteleport:
  inc [mtime]
  cmp [mtime],]] .. WorldView.WVTrackBar2.Position .. [[

  jb m_return
  mov [mtime],0
  movss xmm0,[r13]
  movss [rax+08],xmm0
  movss xmm1,[r13+04]
  movss [rax+0C],xmm1
  m_return:
  movss xmm0,[rax+08]
  jmp Growtopia.exe+19987F

  Growtopia.exe+19987A:
  jmp mteleport

  Growtopia.exe+18A41A:
  db 83 c0 FF

  Growtopia.exe+2051DD:
  db EB

  Growtopia.exe+20482A:
  db 90 90 90 90 90
  ]])
  else
    WorldView.WVTrackBar2.Enabled = true
    autoAssemble([[
  dealloc(mtime)
  dealloc(mteleport)

  Growtopia.exe+19987A:
  movss xmm0,[rax+08]

  Growtopia.exe+18A41A:
  db 83 c0 02

  Growtopia.exe+2051DD:
  db 74

  Growtopia.exe+20482A:
  db e8 1d 99 00 00
  ]])
  end
end
function hcb5Change(A0_129)
  if A0_129.state == 1 then
    autoAssemble([[
  Growtopia.exe+2A95A3:
  db EB
  ]])
  else
    autoAssemble([[
  Growtopia.exe+2A95A3:
  db 75
  ]])
  end
end
function hcb6Change(A0_130)
  if A0_130.state == 1 then
    autoAssemble([[
  Growtopia.exe+23298F:
  db EB
  ]])
  else
    autoAssemble([[
  Growtopia.exe+23298F:
  db 74
  ]])
  end
end
function hcb7Change(A0_131)
  if A0_131.state == 1 then
    autoAssemble([[
  Growtopia.exe+29187B:
  db 90 90 90 90
  ]])
  else
    autoAssemble([[
  Growtopia.exe+29187B:
  db 0F B6 46 0A
  ]])
  end
end
function hcb8Change(A0_132)
  if A0_132.state == 1 then
    autoAssemble([[
  Growtopia.exe+2AE413:
  db EB
  ]])
  else
    autoAssemble([[
  Growtopia.exe+2AE413:
  db 74
  ]])
  end
end
function hcb9Change(A0_133)
  if A0_133.state == 1 then
    autoAssemble([[
  Growtopia.exe+668FF:
  db 90 90
  ]])
  else
    autoAssemble([[
  Growtopia.exe+668FF:
  db 03 C7
  ]])
  end
end
function hcb10Change(A0_134)
  if A0_134.state == 1 then
    autoAssemble([[
  Growtopia.exe+321C48+1E:
  db 8C 42
  ]])
  else
    autoAssemble([[
  Growtopia.exe+321C48+1E:
  db 80 41
  ]])
  end
end
function hcb11Change(A0_135)
  if A0_135.state == 1 then
    autoAssemble([[
  alloc(newmem,2048,"Growtopia.exe"+236002)
  label(returnhere)
  label(originalcode)
  label(exit)

  Growtopia.exe+247CEE:
  db 90 90 90 90 90 90

  Growtopia.exe+247D93:
  db 90 90 90 90 90 90

  Growtopia.exe+AB1A3:
  db 90 90 90 90 90 90

  newmem:
  cmp byte ptr [rdi+00000131],0
  je originalcode
  mov byte ptr [rdi+00000131],0
  jmp exit
  originalcode:
  mov byte ptr [rdi+00000131],1
  exit:
  cmp [rdi+00000131],cl
  jmp returnhere

  "Growtopia.exe"+236002:
  jmp newmem
  nop
  returnhere:
  ]])
  else
    autoAssemble([[
  dealloc(newmem)

  Growtopia.exe+247CEE:
  db 88 91 31 01 00 00

  Growtopia.exe+247D93:
  db 88 88 31 01 00 00

  Growtopia.exe+AB1A3:
  db 88 90 31 01 00 00

  "Growtopia.exe"+236002:
  cmp [rdi+00000131],cl
  ]])
  end
end
function hcb12Change(A0_136)
  if A0_136.state == 1 then
    autoAssemble([[
  Growtopia.exe+1AEED0:
  db 90 90
  ]])
  else
    autoAssemble([[
  Growtopia.exe+1AEED0:
  db 75 50
  ]])
  end
end
function hcb13Change(A0_137)
  if A0_137.state == 1 then
    autoAssemble([[
  Growtopia.exe+23DC86:
  db 90 90
  ]])
  else
    autoAssemble([[
  Growtopia.exe+23DC86:
  db 74 29
  ]])
  end
end
function addItems(A0_138, A1_139)
  if UDF1.CECheckbox26.Checked == true then
    if A0_138 % 2 == 0 then
      if UDF1.CECheckbox25.Checked == true then
        mystr2 = string.upper(A1_139)
        if string.find(mystr2, string.upper(UDF1.CEEdit9.Text)) then
          UDF1.CEMemo3.Lines.Add(string.format("%s: %s", A0_138, A1_139))
          itemcount = itemcount + 1
        end
      else
        UDF1.CEMemo3.Lines.Add(string.format("%s: %s", A0_138, A1_139))
        itemcount = itemcount + 1
      end
    end
  elseif UDF1.CECheckbox25.Checked == true then
    mystr2 = string.upper(A1_139)
    if string.find(mystr2, string.upper(UDF1.CEEdit9.Text)) then
      UDF1.CEMemo3.Lines.Add(string.format("%s: %s", A0_138, A1_139))
      itemcount = itemcount + 1
    end
  else
    UDF1.CEMemo3.Lines.Add(string.format("%s: %s", A0_138, A1_139))
    itemcount = itemcount + 1
  end
end
function ItemDumper()
  local L0_140, L1_141, L2_142, L3_143, L4_144, L5_145, L6_146, L7_147
  itemcount = 0
  L0_140.Enabled = false
  L0_140.Caption = "Dumping..."
  itemmin = L0_140
  itemmax = L0_140
  baseAddr = 0
  offset = 0
  reasults = L0_140
  reasults2 = L0_140
  if L0_140 ~= nil then
  elseif L0_140 == nil then
    L0_140(L1_141)
    L0_140.Enabled = true
    L0_140.Caption = "Dump Now"
    return
  end
  if L0_140 == true then
    L0_140()
  end
  for L3_143 = 1, L1_141 - 1 do
    for L7_147 = 1, L5_145 - 1 do
      if tonumber(reasults[L3_143], 16) < tonumber(reasults2[L7_147], 16) then
        baseAddr = tonumber(reasults[L3_143], 16)
        offset = tonumber(reasults2[L7_147], 16) - tonumber(reasults[L3_143], 16)
      end
    end
  end
  for L3_143 = itemmin, itemmax do
    isValid = true
    mystr = L4_144
    if L4_144 ~= nil then
      abc = 0
      for L7_147 in L4_144(L5_145, L6_146) do
        if string.byte(L7_147) < 32 or string.byte(L7_147) > 127 or abc == 0 and string.byte(L7_147) == 32 then
          isValid = false
        end
        abc = abc + 1
      end
      if L4_144 == true then
        if L4_144 ~= "" then
          L4_144(L5_145, L6_146)
        end
      else
        L7_147 = offset
        L7_147 = L7_147 * L3_143
        L7_147 = L5_145(L6_146)
        mystr = L4_144
        isValid = true
        if L4_144 ~= nil then
          for L7_147 in L4_144(L5_145, L6_146) do
            if string.byte(L7_147) < 30 or string.byte(L7_147) > 127 then
              isValid = false
            end
          end
        end
        if L4_144 == true then
          L4_144(L5_145, L6_146)
          else
            break
          end
        end
      end
  end
  L3_143 = itemcount
  L7_147 = L4_144(L5_145)
  L7_147 = L1_141(L2_142, L3_143, L4_144, L5_145, L6_146, L7_147, L4_144(L5_145))
  L0_140(L1_141, L2_142, L3_143, L4_144, L5_145, L6_146, L7_147, L1_141(L2_142, L3_143, L4_144, L5_145, L6_146, L7_147, L4_144(L5_145)))
  L0_140.Enabled = true
  L0_140.Caption = "Dump Now"
end
function CEButton7Click(A0_148)
  createThread(ItemDumper)
end
function CETrackBar4Change(A0_149)
  local L1_150
  L1_150 = UDF1
  L1_150 = L1_150.CETrackBar5
  L1_150.Min = A0_149.Position
  L1_150 = UDF1
  L1_150 = L1_150.CELabel12
  L1_150.Caption = string.format("Min: %s", A0_149.Position)
end
function CETrackBar5Change(A0_151)
  local L1_152
  L1_152 = UDF1
  L1_152 = L1_152.CETrackBar4
  L1_152.Max = A0_151.Position
  L1_152 = UDF1
  L1_152 = L1_152.CELabel13
  L1_152.Caption = string.format("Max: %s", A0_151.Position)
end
function CECheckbox25Change(A0_153)
  local L1_154
  L1_154 = A0_153.state
  if L1_154 == 1 then
    L1_154 = UDF1
    L1_154 = L1_154.CEPanel9
    L1_154.Visible = true
  else
    L1_154 = UDF1
    L1_154 = L1_154.CEPanel9
    L1_154.Visible = false
  end
end
function CETrackBar6Change(A0_155)
  local L1_156
  L1_156 = UDF1
  L1_156 = L1_156.CELabel14
  L1_156.Caption = string.format("Add speed: %s", A0_155.Position)
end
function CEButton8MouseDown(A0_157, A1_158, A2_159, A3_160)
  memrec("viewing").Value = 1
  memrec("Movement").Value = memrec("Movement").Value - 288 * UDF1.CETrackBar6.Position
  memrec("Movement").Active = true
end
function CEButton8MouseUp(A0_161, A1_162, A2_163, A3_164)
  memrec("Movement").Active = false
end
function CEButton11MouseDown(A0_165, A1_166, A2_167, A3_168)
  memrec("viewing").Value = 0
  memrec("Movement").Value = memrec("Movement").Value + 288 * UDF1.CETrackBar6.Position
  memrec("Movement").Active = true
end
function CEButton11MouseUp(A0_169, A1_170, A2_171, A3_172)
  memrec("Movement").Active = false
end
function CEButton9MouseDown(A0_173, A1_174, A2_175, A3_176)
  memrec("High Jump").Value = 1
  memrec("Jump Event").Value = 1
end
function CEButton9MouseUp(A0_177, A1_178, A2_179, A3_180)
  memrec("High Jump").Value = 0
  memrec("Jump Event").Value = 0
end
function CEButton10MouseDown(A0_181, A1_182, A2_183, A3_184)
  memrec("Down").Value = 1
end
function CEButton10MouseUp(A0_185, A1_186, A2_187, A3_188)
  memrec("Down").Value = 0
end
function CEButton20MouseDown(A0_189, A1_190, A2_191, A3_192)
  CEButton9MouseDown()
  CEButton8MouseDown()
end
function CEButton20MouseUp(A0_193, A1_194, A2_195, A3_196)
  CEButton9MouseUp()
  CEButton8MouseUp()
end
function CEButton21MouseDown(A0_197, A1_198, A2_199, A3_200)
  CEButton9MouseDown()
  CEButton11MouseDown()
end
function CEButton21MouseUp(A0_201, A1_202, A2_203, A3_204)
  CEButton9MouseUp()
  CEButton11MouseUp()
end
function CECheckbox27Click(A0_205)
  if A0_205.state == 1 then
    UDF1.betterWatermark.Enabled = true
    autoAssemble([[
  Growtopia.exe+71A0:
  db 90 90 90 90 90 90
  ]])
  else
    UDF1.betterWatermark.Enabled = false
    memrec("Watermark").Value = "fps: %d - M: %.2f, T: %.2f A: %.2f F: %.2f"
    autoAssemble([[
  Growtopia.exe+71A0:
  db 0F 84 4E 01 00 00
  ]])
  end
end
function CEButton12Click(A0_206)
  for _FORV_4_ = 1, 2 do
    autoAssemble(growtopiahost[_FORV_4_] .. [[
:
  db 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  ]])
  end
  if _FOR_.CEEdit10.Text == "" then
    autoAssemble(growtopiahost[1] .. [[
:
  db ]] .. tohexbytes("growtopia1.com"))
  else
    autoAssemble(growtopiahost[1] .. [[
:
  db ]] .. tohexbytes(UDF1.CEEdit10.Text))
  end
  if UDF1.CEEdit11.Text == "" then
    autoAssemble(growtopiahost[2] .. [[
:
  db ]] .. tohexbytes("growtopia2.com"))
  else
    autoAssemble(growtopiahost[2] .. [[
:
  db ]] .. tohexbytes(UDF1.CEEdit11.Text))
  end
end
function CEButton13Click(A0_207)
  writeInteger("[[pointerbase]+18]+34", UDF1.CEEdit12.Text)
  writeInteger("[[pointerbase]+18]+38", UDF1.CEEdit13.Text)
end
function CEImage2MouseLeave(A0_208)
  local L1_209
  L1_209 = UDF1
  L1_209 = L1_209.CEPanel10
  L1_209.Visible = false
end
function RGBToHex(A0_210, A1_211, A2_212)
  if A0_210 < 0 or A0_210 > 255 or A1_211 < 0 or A1_211 > 255 or A2_212 < 0 or A2_212 > 255 then
    return nil
  end
  return string.format("0x%.2X%.2X%.2X", A0_210, A1_211, A2_212)
end
function CEPanel6Click(A0_213)
  local L1_214, L2_215, L3_216, L4_217
  L1_214 = getMainForm
  L1_214 = L1_214()
  L1_214 = L1_214.findComponentByName
  L2_215 = "ColorDialog1"
  L1_214 = L1_214(L2_215)
  L2_215 = UDF1
  L2_215 = L2_215.Left
  L1_214.Left = L2_215
  L2_215 = UDF1
  L2_215 = L2_215.Top
  L1_214.Top = L2_215
  L2_215 = UDF1
  L2_215 = L2_215.CEPanel6
  L2_215 = L2_215.Color
  L1_214.Color = L2_215
  L2_215 = L1_214.Execute
  L2_215()
  L2_215 = L1_214.Execute
  if L2_215 then
    L2_215 = UDF1
    L2_215 = L2_215.CEPanel6
    L3_216 = L1_214.Color
    L2_215.Color = L3_216
    L2_215 = UDF1
    L2_215 = L2_215.CELabel18
    L3_216 = string
    L3_216 = L3_216.format
    L4_217 = UDF1
    L4_217 = L4_217.CELabel18
    L4_217 = L4_217.Hint
    L3_216 = L3_216(L4_217, string.format("%06X", L1_214.Color), A)
    L2_215.Caption = L3_216
    L2_215 = UDF1
    L2_215 = L2_215.hexR
    L3_216 = tonumber
    L4_217 = string
    L4_217 = L4_217.sub
    L4_217 = L4_217(string.format("%06X", L1_214.Color), 5, 6)
    L3_216 = L3_216(L4_217, 16)
    L2_215.Position = L3_216
    L2_215 = UDF1
    L2_215 = L2_215.hexG
    L3_216 = tonumber
    L4_217 = string
    L4_217 = L4_217.sub
    L4_217 = L4_217(string.format("%06X", L1_214.Color), 3, 4)
    L3_216 = L3_216(L4_217, 16)
    L2_215.Position = L3_216
    L2_215 = UDF1
    L2_215 = L2_215.hexB
    L3_216 = tonumber
    L4_217 = string
    L4_217 = L4_217.sub
    L4_217 = L4_217(string.format("%06X", L1_214.Color), 1, 2)
    L3_216 = L3_216(L4_217, 16)
    L2_215.Position = L3_216
    L2_215 = L1_214.Color
    c = L2_215
    L2_215 = c
    L2_215 = L2_215 & 255
    L3_216 = c
    L3_216 = L3_216 >> 8
    L3_216 = L3_216 & 255
    L4_217 = c
    L4_217 = L4_217 >> 16
    L4_217 = L4_217 & 255
    rgbstr = tostring(L2_215) .. "," .. tostring(L3_216) .. "," .. tostring(L4_217)
    rgbhex = tostring(RGBToHex(L2_215, L3_216, L4_217))
  end
end
function colorpickerTimer(A0_218)
  local L1_219
  L1_219 = UDF1
  L1_219 = L1_219.CEPanel6
  L1_219.Color = UDF1.CEImage2.Canvas.GetPixel(im1x, im1y)
  L1_219 = UDF1
  L1_219 = L1_219.CEPanel12
  L1_219.Color = UDF1.CEImage2.Canvas.GetPixel(im1x, im1y)
  L1_219 = im1x
  if L1_219 <= 120 then
    L1_219 = UDF1
    L1_219 = L1_219.CEPanel11
    L1_219.Left = im1x + 10
  else
    L1_219 = UDF1
    L1_219 = L1_219.CEPanel11
    L1_219.Left = im1x - 110
  end
  L1_219 = im1y
  if L1_219 <= 70 then
    L1_219 = UDF1
    L1_219 = L1_219.CEPanel11
    L1_219.Top = im1y + 10
  else
    L1_219 = UDF1
    L1_219 = L1_219.CEPanel11
    L1_219.Top = im1y - 60
  end
  L1_219 = UDF1
  L1_219 = L1_219.CELabel18
  L1_219.Caption = string.format("RGBA: %s%s", string.format("%06X", UDF1.CEPanel6.Color), A)
  L1_219 = UDF1
  L1_219 = L1_219.hexR
  L1_219.Position = tonumber(string.sub(string.format("%06X", UDF1.CEPanel6.Color), 5, 6), 16)
  L1_219 = UDF1
  L1_219 = L1_219.hexG
  L1_219.Position = tonumber(string.sub(string.format("%06X", UDF1.CEPanel6.Color), 3, 4), 16)
  L1_219 = UDF1
  L1_219 = L1_219.hexB
  L1_219.Position = tonumber(string.sub(string.format("%06X", UDF1.CEPanel6.Color), 1, 2), 16)
end
function CEImage2MouseDown(A0_220, A1_221, A2_222, A3_223)
  local L4_224
  L4_224 = UDF1
  L4_224 = L4_224.colorpicker
  L4_224.Enabled = true
  L4_224 = UDF1
  L4_224 = L4_224.CEPanel11
  L4_224.Visible = true
end
function CEImage2MouseUp(A0_225, A1_226, A2_227, A3_228)
  local L4_229
  L4_229 = UDF1
  L4_229 = L4_229.colorpicker
  L4_229.Enabled = false
  L4_229 = UDF1
  L4_229 = L4_229.CEPanel11
  L4_229.Visible = false
end
function CEImage2MouseMove(A0_230, A1_231, A2_232)
  local L3_233
  if A1_231 > 0 then
    L3_233 = A0_230.Width
    if A1_231 < L3_233 then
      im1x = A1_231
    end
  else
    L3_233 = A0_230.Width
    if A1_231 > L3_233 then
      L3_233 = A0_230.Width
      L3_233 = L3_233 - 1
      im1x = L3_233
    end
    if A1_231 < 0 then
      im1x = 1
    end
  end
  if A2_232 > 0 then
    L3_233 = A0_230.Height
    if A2_232 < L3_233 then
      im1y = A2_232
    end
  else
    L3_233 = A0_230.Height
    if A2_232 > L3_233 then
      L3_233 = A0_230.Height
      L3_233 = L3_233 - 1
      im1y = L3_233
    end
    if A2_232 < 0 then
      im1y = 1
    end
  end
end
function getcurrentposTimer(A0_234)
  currentX, currentY = getMousePos()
end
function CECheckbox30Change(A0_235)
  local L1_236
  L1_236 = A0_235.state
  if L1_236 == 1 then
    L1_236 = UDF1
    L1_236 = L1_236.rainbow
    L1_236.Enabled = true
  else
    L1_236 = UDF1
    L1_236 = L1_236.rainbow
    L1_236.Enabled = false
  end
end
function rainbowTimer(A0_237)
  if rainbow < 256 and rainbow > -1 then
    rainbow = rainbow + 5
    if rainbow < 16 then
      rainbowgreenhex = "0" .. string.format("%X", rainbow)
    else
      rainbowgreenhex = string.format("%X", rainbow)
      if rainbow == 255 then
        rainbow = 755
      end
    end
  end
  if rainbow > 499 and rainbow < 756 then
    rainbow = rainbow - 5
    if rainbow < 516 then
      rainbowredhex = "0" .. string.format("%X", rainbow - 500)
      if rainbow == 500 then
        rainbow = 1000
      end
    else
      rainbowredhex = string.format("%X", rainbow - 500)
    end
  end
  if rainbow > 999 and rainbow < 1256 then
    rainbow = rainbow + 5
    if rainbow < 1016 then
      rainbowbluehex = "0" .. string.format("%X", rainbow - 1000)
    else
      rainbowbluehex = string.format("%X", rainbow - 1000)
      if rainbow == 1255 then
        rainbow = 2255
      end
    end
  end
  if rainbow > 1999 and rainbow < 2256 then
    rainbow = rainbow - 5
    if rainbow < 2016 then
      rainbowgreenhex = "0" .. string.format("%X", rainbow - 2000)
      if rainbow == 2000 then
        rainbow = 3000
      end
    else
      rainbowgreenhex = string.format("%X", rainbow - 2000)
    end
  end
  if rainbow > 2999 and rainbow < 3256 then
    rainbow = rainbow + 5
    if rainbow < 3016 then
      rainbowredhex = "0" .. string.format("%X", rainbow - 3000)
    else
      rainbowredhex = string.format("%X", rainbow - 3000)
      if rainbow == 3255 then
        rainbow = 4255
      end
    end
  end
  if rainbow > 3999 and rainbow < 4256 then
    rainbow = rainbow - 5
    if rainbow < 4016 then
      rainbowbluehex = "0" .. string.format("%X", rainbow - 4000)
      if rainbow == 4000 then
        rainbow = 0
      end
    else
      rainbowbluehex = string.format("%X", rainbow - 4000)
    end
  end
  rainbowcolor = string.format("%s%s%s", rainbowbluehex, rainbowgreenhex, rainbowredhex)
  if UDF1.CECheckbox30.Checked == true then
    UDF1.CEPanel6.Color = string.format("$00%s", rainbowcolor)
    UDF1.CELabel18.Caption = string.format("RGBA: %s%s", string.format("%06X", UDF1.CEPanel6.Color), A)
    UDF1.hexR.Position = tonumber(string.sub(string.format("%06X", UDF1.CEPanel6.Color), 5, 6), 16)
    UDF1.hexG.Position = tonumber(string.sub(string.format("%06X", UDF1.CEPanel6.Color), 3, 4), 16)
    UDF1.hexB.Position = tonumber(string.sub(string.format("%06X", UDF1.CEPanel6.Color), 1, 2), 16)
  end
end
function comma_value(A0_238)
  local L1_239, L2_240, L3_241
  L1_239 = string
  L1_239 = L1_239.match
  L2_240 = A0_238
  L3_241 = "^([^%d]*%d)(%d*)(.-)$"
  L3_241 = L1_239(L2_240, L3_241)
  return L1_239 .. L2_240:reverse():gsub("(%d%d%d)", "%1,"):reverse() .. L3_241
end
function HideProcessList(A0_242, A1_243)
  if A1_243 == 27 then
    UDF2.Hide()
  end
  return A1_243
end
function CEButton23Click(A0_244)
  local L1_245, L2_246, L3_247, L4_248, L5_249, L6_250
  L1_245 = {}
  function L2_246(A0_251, A1_252)
    return A0_251 + A1_252
  end
  L1_245["+"] = L2_246
  function L2_246(A0_253, A1_254)
    return A0_253 - A1_254
  end
  L1_245["-"] = L2_246
  function L2_246(A0_255, A1_256)
    return A0_255 * A1_256
  end
  L1_245["*"] = L2_246
  function L2_246(A0_257, A1_258)
    return A0_257 / A1_258
  end
  L1_245["/"] = L2_246
  function L2_246(A0_259, A1_260)
    return A0_259 % A1_260
  end
  L1_245["%"] = L2_246
  L2_246 = {}
  L2_246["Mod noclip (Untrusted)"] = 1
  L2_246["Double jump"] = 2
  L2_246["The one ring effect"] = 4
  L2_246["No face"] = 16
  L2_246["Devil horn"] = 64
  L2_246["Golden halo"] = 128
  L2_246.Freeze = 2048
  L2_246["Cursed effect"] = 4096
  L2_246["Duct taped"] = 8192
  L2_246.Coffee = 16384
  L2_246["Gold sparkle"] = 32768
  L2_246.Zombie = 65536
  L2_246["Fire particle"] = 131072
  L2_246["Shadow potion"] = 262144
  L2_246["Geiger radiation"] = 524288
  L2_246.Spotlight = 1048576
  L2_246.Egged = 2097152
  L2_246["Pineapple flag"] = 4194304
  L2_246["Pineapple orbit"] = 8388608
  L2_246["Super supporter name"] = 16777216
  L2_246["Pineapple orbit 2"] = 33554432
  L2_246["Bubble ring"] = 67108864
  L2_246.Sweat = 134217728
  L2_246["Neon face effect"] = 268435456
  L2_246["Neon face effect 2"] = 536870912
  L2_246["Neon face effect 3"] = 1073741824
  L2_246["Neon face effect 4"] = 2147483648
  L3_247, L4_248, L5_249 = nil, nil, nil
  L6_250 = GTDETECT
  L6_250(true)
  L6_250 = gtdetect
  if L6_250 == true then
    L6_250 = A0_244.Caption
    if L6_250 ~= "+" then
      L6_250 = UDF1
      L6_250 = L6_250.CEListBox3
    else
      if A0_244 == L6_250 then
        L6_250 = UDF1
        L3_247 = L6_250.CEListBox3
        L6_250 = UDF1
        L4_248 = L6_250.CEListBox2
        L6_250 = L1_245["+"]
        L5_249 = L6_250 or default
    end
    else
      L6_250 = A0_244.Caption
      if L6_250 ~= "-" then
        L6_250 = UDF1
        L6_250 = L6_250.CEListBox2
      elseif A0_244 == L6_250 then
        L6_250 = UDF1
        L3_247 = L6_250.CEListBox2
        L6_250 = UDF1
        L4_248 = L6_250.CEListBox3
        L6_250 = L1_245["-"]
        L5_249 = L6_250 or default
      end
    end
    L6_250 = L3_247.ItemIndex
    statusvalue = L5_249(statusvalue, L2_246[L3_247.Items[L6_250]])
    UDF1.CELabel28.Caption = string.format("Value: %d", statusvalue)
    L4_248.Items.Add(L3_247.Items[L6_250])
    L3_247.Items.Delete(L6_250)
    if L3_247.Items.Count ~= 0 then
      if L6_250 == L3_247.Items.Count then
        L3_247.ItemIndex = L6_250 - 1
      else
        L3_247.ItemIndex = L6_250
      end
    end
    if UDF1.CECheckbox31.Checked == true then
      memrec("status").Value = statusvalue
    end
  end
end
function CECheckbox31Change(A0_261)
  if A0_261.state == 1 then
    GTDETECT(true)
    if gtdetect == true then
      memrec("status").Active = true
      memrec("status").Value = statusvalue
    else
      A0_261.state = 0
    end
  else
    memrec("status").Active = false
    memrec("status").Value = 0
  end
end
function CEButton25Click(A0_262)
  local L1_263, L2_264, L3_265, L4_266
  for L4_266 = 0, L2_264 - 1 do
    UDF1.CEListBox2.ItemIndex = 0
    CEButton23Click(UDF1.CEButton24)
  end
end
function CELabel35Click(A0_267)
  local L1_268, L2_269, L3_270
  L1_268 = os
  L1_268 = L1_268.execute
  L2_269 = "if not exist \"%temp%\\HOYUN Tool\" mkdir \"%temp%\\HOYUN Tool\""
  L1_268(L2_269)
  L1_268 = os
  L1_268 = L1_268.execute
  L2_269 = "reg query HKEY_CURRENT_USER | findstr /r \"\\\\[0-9][0-9]*\" > \"%temp%\\HOYUN Tool\\reg_1st.txt\""
  L1_268(L2_269)
  L1_268 = os
  L1_268 = L1_268.execute
  L2_269 = "reg query HKEY_CURRENT_USER\\Software\\Microsoft | findstr /r \"\\\\[0-9][0-9]*\" > \"%temp%\\HOYUN Tool\\reg_2nd.txt\""
  L1_268(L2_269)
  L1_268 = {
    L2_269,
    [3] = L3_270(os.getenv("temp") .. "\\HOYUN Tool\\reg_2nd.txt", "r")
  }
  L2_269 = io
  L2_269 = L2_269.open
  L3_270 = os
  L3_270 = L3_270.getenv
  L3_270 = L3_270("temp")
  L3_270 = L3_270 .. "\\HOYUN Tool\\reg_1st.txt"
  L2_269 = L2_269(L3_270, "r")
  L3_270 = io
  L3_270 = L3_270.open
  L3_270 = L3_270(os.getenv("temp") .. "\\HOYUN Tool\\reg_2nd.txt", "r")
  ;({
    L2_269,
    [3] = L3_270(os.getenv("temp") .. "\\HOYUN Tool\\reg_2nd.txt", "r")
  })[2] = L3_270
  L2_269 = L1_268[1]
  L3_270 = L2_269
  L2_269 = L2_269.read
  L2_269 = L2_269(L3_270)
  L3_270 = L1_268[2]
  L3_270 = L3_270.read
  L3_270 = L3_270(L3_270)
  UDF1.CEEdit4.Text = string.sub(L2_269, string.find(L2_269, "\\") + 1, string.len(L2_269))
  UDF1.CEEdit5.Text = string.sub(L3_270, string.find(L3_270, "Microsoft\\") + 10, string.len(L3_270))
  for _FORV_7_ = 1, #L1_268 do
    L1_268[_FORV_7_]:close()
  end
end
function MenuItem8Click(A0_271)
  local L1_272, L2_273, L3_274, L4_275
  L1_272 = memrec
  L2_273 = "GTDETECT"
  L1_272 = L1_272(L2_273)
  L1_272 = L1_272.Value
  if L1_272 ~= "??" then
    L1_272 = autoAssemble
    L2_273 = [[
  aobscan(captcha, 6F 77 69 6E 67 20 6E 75 6D 62 65 72 73 7C 6C 65 66 74 7C 0A 61 64 64 5F 74 65 78 74 62 6F 78)
  registersymbol(captcha)
  ]]
    L1_272(L2_273)
    L1_272 = readString
    L2_273 = "captcha+20"
    L3_274 = 8
    L1_272 = L1_272(L2_273, L3_274)
    if L1_272 ~= nil then
      L2_273 = string
      L2_273 = L2_273.sub
      L3_274 = L1_272
      L4_275 = 0
      L2_273 = L2_273(L3_274, L4_275, string.find(L1_272, "+") - 2)
      L3_274 = string
      L3_274 = L3_274.sub
      L4_275 = L1_272
      L3_274 = L3_274(L4_275, string.find(L1_272, "+") + 2, string.find(L1_272, "|") - 1)
      L4_275 = tonumber
      L4_275 = L4_275(L2_273)
      L4_275 = L4_275 + tonumber(L3_274)
      memrec("Chat Length").Value = string.len(L4_275)
      if memrec("LChat").Value == "??" then
        memrec("SChat").Value = L4_275
      else
        memrec("LChat").Value = L4_275
      end
      autoAssemble([[
   captcha:
   db 00
   unregistersymbol(captcha)
   ]])
    end
  end
end
function CEButton26Click(A0_276)
  local L1_277, L2_278, L3_279, L4_280, L5_281, L6_282
  L1_277 = {}
  function L2_278(A0_283, A1_284)
    return A0_283 + A1_284
  end
  L1_277["+"] = L2_278
  function L2_278(A0_285, A1_286)
    return A0_285 - A1_286
  end
  L1_277["-"] = L2_278
  function L2_278(A0_287, A1_288)
    return A0_287 * A1_288
  end
  L1_277["*"] = L2_278
  function L2_278(A0_289, A1_290)
    return A0_289 / A1_290
  end
  L1_277["/"] = L2_278
  function L2_278(A0_291, A1_292)
    return A0_291 % A1_292
  end
  L1_277["%"] = L2_278
  L2_278 = {}
  L2_278["Red crown"] = 1
  L2_278["Green crown"] = 2
  L2_278["Gray crown"] = 4
  L2_278["Golden crown"] = 8
  L2_278.Minion = 1024
  L2_278["Mind control"] = 2048
  L2_278["Pineapple effect"] = 4096
  L2_278.Giant = 8192
  L2_278.Shield = 16384
  L2_278.Tutorial = 32768
  L2_278["Slow fall"] = 262144
  L2_278.Healing = 2097152
  L2_278["High-Jump: Sprite"] = 4194304
  L2_278["Double-Jump: Sprite"] = 8388608
  L2_278["Low-Jump: Sprite"] = 16777216
  L3_279, L4_280, L5_281 = nil, nil, nil
  L6_282 = GTDETECT
  L6_282(true)
  L6_282 = gtdetect
  if L6_282 == true then
    L6_282 = A0_276.Caption
    if L6_282 ~= "+" then
      L6_282 = UDF1
      L6_282 = L6_282.CEListBox5
    else
      if A0_276 == L6_282 then
        L6_282 = UDF1
        L3_279 = L6_282.CEListBox5
        L6_282 = UDF1
        L4_280 = L6_282.CEListBox4
        L6_282 = L1_277["+"]
        L5_281 = L6_282 or default
    end
    else
      L6_282 = A0_276.Caption
      if L6_282 ~= "-" then
        L6_282 = UDF1
        L6_282 = L6_282.CEListBox4
      elseif A0_276 == L6_282 then
        L6_282 = UDF1
        L3_279 = L6_282.CEListBox4
        L6_282 = UDF1
        L4_280 = L6_282.CEListBox5
        L6_282 = L1_277["-"]
        L5_281 = L6_282 or default
      end
    end
    L6_282 = L3_279.ItemIndex
    playereffectvalue = L5_281(playereffectvalue, L2_278[L3_279.Items[L6_282]])
    UDF1.CELabel34.Caption = string.format("Value: %d", playereffectvalue)
    L4_280.Items.Add(L3_279.Items[L6_282])
    L3_279.Items.Delete(L6_282)
    if L3_279.Items.Count ~= 0 then
      if L6_282 == L3_279.Items.Count then
        L3_279.ItemIndex = L6_282 - 1
      else
        L3_279.ItemIndex = L6_282
      end
    end
    if UDF1.CECheckbox32.Checked == true then
      memrec("Player effect").Value = playereffectvalue
    end
  end
end
function CECheckbox32Change(A0_293)
  if A0_293.state == 1 then
    GTDETECT(true)
    if gtdetect == true then
      memrec("Player effect").Active = true
      memrec("Player effect").Value = playereffectvalue
    else
      A0_293.state = 0
    end
  else
    memrec("Player effect").Active = false
    memrec("Player effect").Value = 0
  end
end
function CEButton28Click(A0_294)
  local L1_295, L2_296, L3_297, L4_298
  for L4_298 = 0, L2_296 - 1 do
    UDF1.CEListBox4.ItemIndex = 0
    CEButton26Click(UDF1.CEButton27)
  end
end
function hcb15Change(A0_299)
  if A0_299.state == 1 then
    autoAssemble([[
  alloc(newmem,2048,"Growtopia.exe"+2AD6A2)
  label(returnhere)
  label(originalcode)
  label(exit)

  newmem:
  originalcode:
  mov ecx,[rax+06]
  inc ecx
  mov word ptr [rax+06],cx
  mov rcx,rdi
  call Growtopia.exe+29B028

  exit:
  jmp returnhere

  "Growtopia.exe"+2AD6A2:
  jmp newmem
  nop
  nop
  nop
  returnhere:

  ]])
  else
    autoAssemble([[
  dealloc(newmem)
  "Growtopia.exe"+2AD6A2:
  mov rcx,rdi
  call Growtopia.exe+29B028
  ]])
  end
end
function hcb16Change(A0_300)
  if A0_300.state == 1 then
    autoAssemble([[
  Growtopia.exe+23F2B2+1:
  db 89
  ]])
  else
    autoAssemble([[
  Growtopia.exe+23F2B2+1:
  db 39
  ]])
  end
end
function name_animationTimer(A0_301)
  local L1_302, L2_303, L3_304
  L1_302 = string
  L1_302 = L1_302.sub
  L2_303 = nameanimation
  L3_304 = 0
  L1_302 = L1_302(L2_303, L3_304, 2)
  L2_303 = string
  L2_303 = L2_303.sub
  L3_304 = nameanimation
  L2_303 = L2_303(L3_304, 3, 3)
  L3_304 = string
  L3_304 = L3_304.sub
  L3_304 = L3_304(nameanimation, 4, string.len(nameanimation))
  nameanimation = L1_302 .. L3_304 .. L2_303
  if memrec("LName").Value == "??" then
    memrec("Name").Value = nameanimation
  else
    memrec("LName").Value = nameanimation
  end
  print(nameanimation)
end
AutoGT.aCEListBox2.ItemIndex = 0
AutoGT.aCEPageControl2.ShowTabs = false
function aCEListBox2SelectionChange(A0_305, A1_306)
  local L2_307
  L2_307 = AutoGT
  L2_307 = L2_307.aCEPageControl2
  L2_307.TabIndex = A0_305.ItemIndex
end
function aCEButton1Click(A0_308)
  if AutoGT.aCEListBox2.ItemIndex == 0 then
    AutoGT.aCEListBox1.Items.Insert(AutoGT.aCEListBox1.ItemIndex + 1, string.format("Mouse %s: %d, %d", AutoGT.aCEComboBox1.Text, tonumber(AutoGT.aCEEdit1.Text), tonumber(AutoGT.aCEEdit2.Text)))
  elseif AutoGT.aCEListBox2.ItemIndex == 1 then
    if AutoGT.aCEComboBox2.ItemIndex == 0 then
      AutoGT.aCEListBox1.Items.Insert(AutoGT.aCEListBox1.ItemIndex + 1, string.format("Item: %d", tonumber(AutoGT.aCEEdit4.Text)))
    else
      AutoGT.aCEListBox1.Items.Insert(AutoGT.aCEListBox1.ItemIndex + 1, string.format("Item: %s", AutoGT.aCEComboBox2.Text))
    end
  elseif AutoGT.aCEListBox2.ItemIndex == 2 then
    AutoGT.aCEListBox1.Items.Insert(AutoGT.aCEListBox1.ItemIndex + 1, string.format("Delay: %dms", tonumber(AutoGT.aCEEdit5.Text)))
  elseif AutoGT.aCEListBox2.ItemIndex == 3 then
    AutoGT.aCEListBox1.Items.Insert(AutoGT.aCEListBox1.ItemIndex + 1, string.format("Move %s: %d %s", AutoGT.aCEComboBox3.Text, tonumber(AutoGT.aCEEdit6.Text), AutoGT.aCELabel7.Caption))
  end
  AutoGT.aCEListBox1.ItemIndex = AutoGT.aCEListBox1.ItemIndex + 1
  aCEListBox1SelectionChange()
end
function aCEButton4Click(A0_309)
  AutoGT.aCEListBox1.Items.Clear()
  aCEListBox1SelectionChange()
end
function aCEButton2Click(A0_310)
  local L1_311
  L1_311 = AutoGT
  L1_311 = L1_311.aCEListBox1
  L1_311 = L1_311.ItemIndex
  AutoGT.aCEListBox1.Items.Delete(L1_311)
  if AutoGT.aCEListBox1.Items.Count > 0 then
    if L1_311 == 0 then
      AutoGT.aCEListBox1.ItemIndex = L1_311
    else
      AutoGT.aCEListBox1.ItemIndex = L1_311 - 1
    end
  end
  aCEListBox1SelectionChange()
end
function aCEButton3Click(A0_312)
  if AutoGT.aCEListBox2.ItemIndex == 0 then
    AutoGT.aCEListBox1.Items[AutoGT.aCEListBox1.ItemIndex] = string.format("Mouse %s: %s, %s", AutoGT.aCEComboBox1.Text, tonumber(AutoGT.aCEEdit1.Text), tonumber(AutoGT.aCEEdit2.Text))
  elseif AutoGT.aCEListBox2.ItemIndex == 1 then
    if AutoGT.aCEComboBox2.ItemIndex == 0 then
      AutoGT.aCEListBox1.Items[AutoGT.aCEListBox1.ItemIndex] = string.format("Item: %s", AutoGT.aCEEdit4.Text)
    else
      AutoGT.aCEListBox1.Items[AutoGT.aCEListBox1.ItemIndex] = string.format("Item: %s", AutoGT.aCEComboBox2.Text)
    end
  elseif AutoGT.aCEListBox2.ItemIndex == 2 then
    AutoGT.aCEListBox1.Items[AutoGT.aCEListBox1.ItemIndex] = string.format("Delay: %dms", tonumber(AutoGT.aCEEdit5.Text))
  elseif AutoGT.aCEListBox2.ItemIndex == 3 then
    AutoGT.aCEListBox1.Items[AutoGT.aCEListBox1.ItemIndex] = string.format("Move %s: %d %s", AutoGT.aCEComboBox3.Text, tonumber(AutoGT.aCEEdit6.Text), AutoGT.aCELabel7.Caption)
  end
  aCEListBox1SelectionChange()
end
function aCEListBox1SelectionChange(A0_313, A1_314)
  local L2_315
  L2_315 = AutoGT
  L2_315 = L2_315.aCELabel2
  L2_315.Caption = string.format("Items: %d, %d", AutoGT.aCEListBox1.Items.Count, AutoGT.aCEListBox1.ItemIndex)
end
function stopTimer(A0_316)
  local L1_317
  L1_317 = AutoGT
  L1_317 = L1_317.aCETimer1
  L1_317.Enabled = false
  L1_317 = AutoGT
  L1_317 = L1_317.aCEListBox1
  L1_317.Enabled = true
  L1_317 = AutoGT
  L1_317 = L1_317.TabSheet1
  L1_317.Enabled = true
  L1_317 = AutoGT
  L1_317 = L1_317.TabSheet2
  L1_317.Enabled = true
  L1_317 = AutoGT
  L1_317 = L1_317.aCEButton5
  L1_317.Caption = "Start (F11)"
end
function aCEButton5Click(A0_318)
  AutoGT.aCETimer1.Interval = AutoGT.aCEEdit3.Text
  if string.find(AutoGT.aCEButton5.Caption, "Start") then
    AutoGT.aCEListBox1.Enabled = false
    AutoGT.TabSheet1.Enabled = false
    AutoGT.TabSheet2.Enabled = false
    AutoGT.aCEButton5.Caption = "Stop (F11)"
    AutoGT.aCETimer1.Enabled = true
  elseif string.find(AutoGT.aCEButton5.Caption, "Stop") then
    stopTimer()
  end
end
function aCETimer1Timer(A0_319)
  local L1_320, L2_321, L3_322, L4_323, L5_324, L6_325
  for L4_323 = 0, L2_321 - 1 do
    L5_324 = AutoGT
    L5_324 = L5_324.aCEListBox1
    L5_324.ItemIndex = L4_323
    L5_324 = string
    L5_324 = L5_324.find
    L5_324 = L5_324(L6_325, "Delay")
    if L5_324 then
      L5_324 = string
      L5_324 = L5_324.sub
      L5_324 = L5_324(L6_325, string.find(AutoGT.aCEListBox1.Items.String[L4_323], ":") + 2, string.len(AutoGT.aCEListBox1.Items.String[L4_323]) - 2)
      L6_325(L5_324)
    else
      L5_324 = string
      L5_324 = L5_324.find
      L5_324 = L5_324(L6_325, "Mouse ")
      if L5_324 then
        L5_324 = string
        L5_324 = L5_324.sub
        L5_324 = L5_324(L6_325, string.find(AutoGT.aCEListBox1.Items.String[L4_323], ":") + 2, string.find(AutoGT.aCEListBox1.Items.String[L4_323], ",") - 1)
        setMousePos(L5_324, L6_325)
        if string.find(AutoGT.aCEListBox1.Items.String[L4_323], "Left Click") then
          mouse_event(MOUSEEVENTF_LEFTDOWN | MOUSEEVENTF_LEFTUP)
        elseif string.find(AutoGT.aCEListBox1.Items.String[L4_323], "Left Down") then
          mouse_event(MOUSEEVENTF_LEFTDOWN)
        elseif string.find(AutoGT.aCEListBox1.Items.String[L4_323], "Left Up") then
          mouse_event(MOUSEEVENTF_LEFTUP)
        elseif string.find(AutoGT.aCEListBox1.Items.String[L4_323], "Right Click") then
          mouse_event(MOUSEEVENTF_RIGHTDOWN | MOUSEEVENTF_RIGHTUP)
        elseif string.find(AutoGT.aCEListBox1.Items.String[L4_323], "Right Down") then
          mouse_event(MOUSEEVENTF_RIGHTDOWN)
        elseif string.find(AutoGT.aCEListBox1.Items.String[L4_323], "Right Up") then
          mouse_event(MOUSEEVENTF_RIGHTUP)
        end
      else
        L5_324 = string
        L5_324 = L5_324.find
        L5_324 = L5_324(L6_325, "Item:")
        if L5_324 then
          L5_324 = string
          L5_324 = L5_324.find
          L5_324 = L5_324(L6_325, "*")
          if L5_324 then
            L5_324 = string
            L5_324 = L5_324.sub
            L5_324 = L5_324(L6_325, string.find(AutoGT.aCEListBox1.Items.String[L4_323], "*") + 1, string.len(AutoGT.aCEListBox1.Items.String[L4_323]) - 1)
            L6_325("[[pointerbase]+B10]+1F0", L5_324)
          else
            L5_324 = string
            L5_324 = L5_324.sub
            L5_324 = L5_324(L6_325, string.find(AutoGT.aCEListBox1.Items.String[L4_323], ":") + 2, string.len(AutoGT.aCEListBox1.Items.String[L4_323]))
            L6_325("[[pointerbase]+B10]+1F0", L5_324)
          end
        else
          L5_324 = string
          L5_324 = L5_324.find
          L5_324 = L5_324(L6_325, "Move ")
          if L5_324 then
            L5_324 = string
            L5_324 = L5_324.sub
            L5_324 = L5_324(L6_325, string.find(AutoGT.aCEListBox1.Items.String[L4_323], ":") + 2, string.len(AutoGT.aCEListBox1.Items.String[L4_323]) - 6)
            if L6_325 then
              for _FORV_9_ = 1, L5_324 * 32 do
                if 0 < readFloat("[[[pointerbase]+B10]+180]+8") and readFloat("[[[pointerbase]+B10]+180]+8") < 3180 then
                  writeSmallInteger("[[[pointerbase]+B10]+180]+131", 1)
                  writeFloat("[[[pointerbase]+B10]+180]+8", readFloat("[[[pointerbase]+B10]+180]+8") - 1)
                else
                  break
                end
                sleep(1)
              end
            elseif L6_325 then
              for _FORV_9_ = 1, L5_324 * 32 do
                writeSmallInteger("[[[pointerbase]+B10]+180]+131", 0)
                if 0 < readFloat("[[[pointerbase]+B10]+180]+8") and readFloat("[[[pointerbase]+B10]+180]+8") < 3180 then
                  writeFloat("[[[pointerbase]+B10]+180]+8", readFloat("[[[pointerbase]+B10]+180]+8") + 1)
                else
                  break
                end
                sleep(1)
              end
            elseif L6_325 then
              if L5_324 == "1" then
              elseif L5_324 == "2" then
              else
              end
              writeSmallInteger("[[[pointerbase]+B10]+180]+1D8", 1)
              writeSmallInteger("[[[pointerbase]+B10]+180]+1AD", 1)
              sleep(L6_325)
              if readSmallInteger("[[[pointerbase]+B10]+180]+1D8") == 1 then
                writeSmallInteger("[[[pointerbase]+B10]+180]+1D8", 0)
              end
            end
          end
        end
      end
    end
  end
  if L1_320 == false then
    L1_320()
  end
end
function aCEComboBox2Change(A0_326)
  if A0_326.ItemIndex == 0 then
    AutoGT.aCELabel5.Enabled = true
    AutoGT.aCEEdit4.Enabled = true
  else
    AutoGT.aCELabel5.Enabled = false
    AutoGT.aCEEdit4.Enabled = false
    AutoGT.aCEEdit4.Text = string.sub(AutoGT.aCEComboBox2.Text, string.find(AutoGT.aCEComboBox2.Text, "*") + 1, string.len(AutoGT.aCEComboBox2.Text) - 1)
  end
end
function currentposTimer(A0_327)
  AutoGT.aCEEdit1.Text = getMousePos()
  AutoGT.aCEEdit2.Text = getMousePos()
end
function aRadioButton2Change(A0_328)
  local L1_329
  L1_329 = AutoGT
  L1_329 = L1_329.aRadioButton2
  L1_329 = L1_329.Checked
  if L1_329 == true then
    L1_329 = AutoGT
    L1_329 = L1_329.aCEEdit1
    L1_329.Enabled = false
    L1_329 = AutoGT
    L1_329 = L1_329.aCEEdit2
    L1_329.Enabled = false
    L1_329 = AutoGT
    L1_329 = L1_329.currentpos
    L1_329.Enabled = true
  else
    L1_329 = AutoGT
    L1_329 = L1_329.aCEEdit1
    L1_329.Enabled = true
    L1_329 = AutoGT
    L1_329 = L1_329.aCEEdit2
    L1_329.Enabled = true
    L1_329 = AutoGT
    L1_329 = L1_329.currentpos
    L1_329.Enabled = false
  end
end
function aCEComboBox3Change(A0_330)
  local L1_331, L2_332
  L1_331 = A0_330.ItemIndex
  if L1_331 > 1 then
    L1_331 = AutoGT
    L1_331 = L1_331.aCEEdit6
    L1_331.Enabled = false
    L1_331 = AutoGT
    L1_331 = L1_331.aCEEdit6
    L2_332 = AutoGT
    L2_332 = L2_332.aCETrackBar1
    L2_332 = L2_332.Position
    L1_331.Text = L2_332
    L1_331 = AutoGT
    L1_331 = L1_331.aCETrackBar1
    L1_331.Visible = true
  else
    L1_331 = AutoGT
    L1_331 = L1_331.aCEEdit6
    L1_331.Enabled = true
    L1_331 = AutoGT
    L1_331 = L1_331.aCETrackBar1
    L1_331.Visible = false
  end
end
function aCETrackBar1Change(A0_333)
  local L1_334
  L1_334 = AutoGT
  L1_334 = L1_334.aCEEdit6
  L1_334.Text = A0_333.Position
end
if hotkey1 == nil then
  hotkey1 = createHotkey(aCEButton1Click, VK_F10)
end
if hotkey2 == nil then
  hotkey2 = createHotkey(aCEButton5Click, VK_F11)
end
function aCEButton6Click(A0_335)
  local L1_336, L2_337, L3_338
  L1_336 = AutoGT
  L1_336 = L1_336.aCEListBox1
  L2_337 = L1_336.ItemIndex
  if L2_337 == -1 then
  else
    L2_337 = L1_336.Items
    L2_337 = L2_337.String
    L3_338 = L1_336.ItemIndex
    L2_337 = L2_337[L3_338]
    L3_338 = L1_336.ItemIndex
    L3_338 = L3_338 - 1
    if L1_336.ItemIndex == 0 then
      L3_338 = L1_336.Items.Count - 1
    end
    L1_336.Items.Insert(L1_336.ItemIndex - 1, L2_337)
    L1_336.Items.Delete(L1_336.ItemIndex)
    L1_336.ItemIndex = L3_338
  end
end
function aCEButton7Click(A0_339)
  local L1_340, L2_341, L3_342
  L1_340 = AutoGT
  L1_340 = L1_340.aCEListBox1
  L2_341 = L1_340.ItemIndex
  if L2_341 == -1 then
  else
    L2_341 = L1_340.Items
    L2_341 = L2_341.String
    L3_342 = L1_340.ItemIndex
    L2_341 = L2_341[L3_342]
    L3_342 = L1_340.ItemIndex
    L3_342 = L3_342 + 1
    if L1_340.ItemIndex == L1_340.Items.Count - 1 then
      L3_342 = 0
    end
    if L1_340.ItemIndex == L1_340.Items.Count - 1 then
      L1_340.Items.Insert(0, L2_341)
    else
      L1_340.Items.Insert(L1_340.ItemIndex + 2, L2_341)
    end
    L1_340.Items.Delete(L1_340.ItemIndex)
    L1_340.ItemIndex = L3_342
  end
end
function MenuItem9Click(A0_343)
  AutoGT.Show()
end
function AGsave(A0_344)
  local L1_345
  L1_345 = AutoGT
  L1_345 = L1_345.CESavedialog1
  if L1_345.execute() then
    AutoGT.aCEListBox1.Items.saveToFile(L1_345.FileName)
  end
  aCEListBox1SelectionChange()
end
function AGopen(A0_346)
  local L1_347
  L1_347 = AutoGT
  L1_347 = L1_347.CEOpenDialog1
  if L1_347.execute() then
    f = io.open(L1_347.FileName, "r")
    AutoGT.aCEListBox1.Items.Text = f:read("*all")
    f:close()
  end
  aCEListBox1SelectionChange()
end
function CEPageControl4Change(A0_348)
  local L1_349
  L1_349 = A0_348.TabIndex
  if L1_349 == 2 then
    L1_349 = UDF1
    L1_349 = L1_349.CESavedialog1
    if L1_349.execute() then
      UDF1.CEMemo3.Lines.saveToFile(L1_349.FileName)
    end
    A0_348.TabIndex = 0
  end
end
macroSleep = 0
function macroRecodeTimer(A0_350)
  macroSleep = macroSleep + 1
  if isKeyPressed(VK_A) then
    AutoGT.aCEListBox1.Items.Insert(AutoGT.aCEListBox1.ItemIndex + 1, string.format("Delay: %dms", tonumber(macroSleep)))
    macroSleep = 0
  end
end
function aCEButton8Click(A0_351)
  local L1_352
  L1_352 = AutoGT
  L1_352 = L1_352.macroRecode
  L1_352.Enabled = true
end
function aCEButton9Click(A0_353)
  local L1_354
  L1_354 = AutoGT
  L1_354 = L1_354.macroRecode
  L1_354.Enabled = false
end
function hcb17Change(A0_355)
  if A0_355.state == 1 then
    autoAssemble([[
  Growtopia.exe+230FA4:
  db 90 90 90 90 90
  ]])
  else
    autoAssemble([[
  Growtopia.exe+230FA4:
  db E8 7B D4 00 00
  ]])
  end
end
function hcb18Change(A0_356)
  if A0_356.state == 1 then
    autoAssemble([[
  Growtopia.exe+34F7E0:
  db 90 90
  ]])
  else
    autoAssemble([[
  Growtopia.exe+34F7E0:
  db 4f 6e
  ]])
  end
end
function hcb19Change(A0_357)
  if A0_357.state == 1 then
    autoAssemble([[
  Growtopia.exe+3F81B4:
  add [rax],eax
  ]])
  else
    autoAssemble([[
  Growtopia.exe+3F81B4:
  add [rax],al
  ]])
  end
end
function hcb20Change(A0_358)
  if A0_358.state == 1 then
    autoAssemble([[
  Growtopia.exe+280318:
  db 90 90 90 90
  ]])
  else
    autoAssemble([[
  Growtopia.exe+280318:
  db 80 79 12 00
  ]])
  end
end
function hcb21Change(A0_359)
  if A0_359.state == 1 then
    autoAssemble([[
  Growtopia.exe+3397B4:
  db 90 90
  ]])
  else
    autoAssemble([[
  Growtopia.exe+3397B4:
  db 70 6f
  ]])
  end
end
function hcb22Change(A0_360)
  if A0_360.state == 1 then
    autoAssemble([[
  Growtopia.exe+34F800:
  db 90 90
  ]])
  else
    autoAssemble([[
  Growtopia.exe+34F800:
  db 4f 6e
  ]])
  end
end
function hcb23Change(A0_361)
  if A0_361.state == 1 then
    autoAssemble([[
  Growtopia.exe+233DE6:
  db 75
  ]])
  else
    autoAssemble([[
  Growtopia.exe+233DE6:
  db 74
  ]])
  end
end
function hcb24Change(A0_362)
  if A0_362.state == 1 then
    autoAssemble([[
  Growtopia.exe+19D9DA:
  db 90 90 90 90 90
  ]])
  else
    autoAssemble([[
  Growtopia.exe+19D9DA:
  db e8 b1 b8 00 00
  ]])
  end
end
function hcb25Change(A0_363)
  if A0_363.state == 1 then
    autoAssemble([[
  Growtopia.exe+26FA3A:
  db EB
  ]])
  else
    autoAssemble([[
  Growtopia.exe+26FA3A:
  db 74
  ]])
  end
end
function hcb26Change(A0_364)
  if A0_364.state == 1 then
    autoAssemble([[
  Growtopia.exe+23718E:
  db 75
  Growtopia.exe+2371E2:
  db EB
  ]])
  else
    autoAssemble([[
  Growtopia.exe+23718E:
  db 74
  Growtopia.exe+2371E2:
  db 74
  ]])
  end
end
function hcb27Change(A0_365)
  if A0_365.state == 1 then
    autoAssemble([[
  Growtopia.exe+234D3A:
  db 0F 85
  ]])
  else
    autoAssemble([[
  Growtopia.exe+234D3A:
  db 0F 84
  ]])
  end
end
function hcb28Change(A0_366)
  if A0_366.state == 1 then
    autoAssemble([[
  Growtopia.exe+2809AE:
  db 75
  ]])
  else
    autoAssemble([[
  Growtopia.exe+2809AE:
  db 74
  ]])
  end
end
function hcb29Change(A0_367)
  if A0_367.state == 1 then
    autoAssemble([[
  Growtopia.exe+62CBD:
  db 74
  ]])
  else
    autoAssemble([[
  Growtopia.exe+62CBD:
  db 75
  ]])
  end
end
function hcb30Change(A0_368)
  if A0_368.state == 1 then
    autoAssemble([[
  Growtopia.exe+23EE8C+6:
  db 01
  ]])
  else
    autoAssemble([[
  Growtopia.exe+23EE8C+6:
  db 00
  ]])
  end
end
function CEButton2Click(A0_369)
  local L1_370, L2_371, L3_372, L4_373
  L1_370()
  L1_370(L2_371)
  for L4_373 = 1, 100 do
    if UDF1["hcb" .. L4_373] == nil then
    else
      UDF1.CEListBox1.Items.Add(UDF1["hcb" .. L4_373].Caption)
    end
  end
end
CEButton2Click()
function CEButton14Click(A0_374)
  local L1_375, L2_376
  L1_375 = UDF1
  L1_375 = L1_375.CEComboBox1
  L1_375 = L1_375.ItemIndex
  L1_375 = L1_375 + 1
  L2_376 = UDF1
  L2_376 = L2_376.CEListBox1
  L2_376 = L2_376.ItemIndex
  hhk[L1_375][1] = UDF1.CEComboBox2.ItemIndex
  if hhk[L1_375][1] == 0 then
    hhk[L1_375][0] = UDF1["hcb" .. L2_376]
    hhk[L1_375][2] = hhk[L1_375][0].Caption
  elseif hhk[L1_375][1] == 1 then
    hhk[L1_375][2] = UDF1.CEEdit3.Text
    hhk[L1_375][3] = UDF1.CEMemo1.Lines.Text
    hhk[L1_375][4] = UDF1.CEMemo4.Lines.Text
  end
  CEComboBox1Change()
end
function CEComboBox2Change(A0_377)
  local L1_378
  L1_378 = UDF1
  L1_378 = L1_378.CEComboBox2
  L1_378 = L1_378.ItemIndex
  if L1_378 == 0 then
    L1_378 = UDF1
    L1_378 = L1_378.CEPanel2
    L1_378.Enabled = true
    L1_378 = UDF1
    L1_378 = L1_378.CEPanel13
    L1_378.Enabled = false
  else
    L1_378 = UDF1
    L1_378 = L1_378.CECombobox2
    L1_378 = L1_378.ItemIndex
    if L1_378 == 1 then
      L1_378 = UDF1
      L1_378 = L1_378.CEPanel2
      L1_378.Enabled = false
      L1_378 = UDF1
      L1_378 = L1_378.CEPanel13
      L1_378.Enabled = true
    end
  end
end
function CEComboBox1Change(A0_379)
  UDF1.CEComboBox2.ItemIndex = hhk[UDF1.CEComboBox1.ItemIndex + 1][1]
  UDF1.CEEdit3.Text = hhk[UDF1.CEComboBox1.ItemIndex + 1][2]
  UDF1.CEMemo1.Lines.Text = hhk[UDF1.CEComboBox1.ItemIndex + 1][3]
  UDF1.CEMemo4.Lines.Text = hhk[UDF1.CEComboBox1.ItemIndex + 1][4]
  CEComboBox2Change()
end
CEComboBox1Change()
function hcb31Change(A0_380)
  if A0_380.state == 1 then
    autoAssemble([[
  Growtopia.exe+284399:
  db 90 90 90 90
  ]])
  else
    autoAssemble([[
  Growtopia.exe+284399:
  db 0F B7 43 04
  ]])
  end
end
function MenuItem11Click(A0_381)
  autoAssemble([[
alloc(m,64)
 createthread(m)
 m:
 push 0
 call exitProcess
 ret
 ]])
end
function refreshHotkey(A0_382)
  local L1_383, L2_384, L3_385, L4_386, L5_387
  for L4_386 = 1, 9 do
    L5_387 = {
      UDF1["hotkeyF" .. L4_386],
      "F" .. L4_386,
      hhk[L4_386][2]
    }
    memrec("(F" .. L4_386 .. ")").Active = false
    L5_387[1].Font.Color = "0x000000"
    L5_387[1].Caption = string.format("(%s) %s: OFF", L5_387[2], L5_387[3])
    if hhk[L4_386][1] == 0 then
      hhk[L4_386][0].Checked = false
    else
      autoAssemble(hhk[L4_386][4])
    end
  end
end
refreshHotkey()
function betterWatermarkTimer(A0_388)
  GTDETECT(false)
  if gtdetect == true then
    xpos = memrec("X Position").Value
    ypos = memrec("Y Position").Value
    if memrec("Current World(FIX)").Value == "??" then
      currentworld = memrec("Current World").Value
    else
      currentworld = memrec("Current World(FIX)").Value
    end
    memrec("Watermark").Value = string.format(UDF1.CEMemo5.Lines.Text, os.date("%A, %d %B %Y, %X %p"), currentworld, memrec("Player Count").Value, xpos, ypos, math.floor(xpos / 32 + 1), math.floor(ypos / 32 + 1), memrec("Backpack size").Value, memrec("(s) item").Value)
  else
    memrec("Watermark").Value = "`4(Unknown Data)"
  end
end
function hcb32Change(A0_389)
  if A0_389.state == 1 then
    autoAssemble([[
  alloc(tptoitem,500,Growtopia.exe+2AAD3E)
  label(if)
  label(origin)
  alloc(max,4)
  alloc(min,4)

  max:
  dd (float)100.0
  min:
  dd (float)-100.0

  if:
  movss [rax+08],xmm11
  movss [rax+0C],xmm12
  jmp origin

  tptoitem:
  push rax
  call Growtopia.exe+A7024 //Func first
  mov rcx,rax
  pop rax
  mov rax,[rcx+00000180]
  movss xmm11,[r13+00] //xmm11 will be used 04-01 //r12 to r13 05-03X
  movss xmm12,[r13+04] //+4
  movss xmm13,[rax+08]
  movss xmm14,[rax+0C]
  subss xmm13,xmm11
  comiss xmm13,[max]
  jb if
  comiss xmm13,[min]
  ja if
  subss xmm14,xmm12
  comiss xmm14,[max]
  jb if
  comiss xmm14,[min]
  ja if

  origin:
  addss xmm0,[r13+00]
  jmp Growtopia.exe+2AAD44

  Growtopia.exe+2AAD3E:
  jmp tptoitem
  db 90 90 90 90 90 90 90
  ]])
  else
    autoAssemble([[
  dealloc(max)
  dealloc(min)
  dealloc(tptoitem)

  Growtopia.exe+2AAD3E:
  addss xmm0,[r13+00] //r12 to r13
  movss [rsp+70],xmm0
  ]])
  end
end
function CECheckbox1Change(A0_390)
  local L1_391, L2_392
  L1_391 = UDF1
  L1_391 = L1_391.CEGroupBox5
  L2_392 = A0_390.Checked
  if L2_392 then
    L2_392 = true
  else
    L2_392 = L2_392 or false
  end
  L1_391.Enabled = L2_392
  L1_391 = UDF1
  L1_391 = L1_391.CECheckBox22
  L2_392 = A0_390.Checked
  if L2_392 then
    L2_392 = true
  else
    L2_392 = L2_392 or false
  end
  L1_391.Enabled = L2_392
end
function color_pipetteTimer(A0_393)
  local L1_394, L2_395
  L1_394 = getMousePos
  L2_395 = L1_394()
  UDF1.CELabel27.Caption = string.format(UDF1.CELabel27.Hint, tostring(L1_394), tostring(L2_395))
  UDF1.CEPanel6.Color = getPixel(getMousePos())
  b, g, r = getPixel(getMousePos()) >> 16 & 255, getPixel(getMousePos()) >> 8 & 255, getPixel(getMousePos()) & 255
  UDF1.hexB.position = b
  UDF1.hexG.position = g
  UDF1.hexR.position = r
  a = isKeyPressed(1)
  if a == true then
    UDF1.CEPanel6.Color = getPixel(getMousePos())
    UDF1.color_pipette.Enabled = false
    b, g, r = getPixel(getMousePos()) >> 16 & 255, getPixel(getMousePos()) >> 8 & 255, getPixel(getMousePos()) & 255
    UDF1.hexB.position = b
    UDF1.hexG.position = g
    UDF1.hexR.position = r
    UDF1.CEPanel14.BevelInner = 2
    UDF1.CEPanel14.Color = "0xFFFFFF"
    UDF1.CEPanel14.Enabled = true
  end
end
function CEImage3Click(A0_396)
  local L1_397, L2_398
  L1_397 = UDF1
  L1_397 = L1_397.CEPanel14
  L1_397.BevelInner = 1
  L1_397 = UDF1
  L1_397 = L1_397.CEPanel14
  L1_397.Color = "0x87CEEB"
  L1_397 = UDF1
  L1_397 = L1_397.CEPanel14
  L1_397.Enabled = false
  L1_397 = getMousePos
  L2_398 = L1_397()
  UDF1.CELabel27.Caption = string.format(UDF1.CELabel27.Hint, tostring(L1_397), tostring(L2_398))
  UDF1.color_pipette.Enabled = true
end
function MenuItem12Click(A0_399)
  if showNotice == true then
    showMessage(tool_notice)
  else
    showMessage("There is no notice")
  end
end
function CEButton16Click(A0_400)
  UDF1.CEMemo6.Lines.Clear()
  UDF1.CEMemo6.Lines.Text = getInternet().getURL("https://pastebin.com/raw/eYe7stA9")
end
UDF1.CEListBox6.ItemIndex = 1
set_clothes = {
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0
}
function clothesReadTimer(A0_401)
  cindex = UDF1.CEListBox6.ItemIndex
  GTDETECT(false)
  if gtdetect == true then
    for _FORV_4_ = 1, #set_clothes do
      set_clothes[_FORV_4_] = readSmallInteger(get_clothes[_FORV_4_])
    end
    _FOR_.CEListBox6.Items.Text = string.format(UDF1.CEListBox6.Hint, set_clothes[1], set_clothes[2], set_clothes[3], set_clothes[4], set_clothes[5], set_clothes[6], set_clothes[7], set_clothes[7], set_clothes[8], set_clothes[9], set_clothes[10])
    UDF1.CEListBox6.ItemIndex = cindex
  end
end
function CEListBox6Click(A0_402)
  local L1_403
  L1_403 = nil
  if A0_402.ItemIndex <= 0 then
    clothesReadTimer()
    A0_402.ItemIndex = 1
  else
    L1_403 = string.sub(A0_402.Items[A0_402.ItemIndex], string.find(A0_402.Items[A0_402.ItemIndex], ": ") + 2, string.len(A0_402.Items[A0_402.ItemIndex]))
    UDF1.CEEdit14.Text = L1_403
  end
end
function CEButton17Click(A0_404)
  set_clothes[UDF1.CEListBox6.ItemIndex] = UDF1.CEEdit14.Text
  memrec("get_clothes_" .. UDF1.CEListBox6.ItemIndex).Value = set_clothes[UDF1.CEListBox6.ItemIndex]
  clothesReadTimer()
end
function CECheckbox3Change(A0_405)
  local L1_406, L2_407
  L1_406 = UDF1
  L1_406 = L1_406.clothesRead
  L2_407 = A0_405.Checked
  if L2_407 then
    L2_407 = true
  else
    L2_407 = L2_407 or false
  end
  L1_406.Enabled = L2_407
end
function CEButton18Click(A0_408)
  local L1_409, L2_410, L3_411, L4_412, L5_413, L6_414
  L1_409, L2_410 = nil, nil
  L3_411(L4_412)
  if L3_411 == true then
    for L6_414 = 0, 8 do
      L1_409 = UDF1.CEMemo7.Lines[L6_414]
      if not string.find(L1_409, "=") then
        messageDialog(string.format([[
Error: Cannot change value
Reason: Line %s(%s)]], L6_414, L1_409), mtWarning, mbOK)
        return
      end
    end
    for L6_414 = 0, 8 do
      L1_409 = UDF1.CEMemo7.Lines[L6_414]
      L2_410 = string.sub(L1_409, string.find(L1_409, "=") + 1, string.len(L1_409))
      if L2_410 == "" then
        set_clothes[L6_414 + 1] = 0
      else
        set_clothes[L6_414 + 1] = L2_410
      end
      memrec("get_clothes_" .. L6_414 + 1).Value = set_clothes[L6_414 + 1]
    end
  end
end
function CEButton19Click(A0_415)
  local L1_416, L2_417
  L1_416 = UDF1
  L1_416 = L1_416.CEMemo7
  L1_416 = L1_416.Lines
  L2_417 = UDF1
  L2_417 = L2_417.CEMemo7
  L2_417 = L2_417.Hint
  L1_416.Text = L2_417
end
function hcb33Change(A0_418)
  if A0_418.state == 1 then
    autoAssemble([[
  Growtopia.exe+233E19:
  db 74
  ]])
  else
    autoAssemble([[
  Growtopia.exe+233E19:
  db 75
  ]])
  end
end
function hcb34Change(A0_419)
  if A0_419.state == 1 then
    autoAssemble([[
  Growtopia.exe+23569A:
  db 74
  ]])
  else
    autoAssemble([[
  Growtopia.exe+23569A:
  db 75
  ]])
  end
end
function hcb35Change(A0_420)
  if A0_420.state == 1 then
    autoAssemble([[
  Growtopia.exe+235687:
  db 74
  ]])
  else
    autoAssemble([[
  Growtopia.exe+235687:
  db 75
  ]])
  end
end
function hcb36Change(A0_421)
  if A0_421.state == 1 then
    autoAssemble([[
  Growtopia.exe+2802CE:
  db 90 90 90
  ]])
  else
    autoAssemble([[
  Growtopia.exe+2802CE:
  db 8A 41 12
  ]])
  end
end
function hcb37Change(A0_422)
  if A0_422.state == 1 then
    autoAssemble([[
  Growtopia.exe+28031C:
  db 90 90
  ]])
  else
    autoAssemble([[
  Growtopia.exe+28031C:
  db 75 07
  ]])
  end
end
function hcb38Change(A0_423)
  if A0_423.state == 1 then
    autoAssemble([[
  Growtopia.exe+233D3F:
  db 90 90
  Growtopia.exe+233D41:
  db 90 90 90 90
  ]])
  else
    autoAssemble([[
  Growtopia.exe+233D3F:
  db 74 0D
  Growtopia.exe+233D41:
  db f3 0f 59 d7
  ]])
  end
end
function hcb39Change(A0_424)
  if A0_424.state == 1 then
    autoAssemble([[
  Growtopia.exe+1AF29A:
  db 90 90 90 90 90
  ]])
  else
    autoAssemble([[
  Growtopia.exe+1AF29A:
  db e8 91 87 08 00
  ]])
  end
end
function hcb40Change(A0_425)
  if A0_425.state == 1 then
    autoAssemble([[
  "Growtopia.exe"+233D3F:
  db 75
  "Growtopia.exe"+233D45:
  db 90 90 90 90
  ]])
  else
    autoAssemble([[
  "Growtopia.exe"+233D3F:
  db 74
  "Growtopia.exe"+233D45:
  db F3 0F 5C DA
  ]])
  end
end
function Form2Resize(A0_426)
  local L1_427, L2_428, L3_429, L4_430
  L1_427 = UDF2
  L1_427 = L1_427.CE2Panel1
  L2_428 = UDF2
  L2_428 = L2_428.CE2Button1
  L3_429 = UDF2
  L3_429 = L3_429.CE2Button2
  L4_430 = L1_427.Width
  L4_430 = L4_430 / 2
  L4_430 = L4_430 - L2_428.Width
  L4_430 = L4_430 - 5
  L2_428.Left = L4_430
  L4_430 = L1_427.Width
  L4_430 = L4_430 / 2
  L4_430 = L4_430 + 5
  L3_429.Left = L4_430
end
Form2Resize()
function hcb41Change(A0_431)
  if A0_431.state == 1 then
    autoAssemble([[
  Growtopia.exe+23A47A:
  db E9 13 03 00 00 90
  ]])
  else
    autoAssemble([[
  Growtopia.exe+23A47A:
  db 0F 85 12 03 00 00
  ]])
  end
end
function CEButton32Click(A0_432)
  local L1_433, L2_434, L3_435, L4_436, L5_437, L6_438
  L1_433 = {}
  L1_433["Turning Block"] = [[
Growtopia.exe+2A545E:
db 0F 85]]
  L1_433["Rainbow Block"] = [[
Growtopia.exe+2A5377:
db 0F 84]]
  L2_434 = {}
  L2_434["Turning Block"] = [[
Growtopia.exe+2A545E:
db 0F 84]]
  L2_434["Rainbow Block"] = [[
Growtopia.exe+2A5377:
db 0F 85]]
  L3_435, L4_436, L5_437 = nil, nil, nil
  L6_438 = GTDETECT
  L6_438(true)
  L6_438 = gtdetect
  if L6_438 == true then
    L6_438 = A0_432.Caption
    if L6_438 ~= "+" then
      L6_438 = UDF1
      L6_438 = L6_438.CEListBox8
    else
      if A0_432 == L6_438 then
        L6_438 = UDF1
        L3_435 = L6_438.CEListBox8
        L6_438 = UDF1
        L4_436 = L6_438.CEListBox7
        L6_438 = autoAssemble
        L6_438(L1_433[L3_435.Items[L3_435.ItemIndex]])
    end
    else
      L6_438 = A0_432.Caption
      if L6_438 ~= "-" then
        L6_438 = UDF1
        L6_438 = L6_438.CEListBox7
      elseif A0_432 == L6_438 then
        L6_438 = UDF1
        L3_435 = L6_438.CEListBox7
        L6_438 = UDF1
        L4_436 = L6_438.CEListBox8
        L6_438 = autoAssemble
        L6_438(L2_434[L3_435.Items[L3_435.ItemIndex]])
      end
    end
    L6_438 = L3_435.ItemIndex
    L4_436.Items.Add(L3_435.Items[L6_438])
    L3_435.Items.Delete(L6_438)
    if L3_435.Items.Count ~= 0 then
      if L6_438 == L3_435.Items.Count then
        L3_435.ItemIndex = L6_438 - 1
      else
        L3_435.ItemIndex = L6_438
      end
    end
  end
end
function CEButton34Click(A0_439)
  local L1_440, L2_441, L3_442, L4_443
  for L4_443 = 0, L2_441 - 1 do
    UDF1.CEListBox7.ItemIndex = 0
    CEButton32Click(UDF1.CEButton33)
  end
end
function CE2Button2Click(A0_444)
  UDF2.Hide()
end
