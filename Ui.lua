if game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("KhaosHub") then
    game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("KhaosHub"):Destroy()
end

local SG = Instance.new("ScreenGui")
SG.IgnoreGuiInset = true
SG.ScreenInsets   = Enum.ScreenInsets.DeviceSafeInsets
SG.Name           = "KhaosHub"
SG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SG.ResetOnSpawn   = false
SG.Parent         = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

-- ToggleUI
local TUI = Instance.new("ImageButton", SG)
TUI.BorderSizePixel  = 0
TUI.ScaleType        = Enum.ScaleType.Fit
TUI.BackgroundColor3 = Color3.fromRGB(3,3,3)
TUI.ZIndex           = 10
TUI.Image            = "rbxassetid://109958086553778"
TUI.Size             = UDim2.new(0,36,0,36)
TUI.Name             = "ToggleUI"
TUI.Position         = UDim2.new(0.5,-18,0,12)
Instance.new("UICorner", TUI).CornerRadius = UDim.new(0,6)
local _s = Instance.new("UIStroke", TUI)
_s.Color = Color3.fromRGB(120,0,188); _s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

-- FloatBtn
local FloatBtn = Instance.new("TextButton", SG)
FloatBtn.BorderSizePixel  = 0
FloatBtn.TextSize          = 13
FloatBtn.TextColor3        = Color3.fromRGB(205,137,255)
FloatBtn.BackgroundColor3  = Color3.fromRGB(14,0,22)
FloatBtn.FontFace          = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)
FloatBtn.ZIndex            = 5
FloatBtn.Size              = UDim2.new(0,90,0,40)
FloatBtn.Text              = "Auto Shot"
FloatBtn.Name              = "FloatBtn"
FloatBtn.Visible           = false
FloatBtn.Position          = UDim2.new(0,20,0,130)
Instance.new("UICorner", FloatBtn).CornerRadius = UDim.new(0,6)
local _s2 = Instance.new("UIStroke", FloatBtn)
_s2.Color = Color3.fromRGB(86,0,171); _s2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

-- Window
local Win = Instance.new("Frame", SG)
Win.Active           = true
Win.BorderSizePixel  = 0
Win.BackgroundColor3 = Color3.fromRGB(3,3,3)
Win.AnchorPoint      = Vector2.new(0.5,0.5)
Win.ClipsDescendants = true
Win.Size             = UDim2.new(0,580,0,460)
Win.Position         = UDim2.new(0.5,0,0.5,0)
Win.Name             = "Window"
Instance.new("UICorner", Win)
local _ws = Instance.new("UIStroke", Win)
_ws.Color = Color3.fromRGB(32,0,54); _ws.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
local MainScale = Instance.new("UIScale", Win)
MainScale.Name = "MainScale"

-- Titlebar
local Tbar = Instance.new("Frame", Win)
Tbar.Active           = true
Tbar.ZIndex           = 3
Tbar.BorderSizePixel  = 0
Tbar.BackgroundColor3 = Color3.fromRGB(3,3,3)
Tbar.Size             = UDim2.new(1,0,0,44)
Tbar.Name             = "Titlebar"
Tbar.BackgroundTransparency = 1

local TDiv = Instance.new("Frame", Tbar)
TDiv.BorderSizePixel  = 0
TDiv.BackgroundColor3 = Color3.fromRGB(23,0,38)
TDiv.Size             = UDim2.new(1,0,0,1)
TDiv.Position         = UDim2.new(0,0,1,-1)
TDiv.Name             = "TDiv"

local Logo = Instance.new("ImageLabel", Tbar)
Logo.BorderSizePixel  = 0
Logo.ScaleType        = Enum.ScaleType.Fit
Logo.BackgroundColor3 = Color3.fromRGB(0,0,0)
Logo.Image            = "rbxassetid://121724126392757"
Logo.Size             = UDim2.new(0,28,0,28)
Logo.Name             = "Logo"
Logo.Position         = UDim2.new(0,10,0,8)
Instance.new("UICorner", Logo).CornerRadius = UDim.new(0,4)

local TitleName = Instance.new("TextLabel", Tbar)
TitleName.TextSize         = 14
TitleName.TextXAlignment   = Enum.TextXAlignment.Left
TitleName.FontFace         = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)
TitleName.TextColor3       = Color3.fromRGB(177,107,239)
TitleName.BackgroundTransparency = 1
TitleName.Size             = UDim2.new(0,200,0,16)
TitleName.Text             = "Khaos Hub"
TitleName.Name             = "TitleName"
TitleName.Position         = UDim2.new(0,46,0,6)

local TitleSub = Instance.new("TextLabel", Tbar)
TitleSub.TextSize         = 10
TitleSub.TextXAlignment   = Enum.TextXAlignment.Left
TitleSub.FontFace         = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
TitleSub.TextColor3       = Color3.fromRGB(120,52,171)
TitleSub.BackgroundTransparency = 1
TitleSub.Size             = UDim2.new(0,200,0,12)
TitleSub.Text             = "by kw"
TitleSub.Name             = "TitleSub"
TitleSub.Position         = UDim2.new(0,46,0,24)

local CloseBtn = Instance.new("TextButton", Tbar)
CloseBtn.BorderSizePixel  = 0
CloseBtn.TextSize          = 11
CloseBtn.TextColor3        = Color3.fromRGB(205,52,52)
CloseBtn.BackgroundColor3  = Color3.fromRGB(27,0,0)
CloseBtn.FontFace          = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)
CloseBtn.Size              = UDim2.new(0,20,0,20)
CloseBtn.Text              = "X"
CloseBtn.Name              = "CloseBtn"
CloseBtn.Position          = UDim2.new(1,-30,0,12)
Instance.new("UICorner", CloseBtn).CornerRadius = UDim.new(0,3)
local _cs = Instance.new("UIStroke", CloseBtn)
_cs.Color = Color3.fromRGB(75,0,0); _cs.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

-- Body
local Body = Instance.new("Frame", Win)
Body.BorderSizePixel  = 0
Body.Size             = UDim2.new(1,0,1,-44)
Body.Position         = UDim2.new(0,0,0,44)
Body.Name             = "Body"
Body.BackgroundTransparency = 1

local SideDiv = Instance.new("Frame", Body)
SideDiv.BorderSizePixel  = 0
SideDiv.BackgroundColor3 = Color3.fromRGB(23,0,38)
SideDiv.Size             = UDim2.new(0,1,0,416)
SideDiv.Position         = UDim2.new(0,134,0,0)
SideDiv.Name             = "SideDiv"

local Sidebar = Instance.new("Frame", Body)
Sidebar.BorderSizePixel  = 0
Sidebar.BackgroundColor3 = Color3.fromRGB(3,3,3)
Sidebar.Size             = UDim2.new(0,135,0,416)
Sidebar.Name             = "Sidebar"
Sidebar.BackgroundTransparency = 1

local SideList = Instance.new("ScrollingFrame", Sidebar)
SideList.ScrollingDirection    = Enum.ScrollingDirection.Y
SideList.BorderSizePixel       = 0
SideList.CanvasSize            = UDim2.new(0,0,0,0)
SideList.Name                  = "SideList"
SideList.AutomaticCanvasSize   = Enum.AutomaticSize.Y
SideList.Size                  = UDim2.new(1,0,1,0)
SideList.ScrollBarImageColor3  = Color3.fromRGB(81,0,131)
SideList.ScrollBarThickness    = 3
SideList.BackgroundTransparency = 1

local _sll = Instance.new("UIListLayout", SideList)
_sll.Padding = UDim.new(0,4); _sll.SortOrder = Enum.SortOrder.LayoutOrder
local _slp = Instance.new("UIPadding", SideList)
_slp.PaddingTop = UDim.new(0,6); _slp.PaddingBottom = UDim.new(0,6)

local function makeTabBtn(name, icon, label, order)
    local btn = Instance.new("TextButton", SideList)
    btn.BorderSizePixel   = 0
    btn.AutoButtonColor   = false
    btn.BackgroundColor3  = Color3.fromRGB(3,3,3)
    btn.Size              = UDim2.new(1,0,0,36)
    btn.LayoutOrder       = order
    btn.Text              = ""
    btn.Name              = name.."TabBtn"

    local ind = Instance.new("Frame", btn)
    ind.Visible           = false
    ind.BackgroundColor3  = Color3.fromRGB(120,0,188)
    ind.Size              = UDim2.new(0,2,0,36)
    ind.Name              = "Indicator"

    local ico = Instance.new("ImageLabel", btn)
    ico.ScaleType         = Enum.ScaleType.Fit
    ico.Image             = icon
    ico.Size              = UDim2.new(0,16,0,16)
    ico.BackgroundTransparency = 1
    ico.Name              = "Icon"
    ico.Position          = UDim2.new(0,10,0,10)

    local lbl = Instance.new("TextLabel", btn)
    lbl.TextSize          = 12
    lbl.TextXAlignment    = Enum.TextXAlignment.Left
    lbl.FontFace          = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
    lbl.TextColor3        = Color3.fromRGB(69,69,69)
    lbl.BackgroundTransparency = 1
    lbl.Size              = UDim2.new(0,85,0,20)
    lbl.Text              = label
    lbl.Name              = "Label"
    lbl.Position          = UDim2.new(0,30,0,8)

    local arr = Instance.new("TextLabel", btn)
    arr.TextSize          = 12
    arr.FontFace          = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)
    arr.TextColor3        = Color3.fromRGB(69,69,69)
    arr.BackgroundTransparency = 1
    arr.Size              = UDim2.new(0,10,0,20)
    arr.Text              = ">"
    arr.Name              = "Arrow"
    arr.Position          = UDim2.new(1,-18,0,8)

    return btn
end

makeTabBtn("Main",    "rbxassetid://10723424646",  "Main",     1)
makeTabBtn("Settings","rbxassetid://10734950309", "Settings", 2)

-- ContentArea
local Cont = Instance.new("Frame", Body)
Cont.BorderSizePixel       = 0
Cont.BackgroundColor3      = Color3.fromRGB(3,3,3)
Cont.Size                  = UDim2.new(1,-135,1,0)
Cont.Position              = UDim2.new(0,135,0,0)
Cont.Name                  = "ContentArea"
Cont.BackgroundTransparency = 1

-- Helper: cria UICorner
local function corner(parent, r)
    Instance.new("UICorner", parent).CornerRadius = UDim.new(0, r or 5)
end
-- Helper: cria UIStroke
local function stroke(parent, color, mode)
    local s = Instance.new("UIStroke", parent)
    s.Color = color; s.ApplyStrokeMode = mode or Enum.ApplyStrokeMode.Border
    return s
end
-- Helper: ToggleFrame
local function makeToggle(parent, xPos, isOn)
    local tf = Instance.new("Frame", parent)
    tf.BorderSizePixel  = 0
    tf.BackgroundColor3 = isOn and Color3.fromRGB(62,0,108) or Color3.fromRGB(18,18,18)
    tf.Size             = UDim2.new(0,34,0,18)
    tf.Position         = xPos or UDim2.new(1,-54,0.5,-9)
    tf.Name             = "ToggleFrame"
    tf:SetAttribute("IsOn", isOn or false)
    corner(tf, 9)
    stroke(tf, isOn and Color3.fromRGB(120,0,188) or Color3.fromRGB(35,0,57))
    local knob = Instance.new("Frame", tf)
    knob.BorderSizePixel  = 0
    knob.BackgroundColor3 = isOn and Color3.fromRGB(188,120,255) or Color3.fromRGB(86,86,86)
    knob.Size             = UDim2.new(0,12,0,12)
    knob.Position         = isOn and UDim2.fromOffset(19,3) or UDim2.fromOffset(3,3)
    knob.Name             = "Knob"
    corner(knob, 6)
    return tf
end
-- Helper: categoria
local function makeCat(page, name, title, order)
    local cat = Instance.new("Frame", page)
    cat.BorderSizePixel  = 0
    cat.BackgroundColor3 = Color3.fromRGB(5,5,5)
    cat.AutomaticSize    = Enum.AutomaticSize.Y
    cat.Size             = UDim2.new(1,0,0,32)
    cat.Name             = name
    cat.LayoutOrder      = order
    corner(cat, 5)
    stroke(cat, Color3.fromRGB(25,0,41))

    local hdr = Instance.new("TextButton", cat)
    hdr.AutoButtonColor    = false
    hdr.BackgroundTransparency = 1
    hdr.Size               = UDim2.new(1,0,0,32)
    hdr.Text               = ""
    hdr.Name               = "Header"

    local ttl = Instance.new("TextLabel", hdr)
    ttl.TextSize           = 12
    ttl.FontFace           = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)
    ttl.TextColor3         = Color3.fromRGB(145,97,188)
    ttl.BackgroundTransparency = 1
    ttl.Size               = UDim2.new(1,-30,1,0)
    ttl.Text               = title
    ttl.Name               = "Title"
    ttl.Position           = UDim2.new(0,11,0,0)

    local arr = Instance.new("TextLabel", hdr)
    arr.TextSize           = 10
    arr.FontFace           = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)
    arr.TextColor3         = Color3.fromRGB(59,59,59)
    arr.BackgroundTransparency = 1
    arr.Size               = UDim2.new(0,16,0,32)
    arr.Text               = "^"
    arr.Name               = "Arrow"
    arr.Position           = UDim2.new(1,-20,0,0)

    local div = Instance.new("Frame", cat)
    div.BorderSizePixel  = 0
    div.BackgroundColor3 = Color3.fromRGB(25,0,41)
    div.Size             = UDim2.new(1,0,0,1)
    div.Position         = UDim2.new(0,0,0,32)
    div.Name             = "Divider"

    local items = Instance.new("Frame", cat)
    items.BorderSizePixel    = 0
    items.AutomaticSize      = Enum.AutomaticSize.Y
    items.Size               = UDim2.new(1,0,0,0)
    items.Position           = UDim2.new(0,0,0,33)
    items.Name               = "Items"
    items.BackgroundTransparency = 1
    local il = Instance.new("UIListLayout", items)
    il.Padding = UDim.new(0,4); il.SortOrder = Enum.SortOrder.LayoutOrder

    return cat, items
end
-- Helper: tag badge
local function makeTag(parent, text, w, xOff)
    local tag = Instance.new("TextLabel", parent)
    tag.BorderSizePixel  = 0
    tag.BackgroundColor3 = Color3.fromRGB(14,0,16)
    tag.FontFace         = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)
    tag.TextColor3       = Color3.fromRGB(154,69,222)
    tag.Size             = UDim2.new(0,w,0,16)
    tag.Text             = text
    tag.Name             = "Tag"
    tag.Position         = UDim2.new(0, xOff or 11, 0, 10)
    corner(tag, 2)
    stroke(tag, Color3.fromRGB(62,0,108))
    return tag
end
-- Helper: item row base (44px)
local function makeItemRow(parent, order)
    local row = Instance.new("Frame", parent)
    row.BorderSizePixel    = 0
    row.Size               = UDim2.new(1,0,0,44)
    row.Name               = "Item"..order
    row.LayoutOrder        = order
    row.BackgroundTransparency = 1
    local d = Instance.new("Frame", row)
    d.BorderSizePixel  = 0
    d.BackgroundColor3 = Color3.fromRGB(13,13,13)
    d.Size             = UDim2.new(1,0,0,1)
    d.Position         = UDim2.new(0,0,1,-1)
    d.Name             = "Div"
    return row
end
-- Helper: label de item
local function makeItemLabel(parent, text, xOff)
    local lbl = Instance.new("TextLabel", parent)
    lbl.TextSize         = 12
    lbl.TextXAlignment   = Enum.TextXAlignment.Left
    lbl.FontFace         = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
    lbl.TextColor3       = Color3.fromRGB(193,193,193)
    lbl.BackgroundTransparency = 1
    lbl.Size             = UDim2.new(1,-220,1,0)
    lbl.Text             = text
    lbl.Name             = "Label"
    lbl.Position         = UDim2.new(0, xOff, 0, 0)
    return lbl
end
-- Helper: small action button
local function makeBtn(parent, text, name, pos, w, h)
    local btn = Instance.new("TextButton", parent)
    btn.BorderSizePixel  = 0
    btn.TextSize         = 10
    btn.TextColor3       = Color3.fromRGB(154,69,222)
    btn.BackgroundColor3 = Color3.fromRGB(16,0,27)
    btn.FontFace         = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
    btn.Size             = UDim2.new(0, w or 60, 0, h or 22)
    btn.Text             = text
    btn.Name             = name or "Btn"
    btn.Position         = pos
    corner(btn, 3)
    stroke(btn, Color3.fromRGB(51,0,97))
    return btn
end
-- Helper: slider
local function makeSlider(parent, xPos, sz)
    local wrap = Instance.new("Frame", parent)
    wrap.Size             = sz or UDim2.new(0,130,0,18)
    wrap.Position         = xPos
    wrap.Name             = "SliderWrap"
    wrap.BackgroundTransparency = 1

    local bg = Instance.new("Frame", wrap)
    bg.BorderSizePixel  = 0
    bg.BackgroundColor3 = Color3.fromRGB(35,0,57)
    bg.Size             = UDim2.new(1,-30,0,4)
    bg.Position         = UDim2.new(0,0,0,7)
    bg.Name             = "SliderBG"
    corner(bg, 2)

    local fill = Instance.new("Frame", bg)
    fill.BorderSizePixel  = 0
    fill.BackgroundColor3 = Color3.fromRGB(120,0,188)
    fill.Size             = UDim2.new(0.5,0,1,0)
    fill.Name             = "Fill"
    corner(fill, 2)

    local knob = Instance.new("Frame", bg)
    knob.BorderSizePixel  = 0
    knob.BackgroundColor3 = Color3.fromRGB(120,0,188)
    knob.Size             = UDim2.new(0,12,0,12)
    knob.Position         = UDim2.new(0.5,-6,0.5,-6)
    knob.Name             = "Knob"
    corner(knob, 6)

    local val = Instance.new("TextLabel", wrap)
    val.TextSize         = 10
    val.FontFace         = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
    val.TextColor3       = Color3.fromRGB(69,69,69)
    val.BackgroundTransparency = 1
    val.Size             = UDim2.new(0,28,0,18)
    val.Text             = "50"
    val.Name             = "Val"
    val.Position         = UDim2.new(1,-28,0,0)

    return wrap
end

-- ================================================================
-- MAIN PAGE
-- ================================================================
local MainPage = Instance.new("ScrollingFrame", Cont)
MainPage.BorderSizePixel      = 0
MainPage.CanvasSize           = UDim2.new(0,0,0,0)
MainPage.Name                 = "MainPage"
MainPage.AutomaticCanvasSize  = Enum.AutomaticSize.Y
MainPage.Size                 = UDim2.new(1,0,1,0)
MainPage.ScrollBarImageColor3 = Color3.fromRGB(62,0,108)
MainPage.ScrollBarThickness   = 3
MainPage.BackgroundTransparency = 1
local _mpl = Instance.new("UIListLayout", MainPage)
_mpl.Padding = UDim.new(0,8); _mpl.SortOrder = Enum.SortOrder.LayoutOrder
local _mpp = Instance.new("UIPadding", MainPage)
_mpp.PaddingTop = UDim.new(0,8); _mpp.PaddingRight = UDim.new(0,7)
_mpp.PaddingLeft = UDim.new(0,7); _mpp.PaddingBottom = UDim.new(0,8)

-- Categoria 1: Componentes Suportados
local compCat, compItems = makeCat(MainPage, "ComponentesSuportadosCat", "Componentes Suportados", 1)

-- Item1 TOGGLE
do
    local row = makeItemRow(compItems, 1)
    makeTag(row, "TOGGLE", 52)
    makeItemLabel(row, "Toggle simples", 70)
    makeToggle(row)
end

-- Item2 TOG+BTN
do
    local row = makeItemRow(compItems, 2)
    makeTag(row, "TOG+BTN", 60)
    makeItemLabel(row, "Toggle com botao", 78)
    makeBtn(row, "Acao", "Btn_Acao", UDim2.new(1,-118,0.5,-11))
    makeToggle(row)
end

-- Item3 TOG+SLIDE
do
    local row = makeItemRow(compItems, 3)
    makeTag(row, "TOG+SLIDE", 68)
    makeItemLabel(row, "Toggle com slider", 86)
    makeSlider(row, UDim2.new(1,-198,0.5,-9))
    makeToggle(row)
end

-- Item4 DROP+BTN
do
    local item4 = Instance.new("Frame", compItems)
    item4.ZIndex           = 5
    item4.BorderSizePixel  = 0
    item4.AutomaticSize    = Enum.AutomaticSize.Y
    item4.Size             = UDim2.new(1,0,0,0)
    item4.Name             = "Item4"
    item4.LayoutOrder      = 4
    item4.BackgroundTransparency = 1
    local il4 = Instance.new("UIListLayout", item4)
    il4.SortOrder = Enum.SortOrder.LayoutOrder
    local d4 = Instance.new("Frame", item4)
    d4.BorderSizePixel  = 0; d4.BackgroundColor3 = Color3.fromRGB(13,13,13)
    d4.Size = UDim2.new(1,0,0,1); d4.Name = "Div"; d4.LayoutOrder = 99

    local row1 = Instance.new("Frame", item4)
    row1.BorderSizePixel  = 0; row1.Size = UDim2.new(1,0,0,44)
    row1.Name = "Row1"; row1.LayoutOrder = 1; row1.BackgroundTransparency = 1

    makeTag(row1, "DROP+BTN", 62)
    makeItemLabel(row1, "Dropdown + botao", 80)

    local ddFrame = Instance.new("Frame", row1)
    ddFrame.ZIndex           = 10; ddFrame.BorderSizePixel = 0
    ddFrame.BackgroundColor3 = Color3.fromRGB(11,0,19)
    ddFrame.Size             = UDim2.new(0,108,0,28)
    ddFrame.Position         = UDim2.new(1,-178,0.5,-14)
    ddFrame.Name             = "DropFrame"
    ddFrame:SetAttribute("DDPanelName", "DDPanel_605349")
    corner(ddFrame, 6)
    stroke(ddFrame, Color3.fromRGB(51,0,91))

    local selTxt = Instance.new("TextLabel", ddFrame)
    selTxt.TextSize       = 11; selTxt.TextXAlignment = Enum.TextXAlignment.Left
    selTxt.FontFace       = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
    selTxt.TextColor3     = Color3.fromRGB(181,141,221)
    selTxt.BackgroundTransparency = 1
    selTxt.Size           = UDim2.new(1,-32,1,0)
    selTxt.Text           = "Player1"; selTxt.Name = "SelTxt"
    selTxt.Position       = UDim2.new(0,10,0,0)

    local arrIcon = Instance.new("TextLabel", ddFrame)
    arrIcon.TextSize      = 14
    arrIcon.FontFace      = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)
    arrIcon.TextColor3    = Color3.fromRGB(154,69,222)
    arrIcon.BackgroundTransparency = 1
    arrIcon.Size          = UDim2.new(0,20,0,28)
    arrIcon.Text          = "⌄"; arrIcon.Name = "ArrIcon"
    arrIcon.Position      = UDim2.new(1,-24,0,0)

    local sep = Instance.new("Frame", ddFrame)
    sep.BorderSizePixel  = 0; sep.BackgroundColor3 = Color3.fromRGB(51,0,91)
    sep.Size = UDim2.new(0,1,0,16); sep.Position = UDim2.new(1,-26,0.5,-8); sep.Name = "Sep"

    makeBtn(row1, "Acao", "Btn_Acao", UDim2.new(1,-63,0.5,-11))
end

-- Item5 FLOAT+BTN
do
    local item5 = Instance.new("Frame", compItems)
    item5.ZIndex           = 5; item5.BorderSizePixel = 0
    item5.AutomaticSize    = Enum.AutomaticSize.Y
    item5.Size             = UDim2.new(1,0,0,0)
    item5.Name             = "Item5"; item5.LayoutOrder = 5
    item5.BackgroundTransparency = 1
    local il5 = Instance.new("UIListLayout", item5)
    il5.SortOrder = Enum.SortOrder.LayoutOrder
    local d5 = Instance.new("Frame", item5)
    d5.BorderSizePixel  = 0; d5.BackgroundColor3 = Color3.fromRGB(13,13,13)
    d5.Size = UDim2.new(1,0,0,1); d5.Name = "Div"; d5.LayoutOrder = 99

    local row1 = Instance.new("Frame", item5)
    row1.BorderSizePixel = 0; row1.Size = UDim2.new(1,0,0,44)
    row1.Name = "Row1"; row1.LayoutOrder = 1; row1.BackgroundTransparency = 1

    makeTag(row1, "FLOAT+BTN", 66)
    makeItemLabel(row1, "Float + botao", 84)

    local bFloat = Instance.new("TextButton", row1)
    bFloat.BorderSizePixel  = 0; bFloat.TextSize = 10
    bFloat.TextColor3  = Color3.fromRGB(154,69,222)
    bFloat.BackgroundColor3 = Color3.fromRGB(16,0,27)
    bFloat.FontFace    = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
    bFloat.Size        = UDim2.new(0,62,0,22); bFloat.Text = "Float"
    bFloat.Name        = "Btn_Float"; bFloat.Position = UDim2.new(1,-128,0.5,-11)
    corner(bFloat, 3); stroke(bFloat, Color3.fromRGB(51,0,97))

    makeBtn(row1, "Acao", "Btn_Acao", UDim2.new(1,-62,0.5,-11), 58)

    -- FloatCfgPanel
    local fcp = Instance.new("Frame", item5)
    fcp.Visible = false; fcp.ZIndex = 10; fcp.BorderSizePixel = 0
    fcp.BackgroundColor3 = Color3.fromRGB(9,0,15)
    fcp.AutomaticSize = Enum.AutomaticSize.Y
    fcp.Size = UDim2.new(1,0,0,0); fcp.Name = "FloatCfgPanel"; fcp.LayoutOrder = 2
    corner(fcp, 4); stroke(fcp, Color3.fromRGB(23,0,38))
    local fcpPad = Instance.new("UIPadding", fcp)
    fcpPad.PaddingTop = UDim.new(0,8); fcpPad.PaddingRight = UDim.new(0,8)
    fcpPad.PaddingLeft = UDim.new(0,8); fcpPad.PaddingBottom = UDim.new(0,8)
    local fcpLL = Instance.new("UIListLayout", fcp)
    fcpLL.Padding = UDim.new(0,6); fcpLL.SortOrder = Enum.SortOrder.LayoutOrder

    -- PR1 Label input
    local pr1 = Instance.new("Frame", fcp)
    pr1.BorderSizePixel = 0; pr1.Size = UDim2.new(1,0,0,24)
    pr1.Name = "PR1"; pr1.LayoutOrder = 1; pr1.BackgroundTransparency = 1
    local lbl1 = Instance.new("TextLabel", pr1)
    lbl1.TextSize = 10; lbl1.TextXAlignment = Enum.TextXAlignment.Left
    lbl1.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
    lbl1.TextColor3 = Color3.fromRGB(86,86,86); lbl1.BackgroundTransparency = 1
    lbl1.Size = UDim2.new(0,55,0,24); lbl1.Text = "Label"
    local lblInp = Instance.new("TextBox", pr1)
    lblInp.Name = "LblInp"; lblInp.TextXAlignment = Enum.TextXAlignment.Left
    lblInp.PlaceholderColor3 = Color3.fromRGB(52,52,52); lblInp.BorderSizePixel = 0
    lblInp.TextSize = 11; lblInp.TextColor3 = Color3.fromRGB(171,171,171)
    lblInp.BackgroundColor3 = Color3.fromRGB(14,14,14)
    lblInp.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
    lblInp.ClearTextOnFocus = false; lblInp.PlaceholderText = "Label..."
    lblInp.Size = UDim2.new(1,-62,0,20); lblInp.Position = UDim2.new(0,60,0,2)
    lblInp.Text = "Auto Shot"
    corner(lblInp, 3); stroke(lblInp, Color3.fromRGB(35,0,57))

    -- PR2 Width slider
    local function makeFCPSlider(parent, bgName, valName, labelText, order)
        local pr = Instance.new("Frame", parent)
        pr.BorderSizePixel = 0; pr.Size = UDim2.new(1,0,0,24)
        pr.Name = "PR"..order; pr.LayoutOrder = order; pr.BackgroundTransparency = 1
        local tl = Instance.new("TextLabel", pr)
        tl.TextSize = 10; tl.TextXAlignment = Enum.TextXAlignment.Left
        tl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
        tl.TextColor3 = Color3.fromRGB(86,86,86); tl.BackgroundTransparency = 1
        tl.Size = UDim2.new(0,55,0,24); tl.Text = labelText
        local bg = Instance.new("Frame", pr)
        bg.BorderSizePixel = 0; bg.BackgroundColor3 = Color3.fromRGB(35,0,57)
        bg.Size = UDim2.new(1,-90,0,4); bg.Position = UDim2.new(0,58,0,10)
        bg.Name = bgName; corner(bg, 2)
        local fill = Instance.new("Frame", bg)
        fill.BorderSizePixel = 0; fill.BackgroundColor3 = Color3.fromRGB(120,0,188)
        fill.Size = UDim2.new(0.5,0,1,0); fill.Name = "Fill"; corner(fill, 2)
        local knob = Instance.new("Frame", bg)
        knob.BorderSizePixel = 0; knob.BackgroundColor3 = Color3.fromRGB(120,0,188)
        knob.Size = UDim2.new(0,10,0,10); knob.Position = UDim2.new(0.5,-5,0.5,-5)
        knob.Name = "Knob"; corner(knob, 5)
        local vl = Instance.new("TextLabel", pr)
        vl.TextSize = 10
        vl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
        vl.TextColor3 = Color3.fromRGB(120,69,171); vl.BackgroundTransparency = 1
        vl.Size = UDim2.new(0,30,0,24); vl.Text = "90px"
        vl.Name = valName; vl.Position = UDim2.new(1,-30,0,0)
        return pr
    end
    makeFCPSlider(fcp, "WBG", "WVal", "Width",  2)
    makeFCPSlider(fcp, "HBG", "HVal", "Height", 3)

    -- PR4 Lock/Save
    local pr4 = Instance.new("Frame", fcp)
    pr4.BorderSizePixel = 0; pr4.Size = UDim2.new(1,0,0,26)
    pr4.Name = "PR4"; pr4.LayoutOrder = 4; pr4.BackgroundTransparency = 1

    local lkBtn = Instance.new("TextButton", pr4)
    lkBtn.BorderSizePixel = 0; lkBtn.TextSize = 10
    lkBtn.TextColor3 = Color3.fromRGB(69,0,103); lkBtn.BackgroundColor3 = Color3.fromRGB(11,0,16)
    lkBtn.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)
    lkBtn.Size = UDim2.new(0,72,0,22); lkBtn.Text = "Livre"; lkBtn.Name = "LockBtn"
    corner(lkBtn, 3); stroke(lkBtn, Color3.fromRGB(27,0,41))

    local svBtn = Instance.new("TextButton", pr4)
    svBtn.BorderSizePixel = 0; svBtn.TextSize = 10
    svBtn.TextColor3 = Color3.fromRGB(205,137,255); svBtn.BackgroundColor3 = Color3.fromRGB(62,0,108)
    svBtn.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)
    svBtn.Size = UDim2.new(0,80,0,22); svBtn.Text = "Save Pos"; svBtn.Name = "SaveBtn"
    svBtn.Position = UDim2.new(0,78,0,0)
    corner(svBtn, 3); stroke(svBtn, Color3.fromRGB(120,0,188))
end

-- Item6 KEYBIND
do
    local item6 = Instance.new("Frame", compItems)
    item6.ZIndex = 5; item6.BorderSizePixel = 0
    item6.AutomaticSize = Enum.AutomaticSize.Y
    item6.Size = UDim2.new(1,0,0,0); item6.Name = "Item6"; item6.LayoutOrder = 6
    item6.BackgroundTransparency = 1
    local il6 = Instance.new("UIListLayout", item6); il6.SortOrder = Enum.SortOrder.LayoutOrder
    local d6 = Instance.new("Frame", item6)
    d6.BorderSizePixel = 0; d6.BackgroundColor3 = Color3.fromRGB(13,13,13)
    d6.Size = UDim2.new(1,0,0,1); d6.Name = "Div"; d6.LayoutOrder = 99

    local row1 = Instance.new("Frame", item6)
    row1.BorderSizePixel = 0; row1.Size = UDim2.new(1,0,0,44)
    row1.Name = "Row1"; row1.LayoutOrder = 1; row1.BackgroundTransparency = 1

    makeTag(row1, "KEYBIND", 58)
    makeItemLabel(row1, "Hotkey de atalho", 76)

    local kbBtn = Instance.new("TextButton", row1)
    kbBtn.BorderSizePixel = 0; kbBtn.TextSize = 11
    kbBtn.TextColor3 = Color3.fromRGB(154,69,222); kbBtn.BackgroundColor3 = Color3.fromRGB(16,0,27)
    kbBtn.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)
    kbBtn.Size = UDim2.new(0,32,0,22); kbBtn.Text = "F"; kbBtn.Name = "KeybindBtn"
    kbBtn.Position = UDim2.new(1,-96,0.5,-11)
    corner(kbBtn, 3); stroke(kbBtn, Color3.fromRGB(51,0,97))
    makeToggle(row1)
end

-- Item7 BOTAO
do
    local row = makeItemRow(compItems, 7)
    makeTag(row, "BOTAO", 46)
    makeItemLabel(row, "Botao de execucao", 64)
    makeBtn(row, "Run", "Btn_Run", UDim2.new(1,-68,0.5,-11))
end

-- Categoria 2: Teste de Scroll
local scrollCat, scrollItems = makeCat(MainPage, "TestedeScrollCat", "Teste de Scroll", 2)
for i = 1, 4 do
    local row = makeItemRow(scrollItems, i)
    makeTag(row, "TESTE", 46)
    makeItemLabel(row, "Botao de teste "..i, 64)
    makeBtn(row, "Acao", "Btn_Acao", UDim2.new(1,-68,0.5,-11))
end

-- ================================================================
-- SETTINGS PAGE
-- ================================================================
local SettingsPage = Instance.new("ScrollingFrame", Cont)
SettingsPage.Visible             = false
SettingsPage.BorderSizePixel     = 0
SettingsPage.CanvasSize          = UDim2.new(0,0,0,0)
SettingsPage.Name                = "SettingsPage"
SettingsPage.AutomaticCanvasSize = Enum.AutomaticSize.Y
SettingsPage.Size                = UDim2.new(1,0,1,0)
SettingsPage.ScrollBarImageColor3 = Color3.fromRGB(62,0,108)
SettingsPage.ScrollBarThickness  = 3
SettingsPage.BackgroundTransparency = 1
local _spl = Instance.new("UIListLayout", SettingsPage)
_spl.Padding = UDim.new(0,8); _spl.SortOrder = Enum.SortOrder.LayoutOrder
local _spp = Instance.new("UIPadding", SettingsPage)
_spp.PaddingTop = UDim.new(0,8); _spp.PaddingRight = UDim.new(0,7)
_spp.PaddingLeft = UDim.new(0,7); _spp.PaddingBottom = UDim.new(0,8)

local cfgCat, cfgItems = makeCat(SettingsPage, "ConfigurationsCat", "Configurations", 1)

-- Settings Item1: Save config input
do
    local row = Instance.new("Frame", cfgItems)
    row.BorderSizePixel = 0; row.Size = UDim2.new(1,0,0,44)
    row.Name = "Item1"; row.LayoutOrder = 1; row.BackgroundTransparency = 1
    local d = Instance.new("Frame", row)
    d.BorderSizePixel = 0; d.BackgroundColor3 = Color3.fromRGB(13,13,13)
    d.Size = UDim2.new(1,0,0,1); d.Position = UDim2.new(0,0,1,-1); d.Name = "Div"

    local cfgInp = Instance.new("TextBox", row)
    cfgInp.Name = "CfgInput"; cfgInp.TextXAlignment = Enum.TextXAlignment.Left
    cfgInp.PlaceholderColor3 = Color3.fromRGB(52,52,52); cfgInp.BorderSizePixel = 0
    cfgInp.TextSize = 12; cfgInp.TextColor3 = Color3.fromRGB(171,171,171)
    cfgInp.BackgroundColor3 = Color3.fromRGB(14,14,14)
    cfgInp.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
    cfgInp.ClearTextOnFocus = false; cfgInp.PlaceholderText = "Config name..."
    cfgInp.Size = UDim2.new(1,-80,0,28); cfgInp.Position = UDim2.new(0,8,0,8); cfgInp.Text = ""
    corner(cfgInp, 5); stroke(cfgInp, Color3.fromRGB(35,0,57))
    local _cp = Instance.new("UIPadding", cfgInp)
    _cp.PaddingRight = UDim.new(0,8); _cp.PaddingLeft = UDim.new(0,8)

    local saveCfgBtn = Instance.new("TextButton", row)
    saveCfgBtn.BorderSizePixel = 0; saveCfgBtn.TextSize = 11
    saveCfgBtn.TextColor3 = Color3.fromRGB(205,137,255); saveCfgBtn.BackgroundColor3 = Color3.fromRGB(62,0,108)
    saveCfgBtn.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)
    saveCfgBtn.Size = UDim2.new(0,60,0,28); saveCfgBtn.Text = "Save"
    saveCfgBtn.Name = "SaveCfgBtn"; saveCfgBtn.Position = UDim2.new(1,-68,0,8)
    corner(saveCfgBtn, 5); stroke(saveCfgBtn, Color3.fromRGB(120,0,188))
end

-- Settings Item2: Config dropdown
do
    local item2 = Instance.new("Frame", cfgItems)
    item2.ZIndex = 5; item2.BorderSizePixel = 0
    item2.AutomaticSize = Enum.AutomaticSize.Y
    item2.Size = UDim2.new(1,0,0,0); item2.Name = "Item2"; item2.LayoutOrder = 2
    item2.BackgroundTransparency = 1
    local il2 = Instance.new("UIListLayout", item2); il2.SortOrder = Enum.SortOrder.LayoutOrder
    local d2 = Instance.new("Frame", item2)
    d2.BorderSizePixel = 0; d2.BackgroundColor3 = Color3.fromRGB(13,13,13)
    d2.Size = UDim2.new(1,0,0,1); d2.Name = "Div"; d2.LayoutOrder = 99

    local row1 = Instance.new("Frame", item2)
    row1.BorderSizePixel = 0; row1.Size = UDim2.new(1,0,0,36)
    row1.Name = "Row1"; row1.LayoutOrder = 1; row1.BackgroundTransparency = 1

    local selFrame = Instance.new("Frame", row1)
    selFrame.BorderSizePixel = 0; selFrame.BackgroundColor3 = Color3.fromRGB(14,14,14)
    selFrame.Size = UDim2.new(1,-16,0,28); selFrame.Position = UDim2.new(0,8,0,4)
    selFrame.Name = "SelectFrame"; corner(selFrame, 5); stroke(selFrame, Color3.fromRGB(35,0,57))

    local selLbl = Instance.new("TextLabel", selFrame)
    selLbl.TextSize = 12; selLbl.TextXAlignment = Enum.TextXAlignment.Left
    selLbl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
    selLbl.TextColor3 = Color3.fromRGB(103,103,103); selLbl.BackgroundTransparency = 1
    selLbl.Size = UDim2.new(1,-20,1,0); selLbl.Text = "-- select config --"; selLbl.Name = "SelLbl"
    selLbl.Position = UDim2.new(0,8,0,0)

    local selArr = Instance.new("TextLabel", selFrame)
    selArr.TextSize = 10
    selArr.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
    selArr.TextColor3 = Color3.fromRGB(103,103,103); selArr.BackgroundTransparency = 1
    selArr.Size = UDim2.new(0,16,0,28); selArr.Text = "v"; selArr.Name = "SelArr"
    selArr.Position = UDim2.new(1,-20,0,0)

    local cfgDropPanel = Instance.new("Frame", item2)
    cfgDropPanel.Visible = false; cfgDropPanel.ZIndex = 10; cfgDropPanel.BorderSizePixel = 0
    cfgDropPanel.BackgroundColor3 = Color3.fromRGB(9,0,15)
    cfgDropPanel.AutomaticSize = Enum.AutomaticSize.Y
    cfgDropPanel.Size = UDim2.new(1,0,0,0); cfgDropPanel.Name = "CfgDropPanel"; cfgDropPanel.LayoutOrder = 2
    corner(cfgDropPanel, 4); stroke(cfgDropPanel, Color3.fromRGB(23,0,38))
    local _cdp = Instance.new("UIPadding", cfgDropPanel)
    _cdp.PaddingTop = UDim.new(0,8); _cdp.PaddingRight = UDim.new(0,8)
    _cdp.PaddingLeft = UDim.new(0,8); _cdp.PaddingBottom = UDim.new(0,8)
    local _cdl = Instance.new("UIListLayout", cfgDropPanel)
    _cdl.Padding = UDim.new(0,6); _cdl.SortOrder = Enum.SortOrder.LayoutOrder

    local emptyLbl = Instance.new("TextLabel", cfgDropPanel)
    emptyLbl.TextSize = 11
    emptyLbl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
    emptyLbl.TextColor3 = Color3.fromRGB(69,69,69); emptyLbl.BackgroundTransparency = 1
    emptyLbl.Size = UDim2.new(1,0,0,24); emptyLbl.Text = "Nenhuma config salva"
    emptyLbl.LayoutOrder = 1; emptyLbl.Name = "EmptyLbl"
end

-- Settings Item3: Global keybind
do
    local item3 = Instance.new("Frame", cfgItems)
    item3.ZIndex = 5; item3.BorderSizePixel = 0
    item3.AutomaticSize = Enum.AutomaticSize.Y
    item3.Size = UDim2.new(1,0,0,0); item3.Name = "Item3"; item3.LayoutOrder = 3
    item3.BackgroundTransparency = 1
    local il3 = Instance.new("UIListLayout", item3); il3.SortOrder = Enum.SortOrder.LayoutOrder
    local d3 = Instance.new("Frame", item3)
    d3.BorderSizePixel = 0; d3.BackgroundColor3 = Color3.fromRGB(13,13,13)
    d3.Size = UDim2.new(1,0,0,1); d3.Name = "Div"; d3.LayoutOrder = 99

    local row1 = Instance.new("Frame", item3)
    row1.BorderSizePixel = 0; row1.Size = UDim2.new(1,0,0,36)
    row1.Name = "Row1"; row1.LayoutOrder = 1; row1.BackgroundTransparency = 1

    local tl = Instance.new("TextLabel", row1)
    tl.TextSize = 12; tl.TextXAlignment = Enum.TextXAlignment.Left
    tl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
    tl.TextColor3 = Color3.fromRGB(193,193,193); tl.BackgroundTransparency = 1
    tl.Size = UDim2.new(1,-100,1,0); tl.Text = "Keybind (abrir/fechar)"
    tl.Position = UDim2.new(0,11,0,0)

    local skbBtn = Instance.new("TextButton", row1)
    skbBtn.BorderSizePixel = 0; skbBtn.TextSize = 9
    skbBtn.TextColor3 = Color3.fromRGB(154,69,222); skbBtn.BackgroundColor3 = Color3.fromRGB(16,0,27)
    skbBtn.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)
    skbBtn.Size = UDim2.new(0,50,0,22); skbBtn.Text = "LeftAlt"
    skbBtn.Name = "SettingsKeybindBtn"; skbBtn.Position = UDim2.new(1,-60,0.5,-11)
    corner(skbBtn, 3); stroke(skbBtn, Color3.fromRGB(51,0,97))
end

-- Settings Item4: Load/Update/Delete buttons
do
    local row = Instance.new("Frame", cfgItems)
    row.BorderSizePixel = 0; row.Size = UDim2.new(1,0,0,40)
    row.Name = "Item4"; row.LayoutOrder = 4; row.BackgroundTransparency = 1
    local d = Instance.new("Frame", row)
    d.BorderSizePixel = 0; d.BackgroundColor3 = Color3.fromRGB(13,13,13)
    d.Size = UDim2.new(1,0,0,1); d.Position = UDim2.new(0,0,1,-1); d.Name = "Div"

    local function makeCfgBtn(text, name, xOff, tc, bc, sc)
        local b = Instance.new("TextButton", row)
        b.BorderSizePixel = 0; b.TextSize = 10
        b.TextColor3 = tc; b.BackgroundColor3 = Color3.fromRGB(16,0,27)
        b.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)
        b.Size = UDim2.new(0,76,0,26); b.Text = text; b.Name = name
        b.Position = UDim2.new(0,xOff,0,7)
        corner(b, 5); stroke(b, sc); return b
    end
    makeCfgBtn("Load",   "LoadBtn",   8,   Color3.fromRGB(154,69,222), nil, Color3.fromRGB(51,0,97))
    makeCfgBtn("Update", "UpdateBtn", 90,  Color3.fromRGB(154,69,222), nil, Color3.fromRGB(51,0,97))
    makeCfgBtn("Delete", "DeleteBtn", 172, Color3.fromRGB(205,52,52),  nil, Color3.fromRGB(75,0,0))
end

-- Settings Item5: Auto-load
do
    local row = Instance.new("Frame", cfgItems)
    row.BorderSizePixel = 0; row.Size = UDim2.new(1,0,0,48)
    row.Name = "Item5"; row.LayoutOrder = 5; row.BackgroundTransparency = 1
    local d = Instance.new("Frame", row)
    d.BorderSizePixel = 0; d.BackgroundColor3 = Color3.fromRGB(13,13,13)
    d.Size = UDim2.new(1,0,0,1); d.Position = UDim2.new(0,0,1,-1); d.Name = "Div"

    local autoFrame = Instance.new("Frame", row)
    autoFrame.BorderSizePixel = 0; autoFrame.BackgroundColor3 = Color3.fromRGB(11,0,17)
    autoFrame.Size = UDim2.new(1,-16,0,36); autoFrame.Position = UDim2.new(0,8,0,6)
    autoFrame.Name = "AutoFrame"; corner(autoFrame, 5); stroke(autoFrame, Color3.fromRGB(27,0,41))

    local atl = Instance.new("TextLabel", autoFrame)
    atl.TextSize = 12; atl.TextXAlignment = Enum.TextXAlignment.Left
    atl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
    atl.TextColor3 = Color3.fromRGB(193,193,193); atl.BackgroundTransparency = 1
    atl.Size = UDim2.new(1,-60,0,16); atl.Text = "Auto-load on start"
    atl.Position = UDim2.new(0,10,0,4)

    local autoVal = Instance.new("TextLabel", autoFrame)
    autoVal.TextSize = 10; autoVal.TextXAlignment = Enum.TextXAlignment.Left
    autoVal.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular)
    autoVal.TextColor3 = Color3.fromRGB(69,0,120); autoVal.BackgroundTransparency = 1
    autoVal.Size = UDim2.new(1,-60,0,12); autoVal.Text = '"none"'
    autoVal.Name = "AutoVal"; autoVal.Position = UDim2.new(0,10,0,22)

    makeToggle(autoFrame, UDim2.new(1,-54,0.5,-9), true)
end

-- ================================================================
-- DD PANEL (dropdown flutuante)
-- ================================================================
local DDPanel = Instance.new("ScrollingFrame", SG)
DDPanel.Visible              = false
DDPanel.ScrollingDirection   = Enum.ScrollingDirection.Y
DDPanel.ZIndex               = 200; DDPanel.BorderSizePixel = 0
DDPanel.CanvasSize           = UDim2.new(0,0,0,128)
DDPanel.Name                 = "DDPanel_605349"
DDPanel.BackgroundColor3     = Color3.fromRGB(11,0,19)
DDPanel.Size                 = UDim2.new(0,108,0,128)
DDPanel.ScrollBarImageColor3 = Color3.fromRGB(101,0,161)
DDPanel.ScrollBarThickness   = 3
DDPanel:SetAttribute("PanelH", 128); DDPanel:SetAttribute("DDOwner", "DropFrame")
corner(DDPanel, 6); stroke(DDPanel, Color3.fromRGB(51,0,91))
local _ddl = Instance.new("UIListLayout", DDPanel); _ddl.SortOrder = Enum.SortOrder.LayoutOrder
local _ddp = Instance.new("UIPadding", DDPanel)
_ddp.PaddingTop = UDim.new(0,8); _ddp.PaddingRight = UDim.new(0,4)
_ddp.PaddingLeft = UDim.new(0,4); _ddp.PaddingBottom = UDim.new(0,8)

local dragHandle = Instance.new("Frame", DDPanel)
dragHandle.ZIndex = 201; dragHandle.BorderSizePixel = 0
dragHandle.BackgroundColor3 = Color3.fromRGB(31,0,51)
dragHandle.Size = UDim2.new(1,-8,0,10); dragHandle.Name = "DragHandle"
corner(dragHandle, 4)
local dhBar = Instance.new("Frame", dragHandle)
dhBar.BorderSizePixel = 0; dhBar.BackgroundColor3 = Color3.fromRGB(121,61,181)
dhBar.Size = UDim2.new(0,24,0,3); dhBar.Position = UDim2.new(0.5,-12,0.5,-1)
corner(dhBar, 2)

local function makeDDOpt(name, text, order, selected)
    local opt = Instance.new("TextButton", DDPanel)
    opt.BorderSizePixel = 0; opt.AutoButtonColor = false
    opt.BackgroundColor3 = Color3.fromRGB(19,0,31)
    opt.Size = UDim2.new(1,-8,0,34); opt.LayoutOrder = order
    opt.Text = ""; opt.Name = name; corner(opt, 5)

    local selBar = Instance.new("Frame", opt)
    selBar.Visible = selected; selBar.BorderSizePixel = 0
    selBar.BackgroundColor3 = Color3.fromRGB(120,0,188)
    selBar.Size = UDim2.new(0,3,0,18); selBar.Position = UDim2.new(0,6,0,8)
    selBar.Name = "SelBar"; corner(selBar, 2)

    local optTxt = Instance.new("TextLabel", opt)
    optTxt.TextSize = 11; optTxt.TextXAlignment = Enum.TextXAlignment.Left
    optTxt.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular)
    optTxt.TextColor3 = selected and Color3.fromRGB(181,121,241) or Color3.fromRGB(131,101,161)
    optTxt.BackgroundTransparency = 1
    optTxt.Size = UDim2.new(1,-28,1,0); optTxt.Text = text
    optTxt.Name = "OptTxt"; optTxt.Position = UDim2.new(0,18,0,0)

    local check = Instance.new("TextLabel", opt)
    check.TextSize = 11
    check.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)
    check.TextColor3 = Color3.fromRGB(154,69,222); check.BackgroundTransparency = 1
    check.Size = UDim2.new(0,20,0,34); check.Text = selected and "✓" or ""
    check.Name = "Check"; check.Position = UDim2.new(1,-22,0,0)
    return opt
end

makeDDOpt("Opt1", "Player1", 1, true)
makeDDOpt("Opt2", "Player2", 2, false)
makeDDOpt("Opt3", "Player3", 3, false)

-- ================================================================
-- CONTROLLER (lógica)
-- ================================================================
do
    local TS  = game:GetService("TweenService")
    local UIS = game:GetService("UserInputService")
    local CAS = game:GetService("ContextActionService")
    local Camera = workspace.CurrentCamera
    local currentKey = Enum.KeyCode.LeftAlt

    local DRAG_ACTION = "KhaosUIDrag"
    local function lockCamera()
        CAS:BindAction(DRAG_ACTION, function() return Enum.ContextActionResult.Sink end, false,
            Enum.UserInputType.Touch, Enum.UserInputType.MouseButton1,
            Enum.UserInputType.MouseMovement)
    end
    local function unlockCamera() CAS:UnbindAction(DRAG_ACTION) end

    local BASE_W, BASE_H, MARGIN = 580, 460, 30

    local function getScale()
        local vp = Camera.ViewportSize
        local minDim = math.min(vp.X, vp.Y)
        local availW = math.max(vp.X - MARGIN*2, 1)
        local availH = math.max(vp.Y - MARGIN*2, 1)
        local scale  = math.min(availW/BASE_W, availH/BASE_H)
        if minDim < 600 then scale = scale * 0.82 end
        return math.clamp(scale, 0.42, 1.05)
    end

    local function safeClamp(val, lo, hi)
        if lo > hi then return (lo+hi)*0.5 end
        return math.clamp(val, lo, hi)
    end

    local function clampWinPosition()
        task.defer(function()
            local vp  = Camera.ViewportSize
            local sz  = Win.AbsoluteSize
            local abs = Win.AbsolutePosition
            local cx  = abs.X + sz.X*0.5; local cy = abs.Y + sz.Y*0.5
            local hw  = sz.X*0.5; local hh = sz.Y*0.5
            local newCX = safeClamp(cx, hw+MARGIN, vp.X-hw-MARGIN)
            local newCY = safeClamp(cy, hh+MARGIN, vp.Y-hh-MARGIN)
            if math.abs(newCX-cx)>1 or math.abs(newCY-cy)>1 then
                Win.Position = UDim2.fromOffset(newCX, newCY)
            end
        end)
    end

    local function applyScale()
        local scale = getScale()
        TS:Create(MainScale, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
            {Scale=scale}):Play()
        clampWinPosition()
    end
    applyScale()

    Camera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
        applyScale()
        task.defer(function()
            local vp = Camera.ViewportSize
            local abs = TUI.AbsolutePosition; local sz = TUI.AbsoluteSize
            if abs.X+sz.X > vp.X-8 or abs.X < 8 or abs.Y+sz.Y > vp.Y-8 or abs.Y < 8 then
                TUI.Position = UDim2.new(0.5,-18,0,12)
            end
        end)
    end)

    -- Drag system
    local activeDrag = nil

    local function applyDragMove(curX, curY)
        if not activeDrag then return end
        local d = activeDrag
        local delta = Vector2.new(curX-d.startCurX, curY-d.startCurY)
        if not d.moved and delta.Magnitude > 4 then d.moved = true end
        if not d.moved then return end
        local newX = d.startObjX + delta.X
        local newY = d.startObjY + delta.Y
        if d.isWin then
            local vp = Camera.ViewportSize
            local sw = d.dragObj.AbsoluteSize.X; local sh = d.dragObj.AbsoluteSize.Y
            newX = safeClamp(newX, sw*0.5+MARGIN, vp.X-sw*0.5-MARGIN)
            newY = safeClamp(newY, sh*0.5+MARGIN, vp.Y-sh*0.5-MARGIN)
        end
        d.dragObj.Position = UDim2.fromOffset(newX, newY)
    end

    UIS.InputChanged:Connect(function(i)
        if not activeDrag then return end
        if i.UserInputType == Enum.UserInputType.MouseMovement then applyDragMove(i.Position.X, i.Position.Y) end
    end)
    UIS.TouchMoved:Connect(function(touch)
        if not activeDrag then return end
        applyDragMove(touch.Position.X, touch.Position.Y)
    end)

    local function makeDraggable(handle, dragObj, onTap)
        handle.InputBegan:Connect(function(i)
            if i.UserInputType ~= Enum.UserInputType.MouseButton1
            and i.UserInputType ~= Enum.UserInputType.Touch then return end
            if activeDrag then return end
            local par    = dragObj.Parent
            local parAbs = par and par.AbsolutePosition or Vector2.zero
            local ax = dragObj.AnchorPoint.X; local ay = dragObj.AnchorPoint.Y
            local sw = dragObj.AbsoluteSize.X; local sh = dragObj.AbsoluteSize.Y
            local absAnchorX = dragObj.AbsolutePosition.X + ax*sw
            local absAnchorY = dragObj.AbsolutePosition.Y + ay*sh
            activeDrag = {
                dragObj   = dragObj,
                startCurX = i.Position.X, startCurY = i.Position.Y,
                startObjX = absAnchorX - parAbs.X,
                startObjY = absAnchorY - parAbs.Y,
                moved = false, isWin = (ax==0.5),
            }
            lockCamera()
        end)
        handle.InputEnded:Connect(function(i)
            if i.UserInputType ~= Enum.UserInputType.MouseButton1
            and i.UserInputType ~= Enum.UserInputType.Touch then return end
            if activeDrag and activeDrag.dragObj == dragObj then
                if not activeDrag.moved and onTap then onTap() end
                activeDrag = nil; unlockCamera()
            end
        end)
    end

    -- Animação abrir/fechar
    local animating = false
    local WIN_W, WIN_H = 580, 460
    local WIN_SIZE  = UDim2.fromOffset(WIN_W, WIN_H)
    local WIN_SIZE0 = UDim2.fromOffset(WIN_W, 0)
    local tiOpen  = TweenInfo.new(0.30, Enum.EasingStyle.Back,  Enum.EasingDirection.Out)
    local tiClose = TweenInfo.new(0.22, Enum.EasingStyle.Quart, Enum.EasingDirection.In)

    local function openWin()
        if animating then return end; animating = true
        local savedPos = Win.Position
        Win.Visible = true; Win.Size = WIN_SIZE0; Win.Position = savedPos
        local t = TS:Create(Win, tiOpen, {Size=WIN_SIZE}); t:Play()
        t.Completed:Connect(function() animating = false end)
    end

    local function closeWin()
        if animating then return end; animating = true
        local savedPos = Win.Position
        local t = TS:Create(Win, tiClose, {Size=WIN_SIZE0}); t:Play()
        t.Completed:Connect(function()
            Win.Visible = false; Win.Size = WIN_SIZE; Win.Position = savedPos; animating = false
        end)
    end

    CloseBtn.MouseButton1Click:Connect(closeWin)
    UIS.InputBegan:Connect(function(i, gp)
        if gp then return end
        if i.KeyCode == currentKey then
            if Win.Visible then closeWin() else openWin() end
        end
    end)

    makeDraggable(Tbar, Win)
    makeDraggable(TUI, TUI, function()
        if Win.Visible then closeWin() else openWin() end
    end)

    -- Abas
    local tabs = {"Main","Settings"}
    local function activateTab(name)
        for _, t in ipairs(tabs) do
            local btn  = SideList:FindFirstChild(t.."TabBtn")
            local page = Cont:FindFirstChild(t.."Page")
            local on   = t == name
            if page then page.Visible = on end
            if btn then
                btn.BackgroundColor3 = on and Color3.fromRGB(14,0,24) or Color3.fromRGB(2,2,2)
                local ind = btn:FindFirstChild("Indicator")
                if ind then ind.Visible = on end
                local lbl = btn:FindFirstChild("Label")
                if lbl then lbl.TextColor3 = on and Color3.fromRGB(176,106,238) or Color3.fromRGB(68,68,68) end
            end
        end
    end
    for _, t in ipairs(tabs) do
        local btn = SideList:FindFirstChild(t.."TabBtn")
        if btn then btn.MouseButton1Click:Connect(function() activateTab(t) end) end
    end
    activateTab("Main")

    -- Categorias collapse/expand
    for _, page in ipairs(Cont:GetChildren()) do
        if page:IsA("ScrollingFrame") then
            for _, cat in ipairs(page:GetChildren()) do
                if cat.Name:find("Cat") then
                    local hdr   = cat:FindFirstChild("Header")
                    local items = cat:FindFirstChild("Items")
                    local arrow = hdr and hdr:FindFirstChild("Arrow")
                    if hdr and items then
                        local open = true
                        hdr.MouseButton1Click:Connect(function()
                            open = not open
                            items.Visible = open
                            if arrow then arrow.Text = open and "^" or "v" end
                        end)
                    end
                end
            end
        end
    end

    -- Toggles
    local tiTog = TweenInfo.new(0.12, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)

    local function setupToggle(desc)
        if desc.Name ~= "ToggleFrame" or not desc:IsA("Frame") then return end
        local knob = desc:FindFirstChild("Knob")
        local function flip()
            local isOn = not desc:GetAttribute("IsOn")
            desc:SetAttribute("IsOn", isOn)
            TS:Create(desc, tiTog, {BackgroundColor3=isOn and Color3.fromRGB(61,0,107) or Color3.fromRGB(17,17,17)}):Play()
            local s = desc:FindFirstChildOfClass("UIStroke")
            if s then s.Color = isOn and Color3.fromRGB(119,0,187) or Color3.fromRGB(34,0,56) end
            if knob then
                TS:Create(knob, tiTog, {
                    Position = isOn and UDim2.fromOffset(19,3) or UDim2.fromOffset(3,3),
                    BackgroundColor3 = isOn and Color3.fromRGB(187,119,255) or Color3.fromRGB(85,85,85),
                }):Play()
            end
        end
        desc.InputBegan:Connect(function(i)
            if i.UserInputType==Enum.UserInputType.MouseButton1
            or i.UserInputType==Enum.UserInputType.Touch then flip() end
        end)
    end

    for _, d in ipairs(Win:GetDescendants()) do setupToggle(d) end

    -- Sliders
    for _, desc in ipairs(Cont:GetDescendants()) do
        if desc.Name ~= "SliderBG" then continue end
        local fill   = desc:FindFirstChild("Fill")
        local knob   = desc:FindFirstChild("Knob")
        local wrap   = desc.Parent
        local valLbl = wrap and wrap:FindFirstChild("Val")
        local minV, maxV = 0, 100
        local sliding = false

        local function applyPct(p)
            p = math.clamp(p,0,1)
            if fill  then fill.Size     = UDim2.new(p,0,1,0) end
            if knob  then knob.Position = UDim2.new(p,-6,0.5,-6) end
            if valLbl then valLbl.Text  = tostring(math.floor(minV+(maxV-minV)*p)) end
        end

        desc.InputBegan:Connect(function(i)
            if i.UserInputType==Enum.UserInputType.MouseButton1
            or i.UserInputType==Enum.UserInputType.Touch then
                sliding=true; applyPct((i.Position.X-desc.AbsolutePosition.X)/desc.AbsoluteSize.X)
            end
        end)
        desc.InputEnded:Connect(function(i)
            if i.UserInputType==Enum.UserInputType.MouseButton1
            or i.UserInputType==Enum.UserInputType.Touch then sliding=false end
        end)
        UIS.InputChanged:Connect(function(i)
            if sliding and (i.UserInputType==Enum.UserInputType.MouseMovement
            or i.UserInputType==Enum.UserInputType.Touch) then
                applyPct((i.Position.X-desc.AbsolutePosition.X)/desc.AbsoluteSize.X)
            end
        end)

        if valLbl then
            local tbox = Instance.new("TextBox")
            tbox.Name = "SliderInput"; tbox.Size = UDim2.new(1,0,1,0)
            tbox.Position = UDim2.fromOffset(0,0)
            tbox.BackgroundColor3 = Color3.fromRGB(20,0,34)
            tbox.BackgroundTransparency = 1
            tbox.TextColor3 = Color3.fromRGB(204,136,255)
            tbox.Font = Enum.Font.GothamBold; tbox.TextSize = 10
            tbox.Text = ""; tbox.PlaceholderText = "0"
            tbox.ClearTextOnFocus = true; tbox.BorderSizePixel = 0
            tbox.ZIndex = (valLbl.ZIndex or 1)+2; tbox.Visible = false
            tbox.Parent = valLbl
            Instance.new("UICorner", tbox).CornerRadius = UDim.new(0,3)

            valLbl.InputBegan:Connect(function(i)
                if i.UserInputType==Enum.UserInputType.MouseButton1
                or i.UserInputType==Enum.UserInputType.Touch then
                    tbox.Text=valLbl.Text; tbox.Visible=true
                    tbox.BackgroundTransparency=0; task.defer(function() tbox:CaptureFocus() end)
                end
            end)
            tbox.FocusLost:Connect(function()
                tbox.Visible=false; tbox.BackgroundTransparency=1
                local v = tonumber(tbox.Text)
                if v then
                    v = math.clamp(math.floor(v), minV, maxV)
                    applyPct((v-minV)/(maxV-minV))
                end
                tbox.Text=""
            end)
            valLbl.MouseEnter:Connect(function()
                TS:Create(valLbl, TweenInfo.new(0.1), {TextColor3=Color3.fromRGB(204,136,255)}):Play()
            end)
            valLbl.MouseLeave:Connect(function()
                TS:Create(valLbl, TweenInfo.new(0.1), {TextColor3=Color3.fromRGB(68,68,68)}):Play()
            end)
        end
    end

    -- Dropdown
    local tiDD        = TweenInfo.new(0.14, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
    local openDDPanel = nil
    local justOpened  = false

    UIS.InputBegan:Connect(function(i)
        if openDDPanel == nil then return end
        if i.UserInputType ~= Enum.UserInputType.MouseButton1
        and i.UserInputType ~= Enum.UserInputType.Touch then return end
        if justOpened then justOpened=false; return end
        openDDPanel.Visible=false; openDDPanel=nil
    end)

    for _, dd in ipairs(Cont:GetDescendants()) do
        if dd.Name ~= "DropFrame" then continue end
        local panelName = dd:GetAttribute("DDPanelName"); if not panelName then continue end
        local panel = SG:FindFirstChild(panelName)
        if not panel then continue end
        local selTxt = dd:FindFirstChild("SelTxt")
        local arrLbl = dd:FindFirstChild("ArrIcon")

        local function repositionPanel()
            local abs = dd.AbsolutePosition; local ddH = dd.AbsoluteSize.Y; local ddW = dd.AbsoluteSize.X
            local vp  = Camera.ViewportSize
            local pH  = panel:GetAttribute("PanelH") or panel.AbsoluteSize.Y
            local pw  = math.max(ddW, 120)
            local px  = safeClamp(abs.X, 8, vp.X-pw-8)
            local spaceBelow = vp.Y-(abs.Y+ddH)-8
            local py = spaceBelow >= pH and abs.Y+ddH+4 or abs.Y-pH-4
            py = safeClamp(py, 8, vp.Y-pH-8)
            panel.Position = UDim2.fromOffset(px,py); panel.Size = UDim2.fromOffset(pw,pH)
        end

        local dHandle = panel:FindFirstChild("DragHandle")
        if dHandle then
            dHandle.InputBegan:Connect(function(i)
                if i.UserInputType ~= Enum.UserInputType.MouseButton1
                and i.UserInputType ~= Enum.UserInputType.Touch then return end
                if activeDrag then return end
                activeDrag = {
                    dragObj=panel, startCurX=i.Position.X, startCurY=i.Position.Y,
                    startObjX=panel.AbsolutePosition.X, startObjY=panel.AbsolutePosition.Y,
                    moved=false, isWin=false,
                }
            end)
            dHandle.InputEnded:Connect(function(i)
                if i.UserInputType ~= Enum.UserInputType.MouseButton1
                and i.UserInputType ~= Enum.UserInputType.Touch then return end
                if activeDrag and activeDrag.dragObj==panel then activeDrag=nil end
            end)
        end

        dd.InputBegan:Connect(function(i)
            if i.UserInputType ~= Enum.UserInputType.MouseButton1
            and i.UserInputType ~= Enum.UserInputType.Touch then return end
            local wasOpen = panel.Visible
            if openDDPanel and openDDPanel ~= panel then
                openDDPanel.Visible=false
                local ownerDD = Cont:FindFirstChild(openDDPanel:GetAttribute("DDOwner") or "", true)
                local ownerArr = ownerDD and ownerDD:FindFirstChild("ArrIcon")
                if ownerArr then ownerArr.Rotation=0 end
            end
            if not wasOpen then
                repositionPanel(); panel.Visible=true; openDDPanel=panel
                justOpened=true; if arrLbl then arrLbl.Rotation=180 end
            else
                panel.Visible=false; openDDPanel=nil
                if arrLbl then arrLbl.Rotation=0 end
            end
        end)

        for _, opt in ipairs(panel:GetChildren()) do
            if not opt:IsA("TextButton") then continue end
            local optTxt = opt:FindFirstChild("OptTxt")
            local selBar = opt:FindFirstChild("SelBar")
            opt.MouseEnter:Connect(function()
                TS:Create(opt, tiDD, {BackgroundColor3=Color3.fromRGB(32,0,52)}):Play()
            end)
            opt.MouseLeave:Connect(function()
                local isSel = selBar and selBar.Visible
                TS:Create(opt, tiDD, {BackgroundColor3=isSel and Color3.fromRGB(26,0,40) or Color3.fromRGB(18,0,30)}):Play()
            end)
            opt.InputBegan:Connect(function(i)
                if i.UserInputType ~= Enum.UserInputType.MouseButton1
                and i.UserInputType ~= Enum.UserInputType.Touch then return end
                justOpened=true
                if selTxt and optTxt then selTxt.Text=optTxt.Text end
                for _, o in ipairs(panel:GetChildren()) do
                    if not o:IsA("TextButton") then continue end
                    local oBar=o:FindFirstChild("SelBar"); local oTxt=o:FindFirstChild("OptTxt")
                    local oCheck=o:FindFirstChild("Check"); local isThis=(o==opt)
                    if oBar   then oBar.Visible=isThis end
                    if oCheck then oCheck.Text=isThis and "✓" or "" end
                    if oTxt   then TS:Create(oTxt,tiDD,{TextColor3=isThis and Color3.fromRGB(180,120,240) or Color3.fromRGB(130,100,160)}):Play() end
                    TS:Create(o,tiDD,{BackgroundColor3=isThis and Color3.fromRGB(26,0,40) or Color3.fromRGB(18,0,30)}):Play()
                end
                panel.Visible=false; openDDPanel=nil
                if arrLbl then arrLbl.Rotation=0 end
            end)
        end
    end

    -- Float btn
    local i5panel = Cont:FindFirstChild("FloatCfgPanel", true)
    local fbLocked = false

    for _, desc in ipairs(Cont:GetDescendants()) do
        if desc.Name == "Btn_Float" then
            local isShow = false
            if i5panel then i5panel.Visible=false end
            desc.MouseButton1Click:Connect(function()
                isShow = not isShow
                FloatBtn.Visible = isShow
                desc.BackgroundColor3 = isShow and Color3.fromRGB(61,0,107) or Color3.fromRGB(15,0,26)
                desc.TextColor3 = isShow and Color3.fromRGB(204,136,255) or Color3.fromRGB(153,68,221)
                if i5panel then i5panel.Visible=isShow end
            end)
        end
    end

    if i5panel then
        local function fsl(bgName, minV, maxV, onChange)
            local bg = i5panel:FindFirstChild(bgName, true); if not bg then return end
            local fill=bg:FindFirstChild("Fill"); local knob=bg:FindFirstChild("Knob")
            local valLbl=i5panel:FindFirstChild(bgName:gsub("BG","Val"), true)
            local sl=false
            local function ap(p)
                p=math.clamp(p,0,1)
                if fill then fill.Size=UDim2.new(p,0,1,0) end
                if knob then knob.Position=UDim2.new(p,-5,0.5,-5) end
                local v=math.floor(minV+(maxV-minV)*p)
                if valLbl then valLbl.Text=tostring(v).."px" end
                if onChange then onChange(v) end
            end
            bg.InputBegan:Connect(function(i)
                if i.UserInputType==Enum.UserInputType.MouseButton1
                or i.UserInputType==Enum.UserInputType.Touch then
                    sl=true; ap((i.Position.X-bg.AbsolutePosition.X)/bg.AbsoluteSize.X) end
            end)
            bg.InputEnded:Connect(function(i)
                if i.UserInputType==Enum.UserInputType.MouseButton1
                or i.UserInputType==Enum.UserInputType.Touch then sl=false end
            end)
            UIS.InputChanged:Connect(function(i)
                if sl and (i.UserInputType==Enum.UserInputType.MouseMovement
                or i.UserInputType==Enum.UserInputType.Touch) then
                    ap((i.Position.X-bg.AbsolutePosition.X)/bg.AbsoluteSize.X) end
            end)
        end
        fsl("WBG",50,200,function(v) FloatBtn.Size=UDim2.fromOffset(v,FloatBtn.Size.Y.Offset) end)
        fsl("HBG",28,100,function(v) FloatBtn.Size=UDim2.fromOffset(FloatBtn.Size.X.Offset,v) end)
        local li=i5panel:FindFirstChild("LblInp",true)
        if li then li:GetPropertyChangedSignal("Text"):Connect(function() FloatBtn.Text=li.Text end) end
        local lb=i5panel:FindFirstChild("LockBtn",true)
        if lb then lb.MouseButton1Click:Connect(function()
            fbLocked=not fbLocked
            lb.Text=fbLocked and "Travado" or "Livre"
            lb.TextColor3=fbLocked and Color3.fromRGB(119,0,187) or Color3.fromRGB(68,0,102)
        end) end
        local sv=i5panel:FindFirstChild("SaveBtn",true)
        if sv then sv.MouseButton1Click:Connect(function()
            sv.Text="Salvo!"; task.delay(1.5,function() if sv then sv.Text="Save Pos" end end)
        end) end
    end

    -- Float drag
    FloatBtn.InputBegan:Connect(function(i)
        if i.UserInputType ~= Enum.UserInputType.MouseButton1
        and i.UserInputType ~= Enum.UserInputType.Touch then return end
        if fbLocked or activeDrag then return end
        local par = FloatBtn.Parent; local parAbs = par and par.AbsolutePosition or Vector2.zero
        activeDrag = {
            dragObj=FloatBtn, startCurX=i.Position.X, startCurY=i.Position.Y,
            startObjX=FloatBtn.AbsolutePosition.X-parAbs.X,
            startObjY=FloatBtn.AbsolutePosition.Y-parAbs.Y,
            moved=false, isWin=false,
        }; lockCamera()
    end)
    FloatBtn.InputEnded:Connect(function(i)
        if i.UserInputType ~= Enum.UserInputType.MouseButton1
        and i.UserInputType ~= Enum.UserInputType.Touch then return end
        if activeDrag and activeDrag.dragObj==FloatBtn then activeDrag=nil; unlockCamera() end
    end)

    -- Keybinds nos itens
    for _, desc in ipairs(Cont:GetDescendants()) do
        if desc.Name == "KeybindBtn" then
            local listening=false
            local function startListen()
                if listening then return end
                listening=true; desc.Text="..."; desc.TextColor3=Color3.fromRGB(204,136,255)
                local con; con=UIS.InputBegan:Connect(function(i,gp)
                    if gp then return end
                    if i.UserInputType==Enum.UserInputType.Keyboard then
                        desc.Text=i.KeyCode.Name:sub(1,6); desc.TextColor3=Color3.fromRGB(153,68,221)
                        listening=false; con:Disconnect()
                    end
                end)
            end
            desc.MouseButton1Click:Connect(startListen)
            desc.InputBegan:Connect(function(i)
                if i.UserInputType==Enum.UserInputType.Touch then startListen() end
            end)
        end
    end

    -- Settings keybind (abrir/fechar)
    local skbBtn2 = Cont:FindFirstChild("SettingsKeybindBtn", true)
    if skbBtn2 then
        local listening=false
        local function startKbListen()
            if listening then return end
            listening=true; skbBtn2.Text="..."; skbBtn2.TextColor3=Color3.fromRGB(204,136,255)
            local con; con=UIS.InputBegan:Connect(function(i,gp)
                if gp then return end
                if i.UserInputType==Enum.UserInputType.Keyboard then
                    currentKey=i.KeyCode; skbBtn2.Text=i.KeyCode.Name:sub(1,8)
                    skbBtn2.TextColor3=Color3.fromRGB(153,68,221); listening=false; con:Disconnect()
                end
            end)
        end
        skbBtn2.MouseButton1Click:Connect(startKbListen)
        skbBtn2.InputBegan:Connect(function(i)
            if i.UserInputType==Enum.UserInputType.Touch then startKbListen() end
        end)
    end

    -- Sistema de configurações
    local configs={}; local selectedCfg=nil
    local cfgDropPanel = Cont:FindFirstChild("CfgDropPanel", true)
    local selLbl       = Cont:FindFirstChild("SelLbl", true)
    local autoVal      = Cont:FindFirstChild("AutoVal", true)

    local function refreshCfgList()
        if not cfgDropPanel then return end
        for _, c in ipairs(cfgDropPanel:GetChildren()) do
            if c:IsA("TextButton") or (c:IsA("TextLabel") and c.Name=="EmptyLbl") then c:Destroy() end
        end
        if #configs==0 then
            local el=Instance.new("TextLabel",cfgDropPanel)
            el.Name="EmptyLbl"; el.Size=UDim2.new(1,0,0,24); el.BackgroundTransparency=1
            el.Text="Nenhuma config salva"; el.TextColor3=Color3.fromRGB(68,68,68)
            el.TextXAlignment=Enum.TextXAlignment.Center; el.Font=Enum.Font.Gotham; el.TextSize=11
            el.LayoutOrder=1; el.BorderSizePixel=0; return
        end
        for i, cfg in ipairs(configs) do
            local ob=Instance.new("TextButton",cfgDropPanel)
            ob.Size=UDim2.new(1,0,0,28); ob.BackgroundTransparency=1
            ob.Text=(cfg.auto and "* " or "  ")..cfg.name
            ob.TextColor3=cfg.name==selectedCfg and Color3.fromRGB(176,106,238) or Color3.fromRGB(136,136,136)
            ob.TextXAlignment=Enum.TextXAlignment.Left; ob.Font=Enum.Font.Gotham; ob.TextSize=12
            ob.LayoutOrder=i; ob.BorderSizePixel=0; ob.ZIndex=15
            Instance.new("UIPadding",ob).PaddingLeft=UDim.new(0,8)
            ob.MouseButton1Click:Connect(function()
                selectedCfg=cfg.name
                if selLbl then selLbl.Text=cfg.name end
                cfgDropPanel.Visible=false; refreshCfgList()
            end)
        end
        if autoVal then
            local auto=nil
            for _, c in ipairs(configs) do if c.auto then auto=c; break end end
            autoVal.Text=auto and '"'..auto.name..'"' or '"none"'
        end
    end

    local selFrame2 = Cont:FindFirstChild("SelectFrame", true)
    if selFrame2 and cfgDropPanel then
        local selBtn=Instance.new("TextButton",selFrame2)
        selBtn.Size=UDim2.new(1,0,1,0); selBtn.BackgroundTransparency=1
        selBtn.Text=""; selBtn.ZIndex=15; selBtn.BorderSizePixel=0
        selBtn.MouseButton1Click:Connect(function() cfgDropPanel.Visible=not cfgDropPanel.Visible end)
    end

    local saveBtn2  = Cont:FindFirstChild("SaveCfgBtn", true)
    local cfgInp2   = Cont:FindFirstChild("CfgInput", true)
    if saveBtn2 then saveBtn2.MouseButton1Click:Connect(function()
        local name = cfgInp2 and cfgInp2.Text:match("^%s*(.-)%s*$") or ""
        if name~="" then
            table.insert(configs,{name=name,auto=false})
            if cfgInp2 then cfgInp2.Text="" end; refreshCfgList()
        end
    end) end

    local deleteBtn2 = Cont:FindFirstChild("DeleteBtn", true)
    if deleteBtn2 then deleteBtn2.MouseButton1Click:Connect(function()
        if not selectedCfg then return end
        for i, c in ipairs(configs) do if c.name==selectedCfg then table.remove(configs,i); break end end
        selectedCfg=nil; if selLbl then selLbl.Text="-- select config --" end; refreshCfgList()
    end) end

    local loadBtn2 = Cont:FindFirstChild("LoadBtn", true)
    if loadBtn2 then loadBtn2.MouseButton1Click:Connect(function()
        if selectedCfg then print("Load: "..selectedCfg) end
    end) end

    local autoFrameCtrl = Win:FindFirstChild("AutoFrame", true)
    if autoFrameCtrl then
        local autoTog2 = autoFrameCtrl:FindFirstChild("ToggleFrame")
        if autoTog2 then
            autoTog2.AttributeChanged:Connect(function(attr)
                if attr~="IsOn" then return end
                local autoOn = autoTog2:GetAttribute("IsOn")
                if autoVal then
                    local auto=nil
                    for _, c in ipairs(configs) do if c.auto then auto=c; break end end
                    autoVal.Text = autoOn and (auto and '"'..auto.name..'"' or '"none"') or '"none"'
                end
            end)
        end
    end

    local updateBtn2 = Cont:FindFirstChild("UpdateBtn", true)
    if updateBtn2 then updateBtn2.MouseButton1Click:Connect(function()
        if not selectedCfg then return end
        for _, c in ipairs(configs) do c.auto=(c.name==selectedCfg) end
        refreshCfgList()
    end) end

    refreshCfgList()
end
