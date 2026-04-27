# iusoahk--[[
    ██╗  ██╗██╗  ██╗ █████╗  ██████╗ ███████╗    ██╗   ██╗██╗
 safeWrite(p, data)██║ ██╔╝██║ ██║██╔══██╗██╔═══██╗██╔════╝ ██║ ██║██║
    █████╔╝ ███████║███████║██║ ██║███████╗ ██║ ██║██║
    ██╔═██╗ ██╔══██║██╔══██║██║ ██║╚════██║ ██║ ██║██║
    ██║ ██╗██║ ██║██║ ██║╚██████╔╝███████║ ╚██████╔╝██║
    ╚═╝ ╚═╝╚═╝ ╚═╝╚═╝ ╚═╝ ╚═════╝ ╚══════╝ ╚═════╝

 Câmera = espaço de trabalho.CurrentCameraKhaosUI — Biblioteca de interface do usuário do Roblox Executor
    Compatível: Móvel (Delta, Codex, etc) + PC (Xeno, Solara, etc)
    Autor: Orial_Dev
    Versão: 1.0.0
--]]

-- ══════════════════════════════════════════════════════════════
-- SERVIÇOS E COMPATIBILIDADE
-- ══════════════════════════════════════════════════════════════
-- DEBUG: confirme que uma biblioteca carregou
imprimir("[KhaosUI] Carregando... Executor:", identificador executor e identificarexecutor() ou "desconhecido")
avistar("[KhaosUI] Se você vir isso, a biblioteca está acontecendo executada corretamente.")

local Jogadores = jogo:GetService("Jogadores")
local RunService = jogo:GetService("ExecutarServiço")
local UserInputService = jogo:GetService("Serviço de entrada do usuário")
local TweenService = jogo:GetService("Serviço Intermediário")
local HttpService = jogo:GetService("Serviço HTTP")

local LocalPlayer = Jogadores.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local Câmara = espaço de trabalho.CurrentCamera

-- Detectar celular
local IsMobile = UserInputService.TouchEnabled e não UserInputService.Teclado habilitado

-- E/S de arquivo seguro (compatível com Delta, Codex, Xeno, Solara)
local função safeWrite(p, dados)
    pcall(function() if writefile then writefile(p, data) end end)
end
local function safeRead(p)
    local ok, data = pcall(function()
        if readfile then return readfile(p) end
    end)
    return ok and data or nil
end
local function safeExists(p)
    local ok, res = pcall(function() return isfile and isfile(p) end)
    return ok and res or false
end
local function safeMkdir(p)
    pcall(function() if makefolder then makefolder(p) end end)
end

-- ══════════════════════════════════════════════════════════════
-- THEME
-- ══════════════════════════════════════════════════════════════
local Theme = {
    Black        = Color3.fromRGB(0,   0,   0),
    BgPanel      = Color3.fromRGB(5,   5,   8),
    BgSidebar    = Color3.fromRGB(3,   3,   5),
    BgItem       = Color3.fromRGB(10,  10,  20),
    BgHover      = Color3.fromRGB(16,  16,  32),
    BgInput      = Color3.fromRGB(7,   7,   16),
    PurpleDeep   = Color3.fromRGB(58,  26,  122),
    PurpleMid    = Color3.fromRGB(80,  32,  160),
    PurpleBright = Color3.fromRGB(112, 64,  208),
    PurpleVivid  = Color3.fromRGB(136, 85,  238),
    Text1        = Color3.fromRGB(212, 202, 255),
    Text2        = Color3.fromRGB(90,  82,  128),
    Text3        = Color3.fromRGB(40,  36,  58),
    Green        = Color3.fromRGB(61,  186, 110),
    Red          = Color3.fromRGB(192, 64,  96),
    White        = Color3.fromRGB(255, 255, 255),
    Transparent  = Color3.fromRGB(0,   0,   0),
}

-- ══════════════════════════════════════════════════════════════
-- UTILITY FUNCTIONS
-- ══════════════════════════════════════════════════════════════
local Util = {}

function Util.Tween(obj, props, dur, style, dir)
    local info = TweenInfo.new(
        dur or 0.18,
        style or Enum.EasingStyle.Quad,
        dir   or Enum.EasingDirection.Out
    )
    local t = TweenService:Create(obj, info, props)
    t:Play()
    return t
end

function Util.Create(class, props, children)
    local obj = Instance.new(class)
    for k, v in pairs(props or {}) do
        if k ~= "Parent" then obj[k] = v end
    end
    for _, child in pairs(children or {}) do
        child.Parent = obj
    end
    if props and props.Parent then obj.Parent = props.Parent end
    return obj
end

function Util.MakeDraggable(frame, handle)
    handle = handle or frame
    local dragging, dragInput, dragStart, startPos

    local function update(input)
        local delta = input.Position - dragStart
        local newPos = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
        frame.Position = newPos
    end

    handle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
            dragging  = true
            dragStart = input.Position
            startPos  = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    handle.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragging and input == dragInput then update(input) end
    end)
end

function Util.RippleEffect(btn, color)
    local ripple = Util.Create("Frame", {
        Parent = btn,
        BackgroundColor3 = color or Theme.PurpleVivid,
        BackgroundTransparency = 0.7,
        BorderSizePixel = 0,
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.fromScale(0.5, 0.5),
        Size = UDim2.fromOffset(0, 0),
        ZIndex = btn.ZIndex + 1,
    })
    Util.Create("UICorner", {Parent = ripple, CornerRadius = UDim.new(1, 0)})
    local sz = math.max(btn.AbsoluteSize.X, btn.AbsoluteSize.Y) * 2
    Util.Tween(ripple, {
        Size = UDim2.fromOffset(sz, sz),
        BackgroundTransparency = 1,
    }, 0.4, Enum.EasingStyle.Quad)
    task.delay(0.4, function() ripple:Destroy() end)
end

-- ══════════════════════════════════════════════════════════════
-- NOTIFY SYSTEM
-- ══════════════════════════════════════════════════════════════
local NotifyHolder

local function buildNotifyHolder(gui)
    NotifyHolder = Util.Create("Frame", {
        Parent = gui,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 300, 1, 0),
        Position = UDim2.new(1, -310, 0, 0),
        AnchorPoint = Vector2.new(0, 0),
        ZIndex = 100,
    })
    Util.Create("UIListLayout", {
        Parent = NotifyHolder,
        SortOrder = Enum.SortOrder.LayoutOrder,
        VerticalAlignment = Enum.VerticalAlignment.Bottom,
        Padding = UDim.new(0, 6),
    })
    Util.Create("UIPadding", {
        Parent = NotifyHolder,
        PaddingBottom = UDim.new(0, 12),
        PaddingRight  = UDim.new(0, 0),
    })
end

local function Notify(opts)
    if not NotifyHolder then return end
    opts = opts or {}
    local title    = opts.Title    or "Notification"
    local content  = opts.Content  or ""
    local duration = opts.Duration or 4

    local card = Util.Create("Frame", {
        Parent = NotifyHolder,
        BackgroundColor3 = Theme.BgItem,
        BorderSizePixel  = 0,
        Size = UDim2.new(1, 0, 0, 0),
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundTransparency = 0,
        ZIndex = 100,
    })
    Util.Create("UICorner",  {Parent = card, CornerRadius = UDim.new(0, 9)})
    Util.Create("UIStroke",  {Parent = card, Color = Theme.PurpleBright, Thickness = 1, Transparency = 0.5})
    Util.Create("UIPadding", {Parent = card, PaddingTop = UDim.new(0,10), PaddingBottom = UDim.new(0,10), PaddingLeft = UDim.new(0,12), PaddingRight = UDim.new(0,12)})

    -- accent bar
    Util.Create("Frame", {
        Parent = card,
        BackgroundColor3 = Theme.PurpleVivid,
        BorderSizePixel  = 0,
        Size = UDim2.new(0, 3, 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        ZIndex = 101,
    })

    local layout = Util.Create("Frame", {
        Parent = card,
        BackgroundTransparency = 1,
        Size = UDim2.new(1, -10, 0, 0),
        Position = UDim2.new(0, 10, 0, 0),
        AutomaticSize = Enum.AutomaticSize.Y,
        ZIndex = 101,
    })
    Util.Create("UIListLayout", {Parent = layout, SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 2)})

    Util.Create("TextLabel", {
        Parent = layout,
        Text = title,
        TextColor3 = Theme.Text1,
        Font = Enum.Font.GothamBold,
        TextSize = 13,
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        Size = UDim2.new(1, 0, 0, 18),
        ZIndex = 101,
        LayoutOrder = 1,
    })
    if content ~= "" then
        Util.Create("TextLabel", {
            Parent = layout,
            Text = content,
            TextColor3 = Theme.Text2,
            Font = Enum.Font.Code,
            TextSize = 11,
            TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            TextWrapped = true,
            ZIndex = 101,
            LayoutOrder = 2,
        })
    end

    -- slide in
    card.Position = UDim2.new(1, 10, 0, 0)
    Util.Tween(card, {Position = UDim2.new(0, 0, 0, 0)}, 0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out)

    -- progress bar
    local bar = Util.Create("Frame", {
        Parent = card,
        BackgroundColor3 = Theme.PurpleVivid,
        BorderSizePixel  = 0,
        Size = UDim2.new(1, 0, 0, 2),
        Position = UDim2.new(0, 0, 1, -2),
        ZIndex = 102,
    })
    Util.Tween(bar, {Size = UDim2.new(0, 0, 0, 2)}, duration, Enum.EasingStyle.Linear)

    task.delay(duration, function()
        Util.Tween(card, {Position = UDim2.new(1, 10, 0, 0), BackgroundTransparency = 1}, 0.2)
        task.delay(0.2, function() card:Destroy() end)
    end)
end

-- ══════════════════════════════════════════════════════════════
-- MAIN LIBRARY
-- ══════════════════════════════════════════════════════════════
local KhaosUI = {}
KhaosUI.__index = KhaosUI

-- Internal state
local _windows = {}
local _options  = {}   -- {id = option object}
local _folder   = "KhaosUI"

function KhaosUI:CreateWindow(opts)
    opts = opts or {}

    local Title      = opts.Title      or "Khaos"
    local TitleAccent= opts.TitleAccent or "UI"
    local SubTitle   = opts.SubTitle   or ""
    local Size       = opts.Size       or Vector2.new(680, 500)
    local MinimizeKey= opts.MinimizeKey or (IsMobile and nil or Enum.KeyCode.RightShift)
    local LogoId     = opts.LogoId     or ""  -- rbxassetid://... optional
    local FolderName = opts.Folder     or "KhaosUI"
    local FloatTab   = opts.FloatingButtonTab -- if nil, goes to Settings

    _folder = FolderName
    safeMkdir(_folder)
    safeMkdir(_folder .. "/configs")

    -- ── GUI ROOT ──
    -- Compatible: Delta, Codex (mobile) + Xeno, Solara (PC)
    local gui

    -- CoreGui method (most executors)
    local ok = pcall(function()
        gui = Instance.new("ScreenGui")
        gui.Name           = "KhaosUI"
        gui.ResetOnSpawn   = false
        gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        gui.DisplayOrder   = 999
        if syn and syn.protect_gui then
            syn.protect_gui(gui)
            gui.Parent = game:GetService("CoreGui")
        elseif gethui then
            gui.Parent = gethui()
        elseif game:GetService("RunService"):IsStudio() then
            gui.Parent = LocalPlayer:WaitForChild("PlayerGui")
        else
            -- Delta / mobile fallback — direct CoreGui
            gui.Parent = game:GetService("CoreGui")
        end
    end)

    -- Final fallback: PlayerGui
    if not ok or not gui then
        gui = Instance.new("ScreenGui")
        gui.Name           = "KhaosUI"
        gui.ResetOnSpawn   = false
        gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        gui.DisplayOrder   = 999
        gui.Parent         = LocalPlayer:WaitForChild("PlayerGui")
    end

    buildNotifyHolder(gui)

    -- ── MAIN WINDOW FRAME ──
    local Window = Util.Create("Frame", {
        Parent = gui,
        Name   = "Window",
        BackgroundColor3 = Theme.BgPanel,
        BorderSizePixel  = 0,
        Size = UDim2.fromOffset(Size.X, Size.Y),
        Position = UDim2.fromScale(0.5, 0.5),
        AnchorPoint = Vector2.new(0.5, 0.5),
        ZIndex = 2,
    })
    Util.Create("UICorner", {Parent = Window, CornerRadius = UDim.new(0, 13)})
    Util.Create("UIStroke", {Parent = Window, Color = Theme.PurpleMid, Thickness = 1, Transparency = 0.65})

    -- drop shadow
    Util.Create("ImageLabel", {
        Parent = Window,
        BackgroundTransparency = 1,
        Image = "rbxassetid://6015897843",
        ImageColor3 = Color3.fromRGB(0,0,0),
        ImageTransparency = 0.4,
        ScaleType = Enum.ScaleType.Slice,
        SliceCenter = Rect.new(49,49,450,450),
        Size = UDim2.new(1, 40, 1, 40),
        Position = UDim2.new(0,-20,0,-20),
        ZIndex = 1,
    })

    -- ── TITLEBAR ──
    local Titlebar = Util.Create("Frame", {
        Parent = Window,
        Name   = "Titlebar",
        BackgroundColor3 = Theme.Black,
        BorderSizePixel  = 0,
        Size = UDim2.new(1, 0, 0, 50),
        ZIndex = 3,
    })
    Util.Create("UICorner", {Parent = Titlebar, CornerRadius = UDim.new(0, 13)})
    -- mask bottom corners
    Util.Create("Frame", {
        Parent = Titlebar,
        BackgroundColor3 = Theme.Black,
        BorderSizePixel  = 0,
        Size  = UDim2.new(1, 0, 0, 20),
        Position = UDim2.new(0, 0, 1, -10),
        ZIndex = 3,
    })
    -- accent line
    Util.Create("Frame", {
        Parent = Titlebar,
        BackgroundColor3 = Theme.PurpleVivid,
        BorderSizePixel  = 0,
        Size = UDim2.new(0.5, 0, 0, 1),
        Position = UDim2.new(0.25, 0, 1, -1),
        BackgroundTransparency = 0.4,
        ZIndex = 4,
    })

    local TitleLayout = Util.Create("Frame", {
        Parent = Titlebar,
        BackgroundTransparency = 1,
        Size = UDim2.new(1, -20, 1, 0),
        Position = UDim2.new(0, 10, 0, 0),
        ZIndex = 4,
    })
    Util.Create("UIListLayout", {
        Parent = TitleLayout,
        FillDirection = Enum.FillDirection.Horizontal,
        VerticalAlignment = Enum.VerticalAlignment.Center,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 8),
    })

    -- Logo image (optional)
    if LogoId ~= "" then
        local logoFrame = Util.Create("ImageLabel", {
            Parent = TitleLayout,
            BackgroundTransparency = 1,
            Image  = LogoId,
            Size   = UDim2.fromOffset(32, 32),
            ZIndex = 4,
            LayoutOrder = 1,
        })
        Util.Create("UICorner", {Parent = logoFrame, CornerRadius = UDim.new(0, 7)})
    end

    -- Separator
    Util.Create("Frame", {
        Parent = TitleLayout,
        BackgroundColor3 = Theme.PurpleMid,
        BorderSizePixel  = 0,
        Size = UDim2.fromOffset(1, 24),
        BackgroundTransparency = 0.3,
        ZIndex = 4,
        LayoutOrder = 2,
    })

    -- Title text container
    local TitleTextHolder = Util.Create("Frame", {
        Parent = TitleLayout,
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 200, 1, 0),
        ZIndex = 4,
        LayoutOrder = 3,
    })
    Util.Create("UIListLayout", {
        Parent = TitleTextHolder,
        SortOrder = Enum.SortOrder.LayoutOrder,
        VerticalAlignment = Enum.VerticalAlignment.Center,
        Padding = UDim.new(0, 1),
    })

    local TitleLabel = Util.Create("TextLabel", {
        Parent = TitleTextHolder,
        Text   = Title .. " " .. TitleAccent,
        TextColor3 = Theme.Text1,
        Font   = Enum.Font.GothamBold,
        TextSize = 15,
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        Size = UDim2.new(1, 0, 0, 20),
        ZIndex = 4,
        LayoutOrder = 1,
    })

    if SubTitle ~= "" then
        Util.Create("TextLabel", {
            Parent = TitleTextHolder,
            Text   = SubTitle,
            TextColor3 = Theme.Text2,
            Font   = Enum.Font.Code,
            TextSize = 9,
            TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, 12),
            ZIndex = 4,
            LayoutOrder = 2,
        })
    end

    -- Close button
    local CloseBtn = Util.Create("TextButton", {
        Parent = Titlebar,
        Text   = "✕",
        TextColor3 = Theme.Text2,
        Font   = Enum.Font.GothamBold,
        TextSize = 13,
        BackgroundTransparency = 1,
        BorderSizePixel  = 0,
        Size = UDim2.fromOffset(26, 26),
        Position = UDim2.new(1, -36, 0.5, -13),
        ZIndex = 5,
        AutoButtonColor = false,
    })
    Util.Create("UICorner", {Parent = CloseBtn, CornerRadius = UDim.new(0, 6)})

    CloseBtn.MouseEnter:Connect(function()
        Util.Tween(CloseBtn, {BackgroundTransparency = 0.7, TextColor3 = Theme.Red}, 0.15)
        CloseBtn.BackgroundColor3 = Theme.Red
    end)
    CloseBtn.MouseLeave:Connect(function()
        Util.Tween(CloseBtn, {BackgroundTransparency = 1, TextColor3 = Theme.Text2}, 0.15)
    end)

    -- ── BODY ──
    local Body = Util.Create("Frame", {
        Parent = Window,
        BackgroundTransparency = 1,
        Size = UDim2.new(1, 0, 1, -50),
        Position = UDim2.new(0, 0, 0, 50),
        ZIndex = 2,
    })

    -- ── SIDEBAR ──
    local Sidebar = Util.Create("ScrollingFrame", {
        Parent = Body,
        BackgroundColor3 = Theme.BgSidebar,
        BorderSizePixel  = 0,
        Size = UDim2.new(0, 162, 1, 0),
        ScrollBarThickness = 0,
        ZIndex = 3,
        CanvasSize = UDim2.new(0, 0, 0, 0),
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
    })
    Util.Create("UICorner", {Parent = Sidebar, CornerRadius = UDim.new(0, 13)})
    Util.Create("Frame", {
        Parent = Sidebar,
        BackgroundColor3 = Theme.BgSidebar,
        BorderSizePixel  = 0,
        Size = UDim2.new(1, 0, 0, 20),
        Position = UDim2.new(0, 0, 1, -10),
        ZIndex = 3,
    })
    -- right border
    Util.Create("Frame", {
        Parent = Body,
        BackgroundColor3 = Theme.PurpleMid,
        BorderSizePixel  = 0,
        Size = UDim2.new(0, 1, 1, 0),
        Position = UDim2.new(0, 162, 0, 0),
        BackgroundTransparency = 0.65,
        ZIndex = 3,
    })
    local SidebarLayout = Util.Create("UIListLayout", {
        Parent = Sidebar,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 2),
    })
    Util.Create("UIPadding", {
        Parent = Sidebar,
        PaddingTop    = UDim.new(0, 8),
        PaddingLeft   = UDim.new(0, 6),
        PaddingRight  = UDim.new(0, 6),
        PaddingBottom = UDim.new(0, 8),
    })

    -- ── CONTENT ──
    local Content = Util.Create("ScrollingFrame", {
        Parent = Body,
        BackgroundTransparency = 1,
        BorderSizePixel  = 0,
        Size = UDim2.new(1, -162, 1, 0),
        Position = UDim2.new(0, 162, 0, 0),
        ScrollBarThickness = 2,
        ScrollBarImageColor3 = Theme.PurpleBright,
        ZIndex = 2,
        CanvasSize = UDim2.new(0, 0, 0, 0),
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
    })
    Util.Create("UIPadding", {
        Parent = Content,
        PaddingTop    = UDim.new(0, 12),
        PaddingLeft   = UDim.new(0, 12),
        PaddingRight  = UDim.new(0, 12),
        PaddingBottom = UDim.new(0, 12),
    })
    local ContentLayout = Util.Create("UIListLayout", {
        Parent = Content,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 6),
    })

    Util.MakeDraggable(Window, Titlebar)

    -- ── WINDOW OBJECT ──
    local WindowObj = {
        _gui       = gui,
        _window    = Window,
        _sidebar   = Sidebar,
        _content   = Content,
        _tabs      = {},
        _activeTab = nil,
        _options   = _options,
        _fbButtons = {},  -- floating buttons registry
        _visible   = true,
        _folder    = _folder,
        Notify     = Notify,
    }

    -- ── CLOSE / MINIMIZE ──
    local function setVisible(state)
        WindowObj._visible = state
        Window.Visible = state
    end

    CloseBtn.MouseButton1Click:Connect(function()
        setVisible(false)
    end)

    if MinimizeKey then
        UserInputService.InputBegan:Connect(function(input, processed)
            if processed then return end
            if input.KeyCode == MinimizeKey then
                setVisible(not WindowObj._visible)
            end
        end)
    end

    -- ── ADD TAB ──
    function WindowObj:AddTab(opts)
        opts = opts or {}
        local tabTitle = opts.Title or "Tab"
        local tabOrder = #self._tabs + 1

        -- Tab button in sidebar
        local TabBtn = Util.Create("TextButton", {
            Parent = Sidebar,
            Text   = "  " .. tabTitle,
            TextColor3 = Theme.Text2,
            Font   = Enum.Font.GothamSemibold,
            TextSize = 11,
            TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundTransparency = 1,
            BorderSizePixel  = 0,
            Size = UDim2.new(1, 0, 0, 34),
            ZIndex = 4,
            AutoButtonColor = false,
            LayoutOrder = tabOrder,
        })
        Util.Create("UICorner", {Parent = TabBtn, CornerRadius = UDim.new(0, 7)})

        -- Active indicator bar
        local TabBar = Util.Create("Frame", {
            Parent = TabBtn,
            BackgroundColor3 = Theme.PurpleVivid,
            BorderSizePixel  = 0,
            Size = UDim2.fromOffset(2, 0),
            Position = UDim2.fromOffset(0, 6),
            BackgroundTransparency = 1,
            ZIndex = 5,
        })
        Util.Create("UICorner", {Parent = TabBar, CornerRadius = UDim.new(0, 2)})

        -- Tab page in content
        local Page = Util.Create("Frame", {
            Parent = Content,
            BackgroundTransparency = 1,
            BorderSizePixel  = 0,
            Size = UDim2.new(1, 0, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            Visible = false,
            ZIndex = 2,
            LayoutOrder = tabOrder,
        })
        Util.Create("UIListLayout", {
            Parent = Page,
            SortOrder = Enum.SortOrder.LayoutOrder,
            Padding = UDim.new(0, 6),
        })

        local TabObj = {
            _btn  = TabBtn,
            _bar  = TabBar,
            _page = Page,
            _window = self,
        }

        -- Activate tab
        local function activate()
            for _, t in pairs(self._tabs) do
                Util.Tween(t._btn, {BackgroundTransparency = 1, TextColor3 = Theme.Text2}, 0.15)
                Util.Tween(t._bar, {Size = UDim2.fromOffset(2, 0), BackgroundTransparency = 1}, 0.15)
                t._btn.BackgroundColor3 = Theme.BgHover
                t._page.Visible = false
            end
            Util.Tween(TabBtn, {BackgroundTransparency = 0.86, TextColor3 = Theme.PurpleVivid}, 0.15)
            TabBtn.BackgroundColor3 = Theme.PurpleVivid
            Util.Tween(TabBar, {
                Size = UDim2.new(0, 2, 0, TabBtn.AbsoluteSize.Y - 12),
                BackgroundTransparency = 0,
            }, 0.15, Enum.EasingStyle.Back)
            Page.Visible = true
            self._activeTab = TabObj
        end

        TabBtn.MouseButton1Click:Connect(function()
            activate()
            Util.RippleEffect(TabBtn, Theme.PurpleVivid)
        end)
        TabBtn.MouseEnter:Connect(function()
            if self._activeTab ~= TabObj then
                Util.Tween(TabBtn, {BackgroundTransparency = 0.92, TextColor3 = Theme.Text1}, 0.12)
                TabBtn.BackgroundColor3 = Theme.BgHover
            end
        end)
        TabBtn.MouseLeave:Connect(function()
            if self._activeTab ~= TabObj then
                Util.Tween(TabBtn, {BackgroundTransparency = 1, TextColor3 = Theme.Text2}, 0.12)
            end
        end)

        table.insert(self._tabs, TabObj)
        if #self._tabs == 1 then activate() end

        -- ── ADD SECTION ──
        function TabObj:AddSection(opts)
            opts = opts or {}
            local secTitle = opts.Title or "Section"

            local Section = Util.Create("Frame", {
                Parent = Page,
                BackgroundColor3 = Theme.BgItem,
                BorderSizePixel  = 0,
                Size = UDim2.new(1, 0, 0, 0),
                AutomaticSize = Enum.AutomaticSize.Y,
                ZIndex = 2,
                LayoutOrder = #Page:GetChildren(),
            })
            Util.Create("UICorner", {Parent = Section, CornerRadius = UDim.new(0, 9)})
            Util.Create("UIStroke", {Parent = Section, Color = Theme.PurpleMid, Thickness = 1, Transparency = 0.65})

            -- Section header
            local SecHead = Util.Create("TextButton", {
                Parent = Section,
                Text   = secTitle:upper(),
                TextColor3 = Theme.PurpleVivid,
                Font   = Enum.Font.GothamBold,
                TextSize = 10,
                TextXAlignment = Enum.TextXAlignment.Left,
                BackgroundTransparency = 1,
                BorderSizePixel  = 0,
                Size = UDim2.new(1, 0, 0, 34),
                ZIndex = 3,
                AutoButtonColor = false,
            })
            Util.Create("UIPadding", {
                Parent = SecHead,
                PaddingLeft = UDim.new(0, 13),
            })

            -- Chevron
            local Chev = Util.Create("TextLabel", {
                Parent = SecHead,
                Text   = "▾",
                TextColor3 = Theme.Text3,
                Font   = Enum.Font.Gotham,
                TextSize = 9,
                BackgroundTransparency = 1,
                Size = UDim2.fromOffset(16, 16),
                Position = UDim2.new(1, -22, 0.5, -8),
                ZIndex = 3,
            })

            -- Section body
            local SecBody = Util.Create("Frame", {
                Parent = Section,
                BackgroundTransparency = 1,
                BorderSizePixel  = 0,
                Size = UDim2.new(1, 0, 0, 0),
                AutomaticSize = Enum.AutomaticSize.Y,
                ZIndex = 2,
            })
            Util.Create("UIListLayout", {
                Parent = SecBody,
                SortOrder = Enum.SortOrder.LayoutOrder,
                Padding = UDim.new(0, 0),
            })
            Util.Create("UIPadding", {
                Parent = SecBody,
                PaddingLeft   = UDim.new(0, 13),
                PaddingRight  = UDim.new(0, 13),
                PaddingBottom = UDim.new(0, 10),
            })

            -- Collapse toggle
            local collapsed = false
            SecHead.MouseButton1Click:Connect(function()
                collapsed = not collapsed
                SecBody.Visible = not collapsed
                Util.Tween(Chev, {Rotation = collapsed and -90 or 0}, 0.18)
            end)

            local SectionObj = {_body = SecBody, _head = SecHead, _window = self._window}

            -- ── ROW HELPER ──
            local function makeRow(parent, order)
                local row = Util.Create("Frame", {
                    Parent = parent,
                    BackgroundTransparency = 1,
                    BorderSizePixel  = 0,
                    Size = UDim2.new(1, 0, 0, 36),
                    ZIndex = 3,
                    LayoutOrder = order or #parent:GetChildren(),
                })
                Util.Create("UIListLayout", {
                    Parent = row,
                    FillDirection = Enum.FillDirection.Horizontal,
                    VerticalAlignment = Enum.VerticalAlignment.Center,
                    SortOrder = Enum.SortOrder.LayoutOrder,
                })
                return row
            end

            local function makeLabel(parent, text, sub)
                local holder = Util.Create("Frame", {
                    Parent = parent,
                    BackgroundTransparency = 1,
                    Size = UDim2.new(1, -120, 1, 0),
                    ZIndex = 3,
                    LayoutOrder = 1,
                })
                Util.Create("UIListLayout", {
                    Parent = holder,
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    VerticalAlignment = Enum.VerticalAlignment.Center,
                    Padding = UDim.new(0, 2),
                })
                Util.Create("TextLabel", {
                    Parent = holder,
                    Text   = text,
                    TextColor3 = Theme.Text1,
                    Font   = Enum.Font.GothamSemibold,
                    TextSize = 13,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    BackgroundTransparency = 1,
                    Size = UDim2.new(1, 0, 0, 16),
                    ZIndex = 3,
                    LayoutOrder = 1,
                })
                if sub and sub ~= "" then
                    Util.Create("TextLabel", {
                        Parent = holder,
                        Text   = sub,
                        TextColor3 = Theme.Text2,
                        Font   = Enum.Font.Code,
                        TextSize = 10,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        BackgroundTransparency = 1,
                        Size = UDim2.new(1, 0, 0, 13),
                        ZIndex = 3,
                        LayoutOrder = 2,
                    })
                end
            end

            -- ══════════════════════════════════════════
            -- PARAGRAPH
            -- ══════════════════════════════════════════
            function SectionObj:AddParagraph(opts)
                opts = opts or {}
                local pTitle   = opts.Title   or ""
                local pContent = opts.Content or ""

                local pFrame = Util.Create("Frame", {
                    Parent = SecBody,
                    BackgroundTransparency = 1,
                    BorderSizePixel  = 0,
                    Size = UDim2.new(1, 0, 0, 0),
                    AutomaticSize = Enum.AutomaticSize.Y,
                    ZIndex = 3,
                    LayoutOrder = #SecBody:GetChildren(),
                })
                Util.Create("UIListLayout", {Parent = pFrame, SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 2)})
                Util.Create("UIPadding", {Parent = pFrame, PaddingTop = UDim.new(0, 8), PaddingBottom = UDim.new(0, 8)})

                if pTitle ~= "" then
                    Util.Create("TextLabel", {
                        Parent = pFrame,
                        Text   = pTitle,
                        TextColor3 = Theme.Text1,
                        Font   = Enum.Font.GothamBold,
                        TextSize = 13,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        BackgroundTransparency = 1,
                        Size = UDim2.new(1, 0, 0, 16),
                        ZIndex = 3, LayoutOrder = 1,
                    })
                end
                Util.Create("TextLabel", {
                    Parent = pFrame,
                    Text   = pContent,
                    TextColor3 = Theme.Text2,
                    Font   = Enum.Font.Code,
                    TextSize = 11,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    BackgroundTransparency = 1,
                    Size = UDim2.new(1, 0, 0, 0),
                    AutomaticSize = Enum.AutomaticSize.Y,
                    TextWrapped = true,
                    ZIndex = 3, LayoutOrder = 2,
                })
            end

            -- ══════════════════════════════════════════
            -- BUTTON
            -- ══════════════════════════════════════════
            function SectionObj:AddButton(opts)
                opts = opts or {}
                local bTitle    = opts.Title    or "Button"
                local bDesc     = opts.Description or ""
                local bCallback = opts.Callback or function() end

                local row = Util.Create("TextButton", {
                    Parent = SecBody,
                    Text   = "",
                    BackgroundTransparency = 1,
                    BorderSizePixel  = 0,
                    Size = UDim2.new(1, 0, 0, bDesc ~= "" and 46 or 36),
                    ZIndex = 3,
                    AutoButtonColor = false,
                    LayoutOrder = #SecBody:GetChildren(),
                })
                Util.Create("UIListLayout", {
                    Parent = row,
                    FillDirection = Enum.FillDirection.Horizontal,
                    VerticalAlignment = Enum.VerticalAlignment.Center,
                })
                makeLabel(row, bTitle, bDesc)

                local arrow = Util.Create("TextLabel", {
                    Parent = row,
                    Text   = "›",
                    TextColor3 = Theme.Text3,
                    Font   = Enum.Font.GothamBold,
                    TextSize = 18,
                    BackgroundTransparency = 1,
                    Size = UDim2.new(0, 20, 1, 0),
                    LayoutOrder = 2,
                    ZIndex = 3,
                })

                row.MouseEnter:Connect(function()
                    Util.Tween(row, {BackgroundTransparency = 0.92}, 0.12)
                    row.BackgroundColor3 = Theme.BgHover
                    Util.Tween(arrow, {TextColor3 = Theme.PurpleVivid}, 0.12)
                end)
                row.MouseLeave:Connect(function()
                    Util.Tween(row, {BackgroundTransparency = 1}, 0.12)
                    Util.Tween(arrow, {TextColor3 = Theme.Text3}, 0.12)
                end)
                row.MouseButton1Click:Connect(function()
                    Util.RippleEffect(row, Theme.PurpleVivid)
                    pcall(bCallback)
                end)
            end

            -- ══════════════════════════════════════════
            -- TOGGLE
            -- ══════════════════════════════════════════
            function SectionObj:AddToggle(id, opts)
                opts = opts or {}
                local tTitle    = opts.Title    or "Toggle"
                local tDefault  = opts.Default  ~= nil and opts.Default or false
                local tCallback = opts.Callback or function() end

                local row = makeRow(SecBody)
                row.Size = UDim2.new(1, 0, 0, 36)
                makeLabel(row, tTitle, "")

                local TrackOff = Theme.BgInput
                local TrackOn  = Theme.PurpleDeep

                local Track = Util.Create("Frame", {
                    Parent = row,
                    BackgroundColor3 = tDefault and TrackOn or TrackOff,
                    BorderSizePixel  = 0,
                    Size = UDim2.fromOffset(36, 19),
                    ZIndex = 4,
                    LayoutOrder = 2,
                })
                Util.Create("UICorner", {Parent = Track, CornerRadius = UDim.new(1, 0)})
                Util.Create("UIStroke", {
                    Parent = Track,
                    Color = tDefault and Theme.PurpleVivid or Theme.PurpleMid,
                    Thickness = 1,
                    Transparency = 0.5,
                })

                local Knob = Util.Create("Frame", {
                    Parent = Track,
                    BackgroundColor3 = tDefault and Color3.fromRGB(220,200,255) or Theme.Text3,
                    BorderSizePixel  = 0,
                    Size = UDim2.fromOffset(13, 13),
                    Position = tDefault and UDim2.new(1,-15,0.5,-6.5) or UDim2.new(0,2,0.5,-6.5),
                    ZIndex = 5,
                })
                Util.Create("UICorner", {Parent = Knob, CornerRadius = UDim.new(1, 0)})

                local state = tDefault
                local togObj = {Value = state}
                local changedCbs = {}

                local function setState(val, silent)
                    state = val
                    togObj.Value = val
                    local stroke = Track:FindFirstChildOfClass("UIStroke")
                    if val then
                        Util.Tween(Track, {BackgroundColor3 = TrackOn}, 0.2)
                        Util.Tween(Knob,  {Position = UDim2.new(1,-15,0.5,-6.5), BackgroundColor3 = Color3.fromRGB(220,200,255)}, 0.2, Enum.EasingStyle.Back)
                        if stroke then Util.Tween(stroke, {Color = Theme.PurpleVivid, Transparency = 0}, 0.2) end
                    else
                        Util.Tween(Track, {BackgroundColor3 = TrackOff}, 0.2)
                        Util.Tween(Knob,  {Position = UDim2.new(0,2,0.5,-6.5), BackgroundColor3 = Theme.Text3}, 0.2, Enum.EasingStyle.Back)
                        if stroke then Util.Tween(stroke, {Color = Theme.PurpleMid, Transparency = 0.5}, 0.2) end
                    end
                    if not silent then
                        pcall(tCallback, val)
                        for _, cb in pairs(changedCbs) do pcall(cb, val) end
                    end
                end

                Track.InputBegan:Connect(function(inp)
                    if inp.UserInputType == Enum.UserInputType.MouseButton1
                    or inp.UserInputType == Enum.UserInputType.Touch then
                        setState(not state)
                        Util.RippleEffect(Track, Theme.PurpleVivid)
                    end
                end)

                function togObj:SetValue(val) setState(val, true) end
                function togObj:OnChanged(cb) table.insert(changedCbs, cb) end

                if id then _options[id] = togObj end
                return togObj
            end

            -- ══════════════════════════════════════════
            -- SLIDER
            -- ══════════════════════════════════════════
            function SectionObj:AddSlider(id, opts)
                opts = opts or {}
                local sTitle    = opts.Title    or "Slider"
                local sDesc     = opts.Description or ""
                local sMin      = opts.Min      or 0
                local sMax      = opts.Max      or 100
                local sDefault  = opts.Default  or sMin
                local sRound    = opts.Rounding  or 0
                local sCallback = opts.Callback  or function() end

                local row = makeRow(SecBody)
                row.Size = UDim2.new(1, 0, 0, sDesc ~= "" and 46 or 36)
                makeLabel(row, sTitle, sDesc)

                local RightHolder = Util.Create("Frame", {
                    Parent = row,
                    BackgroundTransparency = 1,
                    Size = UDim2.fromOffset(170, 30),
                    ZIndex = 3,
                    LayoutOrder = 2,
                })
                Util.Create("UIListLayout", {
                    Parent = RightHolder,
                    FillDirection = Enum.FillDirection.Horizontal,
                    VerticalAlignment = Enum.VerticalAlignment.Center,
                    Padding = UDim.new(0, 6),
                })

                local Track = Util.Create("Frame", {
                    Parent = RightHolder,
                    BackgroundColor3 = Theme.BgInput,
                    BorderSizePixel  = 0,
                    Size = UDim2.new(1, -36, 0, 3),
                    ZIndex = 4,
                    LayoutOrder = 1,
                })
                Util.Create("UICorner", {Parent = Track, CornerRadius = UDim.new(1, 0)})

                local Fill = Util.Create("Frame", {
                    Parent = Track,
                    BackgroundColor3 = Theme.PurpleVivid,
                    BorderSizePixel  = 0,
                    Size = UDim2.fromScale(0, 1),
                    ZIndex = 5,
                })
                Util.Create("UICorner", {Parent = Fill, CornerRadius = UDim.new(1, 0)})

                local Thumb = Util.Create("Frame", {
                    Parent = Track,
                    BackgroundColor3 = Theme.PurpleVivid,
                    BorderSizePixel  = 0,
                    Size = UDim2.fromOffset(13, 13),
                    Position = UDim2.new(0, -6, 0.5, -6),
                    ZIndex = 6,
                })
                Util.Create("UICorner", {Parent = Thumb, CornerRadius = UDim.new(1, 0)})

                local ValLabel = Util.Create("TextLabel", {
                    Parent = RightHolder,
                    Text   = tostring(sDefault),
                    TextColor3 = Theme.PurpleVivid,
                    Font   = Enum.Font.Code,
                    TextSize = 11,
                    BackgroundTransparency = 1,
                    Size = UDim2.fromOffset(30, 20),
                    ZIndex = 4,
                    LayoutOrder = 2,
                })

                local slObj = {Value = sDefault}
                local changedCbs = {}

                local function round(n, d)
                    local m = 10^d
                    return math.floor(n * m + 0.5) / m
                end

                local function setValue(val, silent)
                    val = math.clamp(val, sMin, sMax)
                    val = round(val, sRound)
                    slObj.Value = val
                    local pct = (val - sMin) / (sMax - sMin)
                    Util.Tween(Fill,  {Size = UDim2.fromScale(pct, 1)}, 0.05)
                    Util.Tween(Thumb, {Position = UDim2.new(pct, -6, 0.5, -6)}, 0.05)
                    ValLabel.Text = sRound > 0 and string.format("%." .. sRound .. "f", val) or tostring(val)
                    if not silent then
                        pcall(sCallback, val)
                        for _, cb in pairs(changedCbs) do pcall(cb, val) end
                    end
                end

                setValue(sDefault, true)

                local dragging = false
                local function handleDrag(input)
                    local trackPos  = Track.AbsolutePosition
                    local trackSize = Track.AbsoluteSize
                    local relX = (input.Position.X - trackPos.X) / trackSize.X
                    setValue(sMin + relX * (sMax - sMin))
                end

                Track.InputBegan:Connect(function(inp)
                    if inp.UserInputType == Enum.UserInputType.MouseButton1
                    or inp.UserInputType == Enum.UserInputType.Touch then
                        dragging = true
                        handleDrag(inp)
                    end
                end)
                UserInputService.InputChanged:Connect(function(inp)
                    if not dragging then return end
                    if inp.UserInputType == Enum.UserInputType.MouseMovement
                    or inp.UserInputType == Enum.UserInputType.Touch then
                        handleDrag(inp)
                    end
                end)
                UserInputService.InputEnded:Connect(function(inp)
                    if inp.UserInputType == Enum.UserInputType.MouseButton1
                    or inp.UserInputType == Enum.UserInputType.Touch then
                        dragging = false
                    end
                end)

                function slObj:SetValue(val) setValue(val, true) end
                function slObj:OnChanged(cb) table.insert(changedCbs, cb) end

                if id then _options[id] = slObj end
                return slObj
            end

            -- ══════════════════════════════════════════
            -- DROPDOWN
            -- ══════════════════════════════════════════
            function SectionObj:AddDropdown(id, opts)
                opts = opts or {}
                local dTitle    = opts.Title    or "Dropdown"
                local dDesc     = opts.Description or ""
                local dValues   = opts.Values   or {}
                local dMulti    = opts.Multi    ~= nil and opts.Multi or false
                local dDefault  = opts.Default
                local dCallback = opts.Callback or function() end

                local row = makeRow(SecBody)
                row.Size = UDim2.new(1, 0, 0, dDesc ~= "" and 46 or 36)
                makeLabel(row, dTitle, dDesc)

                local DdHolder = Util.Create("Frame", {
                    Parent = row,
                    BackgroundColor3 = Theme.BgInput,
                    BorderSizePixel  = 0,
                    Size = UDim2.fromOffset(130, 26),
                    ZIndex = 4,
                    LayoutOrder = 2,
                })
                Util.Create("UICorner", {Parent = DdHolder, CornerRadius = UDim.new(0, 6)})
                Util.Create("UIStroke", {Parent = DdHolder, Color = Theme.PurpleMid, Thickness = 1, Transparency = 0.65})

                local DdLabel = Util.Create("TextLabel", {
                    Parent = DdHolder,
                    Text   = dMulti and "none" or "select...",
                    TextColor3 = Theme.Text1,
                    Font   = Enum.Font.GothamSemibold,
                    TextSize = 11,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    BackgroundTransparency = 1,
                    Size = UDim2.new(1, -24, 1, 0),
                    Position = UDim2.fromOffset(8, 0),
                    ZIndex = 5,
                    ClipsDescendants = true,
                })
                local Arrow = Util.Create("TextLabel", {
                    Parent = DdHolder,
                    Text   = "▾",
                    TextColor3 = Theme.Text3,
                    Font   = Enum.Font.Gotham,
                    TextSize = 9,
                    BackgroundTransparency = 1,
                    Size = UDim2.fromOffset(16, 16),
                    Position = UDim2.new(1, -18, 0.5, -8),
                    ZIndex = 5,
                })

                -- Dropdown menu
                local Menu = Util.Create("Frame", {
                    Parent = gui, -- parent to gui so it overlaps everything
                    BackgroundColor3 = Theme.BgItem,
                    BorderSizePixel  = 0,
                    Size = UDim2.fromOffset(130, 0),
                    ZIndex = 50,
                    Visible = false,
                    ClipsDescendants = true,
                })
                Util.Create("UICorner", {Parent = Menu, CornerRadius = UDim.new(0, 8)})
                Util.Create("UIStroke", {Parent = Menu, Color = Theme.PurpleBright, Thickness = 1, Transparency = 0.5})

                local MenuLayout = Util.Create("UIListLayout", {Parent = Menu, SortOrder = Enum.SortOrder.LayoutOrder})
                local MenuScroll = Util.Create("ScrollingFrame", {
                    Parent = Menu,
                    BackgroundTransparency = 1,
                    BorderSizePixel  = 0,
                    Size = UDim2.new(1, 0, 1, 0),
                    CanvasSize = UDim2.new(0, 0, 0, 0),
                    AutomaticCanvasSize = Enum.AutomaticSize.Y,
                    ScrollBarThickness = 2,
                    ScrollBarImageColor3 = Theme.PurpleBright,
                    ZIndex = 51,
                })
                local MenuItemLayout = Util.Create("UIListLayout", {Parent = MenuScroll, SortOrder = Enum.SortOrder.LayoutOrder})

                local open = false
                local selected = dMulti and {} or nil
                local ddObj = {Value = selected}
                local changedCbs = {}

                local function updateLabel()
                    if dMulti then
                        local keys = {}
                        for k, v in pairs(selected) do if v then table.insert(keys, k) end end
                        DdLabel.Text = #keys > 0 and table.concat(keys, ", ") or "none"
                        ddObj.Value  = selected
                    else
                        DdLabel.Text = selected or "select..."
                        ddObj.Value  = selected
                    end
                end

                local function closeMenu()
                    open = false
                    Util.Tween(Menu, {Size = UDim2.fromOffset(130, 0)}, 0.15, Enum.EasingStyle.Quad)
                    Util.Tween(Arrow, {Rotation = 0}, 0.15)
                    task.delay(0.15, function() Menu.Visible = false end)
                end

                local function openMenu()
                    open = true
                    -- position below holder
                    local abs = DdHolder.AbsolutePosition
                    local sz  = DdHolder.AbsoluteSize
                    Menu.Position = UDim2.fromOffset(abs.X, abs.Y + sz.Y + 4)
                    Menu.Size = UDim2.fromOffset(sz.X, 0)
                    Menu.Visible = true
                    local itemCount = math.min(#dValues, 6)
                    Util.Tween(Menu, {Size = UDim2.fromOffset(sz.X, itemCount * 30 + 4)}, 0.15, Enum.EasingStyle.Back)
                    Util.Tween(Arrow, {Rotation = 180}, 0.15)
                end

                -- Build items
                for _, val in ipairs(dValues) do
                    local item = Util.Create("TextButton", {
                        Parent = MenuScroll,
                        Text   = "  " .. tostring(val),
                        TextColor3 = Theme.Text2,
                        Font   = Enum.Font.GothamSemibold,
                        TextSize = 12,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        BackgroundTransparency = 1,
                        BorderSizePixel  = 0,
                        Size = UDim2.new(1, 0, 0, 30),
                        ZIndex = 52,
                        AutoButtonColor = false,
                        LayoutOrder = _,
                    })

                    item.MouseEnter:Connect(function()
                        Util.Tween(item, {BackgroundTransparency = 0.88, TextColor3 = Theme.Text1}, 0.1)
                        item.BackgroundColor3 = Theme.BgHover
                    end)
                    item.MouseLeave:Connect(function()
                        local isSel = dMulti and selected[val] or selected == val
                        Util.Tween(item, {BackgroundTransparency = 1, TextColor3 = isSel and Theme.PurpleVivid or Theme.Text2}, 0.1)
                    end)

                    item.MouseButton1Click:Connect(function()
                        if dMulti then
                            selected[val] = not selected[val]
                            Util.Tween(item, {TextColor3 = selected[val] and Theme.PurpleVivid or Theme.Text2}, 0.12)
                        else
                            selected = val
                            -- update all items
                            for _, ch in pairs(MenuScroll:GetChildren()) do
                                if ch:IsA("TextButton") then
                                    Util.Tween(ch, {TextColor3 = Theme.Text2}, 0.1)
                                end
                            end
                            Util.Tween(item, {TextColor3 = Theme.PurpleVivid}, 0.12)
                            closeMenu()
                        end
                        updateLabel()
                        pcall(dCallback, ddObj.Value)
                        for _, cb in pairs(changedCbs) do pcall(cb, ddObj.Value) end
                    end)
                end

                DdHolder.InputBegan:Connect(function(inp)
                    if inp.UserInputType == Enum.UserInputType.MouseButton1
                    or inp.UserInputType == Enum.UserInputType.Touch then
                        if open then closeMenu() else openMenu() end
                    end
                end)

                -- Close on outside click
                UserInputService.InputBegan:Connect(function(inp)
                    if open and (inp.UserInputType == Enum.UserInputType.MouseButton1
                    or inp.UserInputType == Enum.UserInputType.Touch) then
                        local pos = inp.Position
                        local mAbs = Menu.AbsolutePosition
                        local mSz  = Menu.AbsoluteSize
                        if not (pos.X >= mAbs.X and pos.X <= mAbs.X + mSz.X
                            and pos.Y >= mAbs.Y and pos.Y <= mAbs.Y + mSz.Y) then
                            closeMenu()
                        end
                    end
                end)

                -- Set default
                if dDefault then
                    if dMulti and type(dDefault) == "table" then
                        for _, v in pairs(dDefault) do selected[v] = true end
                    elseif not dMulti then
                        selected = dMulti and selected or dValues[dDefault] or dDefault
                    end
                    updateLabel()
                end

                function ddObj:SetValue(val)
                    if dMulti and type(val) == "table" then
                        for k, v in pairs(val) do selected[k] = v end
                    else
                        selected = val
                    end
                    updateLabel()
                end
                function ddObj:OnChanged(cb) table.insert(changedCbs, cb) end

                if id then _options[id] = ddObj end
                return ddObj
            end

            -- ══════════════════════════════════════════
            -- KEYBIND
            -- ══════════════════════════════════════════
            function SectionObj:AddKeybind(id, opts)
                opts = opts or {}
                local kTitle    = opts.Title    or "Keybind"
                local kDefault  = opts.Default  or "None"
                local kMode     = opts.Mode     or "Toggle"  -- Toggle | Hold | Always
                local kCallback = opts.Callback  or function() end
                local kChanged  = opts.ChangedCallback or function() end

                local row = makeRow(SecBody)
                row.Size = UDim2.new(1, 0, 0, 36)
                makeLabel(row, kTitle, "")

                local Badge = Util.Create("TextButton", {
                    Parent = row,
                    Text   = kDefault,
                    TextColor3 = Theme.Text1,
                    Font   = Enum.Font.Code,
                    TextSize = 11,
                    BackgroundColor3 = Theme.BgInput,
                    BorderSizePixel  = 0,
                    Size = UDim2.fromOffset(60, 22),
                    ZIndex = 4,
                    AutoButtonColor = false,
                    LayoutOrder = 2,
                })
                Util.Create("UICorner", {Parent = Badge, CornerRadius = UDim.new(0, 5)})
                Util.Create("UIStroke", {Parent = Badge, Color = Theme.PurpleMid, Thickness = 1, Transparency = 0.65})

                local kbObj   = {Value = kDefault, Mode = kMode}
                local state   = false
                local listening = false
                local clickCbs  = {}
                local changedCbs= {}

                local function setState(s)
                    state = s
                    pcall(kCallback, s)
                    for _, cb in pairs(clickCbs) do pcall(cb) end
                end

                Badge.MouseButton1Click:Connect(function()
                    if listening then return end
                    listening = true
                    Badge.Text = "..."
                    Util.Tween(Badge:FindFirstChildOfClass("UIStroke"), {Color = Theme.PurpleVivid}, 0.1)
                    local conn
                    conn = UserInputService.InputBegan:Connect(function(inp, proc)
                        if proc then return end
                        local key = inp.KeyCode ~= Enum.KeyCode.Unknown
                            and inp.KeyCode.Name
                            or inp.UserInputType.Name
                        kbObj.Value = key
                        Badge.Text  = key
                        listening   = false
                        Util.Tween(Badge:FindFirstChildOfClass("UIStroke"), {Color = Theme.PurpleMid, Transparency = 0.65}, 0.1)
                        pcall(kChanged, inp.KeyCode ~= Enum.KeyCode.Unknown and inp.KeyCode or inp.UserInputType)
                        for _, cb in pairs(changedCbs) do pcall(cb, kbObj.Value) end
                        conn:Disconnect()
                    end)
                end)

                UserInputService.InputBegan:Connect(function(inp, proc)
                    if proc or listening then return end
                    local key = inp.KeyCode ~= Enum.KeyCode.Unknown
                        and inp.KeyCode.Name or inp.UserInputType.Name
                    if key == kbObj.Value then
                        if kMode == "Toggle" then setState(not state)
                        elseif kMode == "Hold" then setState(true)
                        elseif kMode == "Always" then setState(true) end
                    end
                end)
                UserInputService.InputEnded:Connect(function(inp)
                    local key = inp.KeyCode ~= Enum.KeyCode.Unknown
                        and inp.KeyCode.Name or inp.UserInputType.Name
                    if key == kbObj.Value and kMode == "Hold" then setState(false) end
                end)

                function kbObj:SetValue(key, mode)
                    self.Value = key; self.Mode = mode or kMode
                    Badge.Text = key
                end
                function kbObj:GetState() return state end
                function kbObj:OnClick(cb) table.insert(clickCbs, cb) end
                function kbObj:OnChanged(cb) table.insert(changedCbs, cb) end

                if id then _options[id] = kbObj end
                return kbObj
            end

            -- ══════════════════════════════════════════
            -- INPUT
            -- ══════════════════════════════════════════
            function SectionObj:AddInput(id, opts)
                opts = opts or {}
                local iTitle    = opts.Title    or "Input"
                local iDefault  = opts.Default  or ""
                local iPlaceholder = opts.Placeholder or ""
                local iNumeric  = opts.Numeric  or false
                local iFinished = opts.Finished or false
                local iCallback = opts.Callback or function() end

                local row = makeRow(SecBody)
                row.Size = UDim2.new(1, 0, 0, 36)
                makeLabel(row, iTitle, "")

                local Box = Util.Create("TextBox", {
                    Parent = row,
                    Text   = iDefault,
                    PlaceholderText = iPlaceholder,
                    PlaceholderColor3 = Theme.Text3,
                    TextColor3 = Theme.Text1,
                    Font   = Enum.Font.Code,
                    TextSize = 11,
                    BackgroundColor3 = Theme.BgInput,
                    BorderSizePixel  = 0,
                    Size = UDim2.fromOffset(130, 24),
                    ZIndex = 4,
                    LayoutOrder = 2,
                    ClearTextOnFocus = false,
                })
                Util.Create("UICorner", {Parent = Box, CornerRadius = UDim.new(0, 6)})
                Util.Create("UIStroke", {Parent = Box, Color = Theme.PurpleMid, Thickness = 1, Transparency = 0.65})
                Util.Create("UIPadding", {Parent = Box, PaddingLeft = UDim.new(0, 8)})

                local inObj = {Value = iDefault}
                local changedCbs = {}

                Box.Focused:Connect(function()
                    Util.Tween(Box:FindFirstChildOfClass("UIStroke"), {Color = Theme.PurpleVivid, Transparency = 0}, 0.15)
                end)
                Box.FocusLost:Connect(function(enter)
                    Util.Tween(Box:FindFirstChildOfClass("UIStroke"), {Color = Theme.PurpleMid, Transparency = 0.65}, 0.15)
                    if iNumeric then
                        local n = tonumber(Box.Text)
                        Box.Text = n and tostring(n) or iDefault
                    end
                    if iFinished and enter then
                        inObj.Value = Box.Text
                        pcall(iCallback, Box.Text)
                        for _, cb in pairs(changedCbs) do pcall(cb, Box.Text) end
                    end
                end)
                Box:GetPropertyChangedSignal("Text"):Connect(function()
                    if iNumeric and not tonumber(Box.Text) and Box.Text ~= "" and Box.Text ~= "-" then
                        Box.Text = inObj.Value
                        return
                    end
                    inObj.Value = Box.Text
                    if not iFinished then
                        pcall(iCallback, Box.Text)
                        for _, cb in pairs(changedCbs) do pcall(cb, Box.Text) end
                    end
                end)

                function inObj:SetValue(val) Box.Text = tostring(val); self.Value = val end
                function inObj:OnChanged(cb) table.insert(changedCbs, cb) end

                if id then _options[id] = inObj end
                return inObj
            end

            -- ══════════════════════════════════════════
            -- FLOATING BUTTON
            -- ══════════════════════════════════════════
            function SectionObj:AddFloatingButton(id, opts)
                opts = opts or {}
                local fbTitle    = opts.Title    or "Button"
                local fbDefault  = opts.Default  ~= nil and opts.Default or false
                local fbCallback = opts.Callback or function() end
                local fbSize     = opts.Size     or Vector2.new(90, 40)
                local fbPos      = opts.Position or Vector2.new(20, 200)

                -- Control row in the hub section
                local row = makeRow(SecBody)
                row.Size = UDim2.new(1, 0, 0, 36)

                -- Label area
                local lHolder = Util.Create("Frame", {
                    Parent = row,
                    BackgroundTransparency = 1,
                    Size = UDim2.new(1, -200, 1, 0),
                    ZIndex = 3, LayoutOrder = 1,
                })
                Util.Create("UIListLayout", {Parent = lHolder, VerticalAlignment = Enum.VerticalAlignment.Center, Padding = UDim.new(0,2)})
                Util.Create("TextLabel", {
                    Parent = lHolder, Text = fbTitle,
                    TextColor3 = Theme.Text1, Font = Enum.Font.GothamSemibold,
                    TextSize = 13, TextXAlignment = Enum.TextXAlignment.Left,
                    BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 16), ZIndex = 3, LayoutOrder = 1,
                })
                Util.Create("TextLabel", {
                    Parent = lHolder, Text = "floating button",
                    TextColor3 = Theme.Text2, Font = Enum.Font.Code,
                    TextSize = 10, TextXAlignment = Enum.TextXAlignment.Left,
                    BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 13), ZIndex = 3, LayoutOrder = 2,
                })

                -- Edit toggle + visibility toggle
                local rightHolder = Util.Create("Frame", {
                    Parent = row,
                    BackgroundTransparency = 1,
                    Size = UDim2.fromOffset(195, 30),
                    ZIndex = 3, LayoutOrder = 2,
                })
                Util.Create("UIListLayout", {
                    Parent = rightHolder,
                    FillDirection = Enum.FillDirection.Horizontal,
                    VerticalAlignment = Enum.VerticalAlignment.Center,
                    Padding = UDim.new(0, 6),
                })

                -- Edit Position button
                local EditBtn = Util.Create("TextButton", {
                    Parent = rightHolder,
                    Text   = "✥ Edit Pos",
                    TextColor3 = Theme.Text2,
                    Font   = Enum.Font.GothamSemibold,
                    TextSize = 10,
                    BackgroundColor3 = Theme.BgInput,
                    BorderSizePixel  = 0,
                    Size = UDim2.fromOffset(72, 24),
                    ZIndex = 4,
                    AutoButtonColor = false,
                    LayoutOrder = 1,
                })
                Util.Create("UICorner", {Parent = EditBtn, CornerRadius = UDim.new(0, 6)})
                Util.Create("UIStroke", {Parent = EditBtn, Color = Theme.PurpleMid, Thickness = 1, Transparency = 0.65})

                -- Visibility toggle
                local VisTrack = Util.Create("Frame", {
                    Parent = rightHolder,
                    BackgroundColor3 = Theme.PurpleDeep,
                    BorderSizePixel  = 0,
                    Size = UDim2.fromOffset(36, 19),
                    ZIndex = 4, LayoutOrder = 2,
                })
                Util.Create("UICorner", {Parent = VisTrack, CornerRadius = UDim.new(1, 0)})
                Util.Create("UIStroke", {Parent = VisTrack, Color = Theme.PurpleVivid, Thickness = 1, Transparency = 0.5})
                local VisKnob = Util.Create("Frame", {
                    Parent = VisTrack,
                    BackgroundColor3 = Color3.fromRGB(220,200,255),
                    BorderSizePixel  = 0,
                    Size = UDim2.fromOffset(13, 13),
                    Position = UDim2.new(1,-15,0.5,-6.5),
                    ZIndex = 5,
                })
                Util.Create("UICorner", {Parent = VisKnob, CornerRadius = UDim.new(1, 0)})

                -- ── THE ACTUAL FLOATING BUTTON ──
                local FBtn = Util.Create("TextButton", {
                    Parent = gui,
                    Text   = fbTitle,
                    TextColor3 = Theme.Text1,
                    Font   = Enum.Font.GothamBold,
                    TextSize = 13,
                    BackgroundColor3 = Color3.fromRGB(10,10,20),
                    BackgroundTransparency = 0.08,
                    BorderSizePixel  = 0,
                    Size = UDim2.fromOffset(fbSize.X, fbSize.Y),
                    Position = UDim2.fromOffset(fbPos.X, fbPos.Y),
                    ZIndex = 20,
                    AutoButtonColor = false,
                    Visible = true,
                    ClipsDescendants = true,
                })
                Util.Create("UICorner", {Parent = FBtn, CornerRadius = UDim.new(0, 10)})
                local FBtnStroke = Util.Create("UIStroke", {Parent = FBtn, Color = Theme.PurpleBright, Thickness = 1, Transparency = 0.5})

                -- drag handle bar at top
                Util.Create("Frame", {
                    Parent = FBtn,
                    BackgroundColor3 = Theme.PurpleBright,
                    BorderSizePixel  = 0,
                    Size = UDim2.new(0, 24, 0, 3),
                    Position = UDim2.new(0.5, -12, 0, 3),
                    BackgroundTransparency = 0.5,
                    ZIndex = 21,
                })
                Util.Create("UICorner", {Parent = FBtn:FindFirstChildOfClass("Frame"), CornerRadius = UDim.new(1,0)})

                local fbState  = fbDefault
                local editMode = false
                local fbVisible = true
                local fbObj = {Value = fbState}
                local clickCbs   = {}
                local changedCbs = {}

                -- Toggle active state
                local function setActive(val, silent)
                    fbState = val
                    fbObj.Value = val
                    if val then
                        Util.Tween(FBtn, {BackgroundColor3 = Color3.fromRGB(58,26,122), BackgroundTransparency = 0.05}, 0.2)
                        Util.Tween(FBtnStroke, {Color = Theme.PurpleVivid, Transparency = 0}, 0.2)
                    else
                        Util.Tween(FBtn, {BackgroundColor3 = Color3.fromRGB(10,10,20), BackgroundTransparency = 0.08}, 0.2)
                        Util.Tween(FBtnStroke, {Color = Theme.PurpleBright, Transparency = 0.5}, 0.2)
                    end
                    if not silent then
                        pcall(fbCallback, val)
                        for _, cb in pairs(changedCbs) do pcall(cb, val) end
                    end
                end
                setActive(fbDefault, true)

                -- Tap/click when NOT in edit mode
                FBtn.MouseButton1Click:Connect(function()
                    if editMode then return end
                    setActive(not fbState)
                    Util.RippleEffect(FBtn, Theme.PurpleVivid)
                end)

                -- Edit mode toggle (from hub panel)
                EditBtn.MouseButton1Click:Connect(function()
                    editMode = not editMode
                    if editMode then
                        Util.Tween(EditBtn, {TextColor3 = Theme.PurpleVivid, BackgroundTransparency = 0.8}, 0.15)
                        EditBtn.BackgroundColor3 = Theme.PurpleVivid
                        Util.Tween(FBtnStroke, {Color = Theme.PurpleVivid, Transparency = 0}, 0.15)
                        -- dashed effect via transparency pulse
                        task.spawn(function()
                            while editMode do
                                Util.Tween(FBtnStroke, {Transparency = 0.3}, 0.4)
                                task.wait(0.4)
                                Util.Tween(FBtnStroke, {Transparency = 0}, 0.4)
                                task.wait(0.4)
                            end
                        end)
                    else
                        Util.Tween(EditBtn, {TextColor3 = Theme.Text2, BackgroundTransparency = 1}, 0.15)
                        setActive(fbState, true) -- restore stroke
                    end
                end)

                -- Drag floating button (only in edit mode) — PC + Mobile
                do
                    local dragging = false
                    local startInput, startPos

                    FBtn.InputBegan:Connect(function(inp)
                        if not editMode then return end
                        if inp.UserInputType == Enum.UserInputType.MouseButton1
                        or inp.UserInputType == Enum.UserInputType.Touch then
                            dragging   = true
                            startInput = inp.Position
                            startPos   = FBtn.Position
                            inp.Changed:Connect(function()
                                if inp.UserInputState == Enum.UserInputState.End then
                                    dragging = false
                                end
                            end)
                        end
                    end)

                    UserInputService.InputChanged:Connect(function(inp)
                        if not dragging then return end
                        if inp.UserInputType == Enum.UserInputType.MouseMovement
                        or inp.UserInputType == Enum.UserInputType.Touch then
                            local delta = inp.Position - startInput
                            FBtn.Position = UDim2.fromOffset(
                                startPos.X.Offset + delta.X,
                                startPos.Y.Offset + delta.Y
                            )
                        end
                    end)
                end

                -- Visibility toggle
                local visOn = true
                VisTrack.InputBegan:Connect(function(inp)
                    if inp.UserInputType == Enum.UserInputType.MouseButton1
                    or inp.UserInputType == Enum.UserInputType.Touch then
                        visOn = not visOn
                        FBtn.Visible = visOn
                        if visOn then
                            Util.Tween(VisTrack, {BackgroundColor3 = Theme.PurpleDeep}, 0.2)
                            Util.Tween(VisKnob,  {Position = UDim2.new(1,-15,0.5,-6.5), BackgroundColor3 = Color3.fromRGB(220,200,255)}, 0.2, Enum.EasingStyle.Back)
                        else
                            Util.Tween(VisTrack, {BackgroundColor3 = Theme.BgInput}, 0.2)
                            Util.Tween(VisKnob,  {Position = UDim2.new(0,2,0.5,-6.5), BackgroundColor3 = Theme.Text3}, 0.2, Enum.EasingStyle.Back)
                        end
                    end
                end)

                function fbObj:SetValue(val) setActive(val, true) end
                function fbObj:SetTitle(t) FBtn.Text = t end
                function fbObj:SetSize(x, y) FBtn.Size = UDim2.fromOffset(x, y) end
                function fbObj:GetPosition() return FBtn.Position end
                function fbObj:OnChanged(cb) table.insert(changedCbs, cb) end
                function fbObj:OnClick(cb) table.insert(clickCbs, cb) end

                if id then _options[id] = fbObj end
                table.insert(self._window._fbButtons, fbObj)
                return fbObj
            end

            -- ══════════════════════════════════════════
            -- COLORPICKER  (stub — opens a simple dialog)
            -- ══════════════════════════════════════════
            function SectionObj:AddColorpicker(id, opts)
                opts = opts or {}
                local cTitle    = opts.Title    or "Colorpicker"
                local cDesc     = opts.Description or ""
                local cDefault  = opts.Default  or Color3.fromRGB(91,47,168)
                local cCallback = opts.Callback or function() end

                local row = makeRow(SecBody)
                row.Size = UDim2.new(1, 0, 0, cDesc ~= "" and 46 or 36)
                makeLabel(row, cTitle, cDesc)

                local Swatch = Util.Create("Frame", {
                    Parent = row,
                    BackgroundColor3 = cDefault,
                    BorderSizePixel  = 0,
                    Size = UDim2.fromOffset(28, 28),
                    ZIndex = 4,
                    LayoutOrder = 2,
                })
                Util.Create("UICorner", {Parent = Swatch, CornerRadius = UDim.new(0, 6)})
                Util.Create("UIStroke", {Parent = Swatch, Color = Theme.PurpleBright, Thickness = 1, Transparency = 0.5})

                local cpObj = {Value = cDefault}
                local changedCbs = {}

                -- Full colorpicker UI (HSV picker)
                local cpOpen = false
                local cpGui = nil

                local function openCp()
                    if cpOpen then return end
                    cpOpen = true

                    cpGui = Util.Create("Frame", {
                        Parent = gui,
                        BackgroundColor3 = Theme.BgItem,
                        BorderSizePixel  = 0,
                        Size = UDim2.fromOffset(320, 310),
                        Position = UDim2.fromScale(0.5, 0.5),
                        AnchorPoint = Vector2.new(0.5, 0.5),
                        ZIndex = 60,
                    })
                    Util.Create("UICorner", {Parent = cpGui, CornerRadius = UDim.new(0, 12)})
                    Util.Create("UIStroke", {Parent = cpGui, Color = Theme.PurpleBright, Thickness = 1, Transparency = 0.5})

                    local H, S, V = Color3.toHSV(cpObj.Value)
                    local hue = H

                    -- Title
                    Util.Create("TextLabel", {
                        Parent = cpGui, Text = cTitle,
                        TextColor3 = Theme.Text1, Font = Enum.Font.GothamBold,
                        TextSize = 14, TextXAlignment = Enum.TextXAlignment.Left,
                        BackgroundTransparency = 1,
                        Size = UDim2.new(1, -20, 0, 30),
                        Position = UDim2.fromOffset(14, 8),
                        ZIndex = 61,
                    })

                    -- SV Gradient (color square)
                    local GradFrame = Util.Create("Frame", {
                        Parent = cpGui,
                        BackgroundColor3 = Color3.fromHSV(H, 1, 1),
                        BorderSizePixel  = 0,
                        Size = UDim2.fromOffset(230, 160),
                        Position = UDim2.fromOffset(14, 40),
                        ZIndex = 61,
                        ClipsDescendants = true,
                    })
                    Util.Create("UICorner", {Parent = GradFrame, CornerRadius = UDim.new(0, 7)})
                    -- white gradient
                    local wGrad = Util.Create("UIGradient", {
                        Parent = GradFrame,
                        Color = ColorSequence.new({
                            ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
                            ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255)),
                        }),
                        Transparency = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, 0),
                            NumberSequenceKeypoint.new(1, 1),
                        }),
                        Rotation = 0,
                    })
                    -- black gradient overlay
                    local bFrame = Util.Create("Frame", {
                        Parent = GradFrame,
                        BackgroundTransparency = 0,
                        BorderSizePixel = 0,
                        Size = UDim2.fromScale(1,1),
                        ZIndex = 62,
                    })
                    Util.Create("UIGradient", {
                        Parent = bFrame,
                        Color = ColorSequence.new(Color3.fromRGB(0,0,0)),
                        Transparency = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, 1),
                            NumberSequenceKeypoint.new(1, 0),
                        }),
                        Rotation = 90,
                    })

                    -- SV cursor
                    local Cursor = Util.Create("Frame", {
                        Parent = GradFrame,
                        BackgroundColor3 = Color3.fromRGB(255,255,255),
                        BorderSizePixel  = 0,
                        Size = UDim2.fromOffset(14, 14),
                        AnchorPoint = Vector2.new(0.5, 0.5),
                        Position = UDim2.fromScale(S, 1 - V),
                        ZIndex = 63,
                    })
                    Util.Create("UICorner", {Parent = Cursor, CornerRadius = UDim.new(1, 0)})
                    Util.Create("UIStroke", {Parent = Cursor, Color = Color3.fromRGB(0,0,0), Thickness = 1.5})

                    -- Hue bar
                    local HueBar = Util.Create("Frame", {
                        Parent = cpGui,
                        BorderSizePixel = 0,
                        Size = UDim2.fromOffset(230, 14),
                        Position = UDim2.fromOffset(14, 208),
                        ZIndex = 61,
                        ClipsDescendants = true,
                    })
                    Util.Create("UICorner", {Parent = HueBar, CornerRadius = UDim.new(1, 0)})
                    Util.Create("UIGradient", {
                        Parent = HueBar,
                        Color = ColorSequence.new({
                            ColorSequenceKeypoint.new(0,    Color3.fromRGB(255, 0,   0)),
                            ColorSequenceKeypoint.new(0.167,Color3.fromRGB(255, 255, 0)),
                            ColorSequenceKeypoint.new(0.333,Color3.fromRGB(0,   255, 0)),
                            ColorSequenceKeypoint.new(0.5,  Color3.fromRGB(0,   255, 255)),
                            ColorSequenceKeypoint.new(0.667,Color3.fromRGB(0,   0,   255)),
                            ColorSequenceKeypoint.new(0.833,Color3.fromRGB(255, 0,   255)),
                            ColorSequenceKeypoint.new(1,    Color3.fromRGB(255, 0,   0)),
                        }),
                    })
                    local HueThumb = Util.Create("Frame", {
                        Parent = HueBar,
                        BackgroundColor3 = Color3.fromRGB(255,255,255),
                        BorderSizePixel  = 0,
                        Size = UDim2.fromOffset(14, 14),
                        AnchorPoint = Vector2.new(0.5, 0.5),
                        Position = UDim2.fromScale(H, 0.5),
                        ZIndex = 62,
                    })
                    Util.Create("UICorner", {Parent = HueThumb, CornerRadius = UDim.new(1, 0)})
                    Util.Create("UIStroke", {Parent = HueThumb, Color = Color3.fromRGB(0,0,0), Thickness = 1.5})

                    -- Preview swatch
                    local PreviewNew = Util.Create("Frame", {
                        Parent = cpGui,
                        BackgroundColor3 = cpObj.Value,
                        BorderSizePixel  = 0,
                        Size = UDim2.fromOffset(44, 38),
                        Position = UDim2.fromOffset(252, 40),
                        ZIndex = 61,
                    })
                    Util.Create("UICorner", {Parent = PreviewNew, CornerRadius = UDim.new(0, 7)})
                    Util.Create("UIStroke", {Parent = PreviewNew, Color = Theme.PurpleBright, Thickness = 1, Transparency = 0.5})
                    Util.Create("TextLabel", {Parent = PreviewNew, Text = "New", TextColor3 = Theme.Text2, Font = Enum.Font.Code, TextSize = 9, BackgroundTransparency = 1, Size = UDim2.new(1,0,0,12), Position = UDim2.new(0,0,1,2), ZIndex = 61})

                    local PreviewOld = Util.Create("Frame", {
                        Parent = cpGui,
                        BackgroundColor3 = cpObj.Value,
                        BorderSizePixel  = 0,
                        Size = UDim2.fromOffset(44, 38),
                        Position = UDim2.fromOffset(252, 90),
                        ZIndex = 61,
                    })
                    Util.Create("UICorner", {Parent = PreviewOld, CornerRadius = UDim.new(0, 7)})
                    Util.Create("UIStroke", {Parent = PreviewOld, Color = Theme.PurpleBright, Thickness = 1, Transparency = 0.5})
                    Util.Create("TextLabel", {Parent = PreviewOld, Text = "Old", TextColor3 = Theme.Text2, Font = Enum.Font.Code, TextSize = 9, BackgroundTransparency = 1, Size = UDim2.new(1,0,0,12), Position = UDim2.new(0,0,1,2), ZIndex = 61})

                    local function applyColor()
                        local c = Color3.fromHSV(H, S, V)
                        cpObj.Value = c
                        Swatch.BackgroundColor3 = c
                        PreviewNew.BackgroundColor3 = c
                        GradFrame.BackgroundColor3 = Color3.fromHSV(H, 1, 1)
                        Cursor.Position = UDim2.fromScale(S, 1 - V)
                        HueThumb.Position = UDim2.fromScale(H, 0.5)
                        pcall(cCallback, c)
                        for _, cb in pairs(changedCbs) do pcall(cb, c) end
                    end

                    -- SV drag
                    local svDrag = false
                    GradFrame.InputBegan:Connect(function(inp)
                        if inp.UserInputType == Enum.UserInputType.MouseButton1
                        or inp.UserInputType == Enum.UserInputType.Touch then svDrag = true end
                    end)
                    UserInputService.InputChanged:Connect(function(inp)
                        if not svDrag then return end
                        if inp.UserInputType == Enum.UserInputType.MouseMovement
                        or inp.UserInputType == Enum.UserInputType.Touch then
                            local abs = GradFrame.AbsolutePosition
                            local sz  = GradFrame.AbsoluteSize
                            S = math.clamp((inp.Position.X - abs.X) / sz.X, 0, 1)
                            V = math.clamp(1 - (inp.Position.Y - abs.Y) / sz.Y, 0, 1)
                            applyColor()
                        end
                    end)
                    UserInputService.InputEnded:Connect(function(inp)
                        if inp.UserInputType == Enum.UserInputType.MouseButton1
                        or inp.UserInputType == Enum.UserInputType.Touch then svDrag = false end
                    end)

                    -- Hue drag
                    local hueDrag = false
                    HueBar.InputBegan:Connect(function(inp)
                        if inp.UserInputType == Enum.UserInputType.MouseButton1
                        or inp.UserInputType == Enum.UserInputType.Touch then hueDrag = true end
                    end)
                    UserInputService.InputChanged:Connect(function(inp)
                        if not hueDrag then return end
                        if inp.UserInputType == Enum.UserInputType.MouseMovement
                        or inp.UserInputType == Enum.UserInputType.Touch then
                            local abs = HueBar.AbsolutePosition
                            local sz  = HueBar.AbsoluteSize
                            H = math.clamp((inp.Position.X - abs.X) / sz.X, 0, 1)
                            applyColor()
                        end
                    end)
                    UserInputService.InputEnded:Connect(function(inp)
                        if inp.UserInputType == Enum.UserInputType.MouseButton1
                        or inp.UserInputType == Enum.UserInputType.Touch then hueDrag = false end
                    end)

                    -- Done / Cancel
                    local function makeBtn(txt, xOffset, callback)
                        local b = Util.Create("TextButton", {
                            Parent = cpGui,
                            Text   = txt,
                            TextColor3 = Theme.Text1,
                            Font   = Enum.Font.GothamBold,
                            TextSize = 12,
                            BackgroundColor3 = txt == "Done" and Theme.PurpleDeep or Theme.BgInput,
                            BorderSizePixel  = 0,
                            Size = UDim2.fromOffset(108, 30),
                            Position = UDim2.fromOffset(xOffset, 264),
                            ZIndex = 62,
                            AutoButtonColor = false,
                        })
                        Util.Create("UICorner", {Parent = b, CornerRadius = UDim.new(0, 7)})
                        Util.Create("UIStroke", {Parent = b, Color = txt == "Done" and Theme.PurpleVivid or Theme.PurpleMid, Thickness = 1, Transparency = 0.5})
                        b.MouseButton1Click:Connect(callback)
                        return b
                    end

                    makeBtn("Done", 14, function()
                        cpOpen = false
                        cpGui:Destroy()
                    end)
                    makeBtn("Cancel", 130, function()
                        cpObj.Value = PreviewOld.BackgroundColor3
                        Swatch.BackgroundColor3 = cpObj.Value
                        cpOpen = false
                        cpGui:Destroy()
                    end)

                    Util.MakeDraggable(cpGui, cpGui)
                end

                Swatch.InputBegan:Connect(function(inp)
                    if inp.UserInputType == Enum.UserInputType.MouseButton1
                    or inp.UserInputType == Enum.UserInputType.Touch then
                        openCp()
                    end
                end)

                function cpObj:SetValue(col) cpObj.Value = col; Swatch.BackgroundColor3 = col end
                function cpObj:SetValueRGB(col) cpObj:SetValue(col) end
                function cpObj:OnChanged(cb) table.insert(changedCbs, cb) end

                if id then _options[id] = cpObj end
                return cpObj
            end

            return SectionObj
        end

        return TabObj
    end

    -- ══════════════════════════════════════════════════════════
    -- BUILT-IN SETTINGS TAB
    -- ══════════════════════════════════════════════════════════
    local SettingsTab = WindowObj:AddTab({Title = "Settings"})

    -- Config section
    local CfgSection = SettingsTab:AddSection({Title = "Configurations"})

    -- We build config UI manually (it's a special pre-built section)
    local cfgBody = CfgSection._body
    local configs    = {}
    local activeCfg  = nil
    local autoloadCfg= nil

    -- Name input + Save button row
    local cfgNameRow = Util.Create("Frame", {
        Parent = cfgBody,
        BackgroundTransparency = 1,
        BorderSizePixel  = 0,
        Size = UDim2.new(1, 0, 0, 36),
        ZIndex = 3,
        LayoutOrder = 1,
    })
    Util.Create("UIListLayout", {
        Parent = cfgNameRow,
        FillDirection = Enum.FillDirection.Horizontal,
        VerticalAlignment = Enum.VerticalAlignment.Center,
        Padding = UDim.new(0, 6),
    })

    local CfgNameBox = Util.Create("TextBox", {
        Parent = cfgNameRow,
        Text   = "",
        PlaceholderText = "Config name...",
        PlaceholderColor3 = Theme.Text3,
        TextColor3 = Theme.Text1,
        Font   = Enum.Font.Code,
        TextSize = 11,
        BackgroundColor3 = Theme.BgInput,
        BorderSizePixel  = 0,
        Size = UDim2.new(1, -80, 0, 26),
        ZIndex = 4,
        ClearTextOnFocus = false,
        LayoutOrder = 1,
    })
    Util.Create("UICorner", {Parent = CfgNameBox, CornerRadius = UDim.new(0, 6)})
    Util.Create("UIStroke", {Parent = CfgNameBox, Color = Theme.PurpleMid, Thickness = 1, Transparency = 0.65})
    Util.Create("UIPadding", {Parent = CfgNameBox, PaddingLeft = UDim.new(0, 8)})
    CfgNameBox.Focused:Connect(function()
        Util.Tween(CfgNameBox:FindFirstChildOfClass("UIStroke"), {Color = Theme.PurpleVivid, Transparency = 0}, 0.15)
    end)
    CfgNameBox.FocusLost:Connect(function()
        Util.Tween(CfgNameBox:FindFirstChildOfClass("UIStroke"), {Color = Theme.PurpleMid, Transparency = 0.65}, 0.15)
    end)

    local SaveBtn = Util.Create("TextButton", {
        Parent = cfgNameRow,
        Text   = "Save",
        TextColor3 = Color3.fromRGB(220,200,255),
        Font   = Enum.Font.GothamBold,
        TextSize = 11,
        BackgroundColor3 = Theme.PurpleDeep,
        BorderSizePixel  = 0,
        Size = UDim2.fromOffset(70, 26),
        ZIndex = 4,
        AutoButtonColor = false,
        LayoutOrder = 2,
    })
    Util.Create("UICorner", {Parent = SaveBtn, CornerRadius = UDim.new(0, 6)})
    Util.Create("UIStroke", {Parent = SaveBtn, Color = Theme.PurpleVivid, Thickness = 1, Transparency = 0.5})

    -- Config dropdown selector
    local ddRow = Util.Create("Frame", {
        Parent = cfgBody,
        BackgroundTransparency = 1,
        BorderSizePixel  = 0,
        Size = UDim2.new(1, 0, 0, 32),
        ZIndex = 3,
        LayoutOrder = 2,
    })
    Util.Create("UIListLayout", {
        Parent = ddRow,
        FillDirection = Enum.FillDirection.Horizontal,
        VerticalAlignment = Enum.VerticalAlignment.Center,
        Padding = UDim.new(0, 6),
    })

    local CfgDd = Util.Create("TextButton", {
        Parent = ddRow,
        Text   = "— select config —",
        TextColor3 = Theme.Text1,
        Font   = Enum.Font.GothamSemibold,
        TextSize = 11,
        BackgroundColor3 = Theme.BgInput,
        BorderSizePixel  = 0,
        Size = UDim2.new(1, 0, 0, 26),
        ZIndex = 4,
        AutoButtonColor = false,
        LayoutOrder = 1,
    })
    Util.Create("UICorner", {Parent = CfgDd, CornerRadius = UDim.new(0, 6)})
    Util.Create("UIStroke", {Parent = CfgDd, Color = Theme.PurpleMid, Thickness = 1, Transparency = 0.65})

    -- Dropdown menu for configs
    local CfgMenu = Util.Create("Frame", {
        Parent = gui,
        BackgroundColor3 = Theme.BgItem,
        BorderSizePixel  = 0,
        Size = UDim2.fromOffset(200, 0),
        ZIndex = 80,
        Visible = false,
        ClipsDescendants = true,
    })
    Util.Create("UICorner", {Parent = CfgMenu, CornerRadius = UDim.new(0, 8)})
    Util.Create("UIStroke", {Parent = CfgMenu, Color = Theme.PurpleBright, Thickness = 1, Transparency = 0.5})
    local CfgMenuScroll = Util.Create("ScrollingFrame", {
        Parent = CfgMenu,
        BackgroundTransparency = 1,
        BorderSizePixel  = 0,
        Size = UDim2.fromScale(1,1),
        CanvasSize = UDim2.new(0,0,0,0),
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        ScrollBarThickness = 2,
        ScrollBarImageColor3 = Theme.PurpleBright,
        ZIndex = 81,
    })
    Util.Create("UIListLayout", {Parent = CfgMenuScroll, SortOrder = Enum.SortOrder.LayoutOrder})

    local cfgMenuOpen = false
    local function closeCfgMenu()
        cfgMenuOpen = false
        Util.Tween(CfgMenu, {Size = UDim2.fromOffset(CfgMenu.AbsoluteSize.X, 0)}, 0.15)
        task.delay(0.15, function() CfgMenu.Visible = false end)
    end

    local function rebuildCfgMenu()
        for _, c in pairs(CfgMenuScroll:GetChildren()) do
            if c:IsA("Frame") then c:Destroy() end
        end
        for name, data in pairs(configs) do
            local item = Util.Create("Frame", {
                Parent = CfgMenuScroll,
                BackgroundTransparency = 1,
                BorderSizePixel  = 0,
                Size = UDim2.new(1, 0, 0, 32),
                ZIndex = 82,
            })
            Util.Create("UIListLayout", {
                Parent = item,
                FillDirection = Enum.FillDirection.Horizontal,
                VerticalAlignment = Enum.VerticalAlignment.Center,
                Padding = UDim.new(0, 4),
            })
            Util.Create("UIPadding", {Parent = item, PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 6)})

            local nameBtn = Util.Create("TextButton", {
                Parent = item,
                Text   = name .. (data.autoload and "  ★" or ""),
                TextColor3 = activeCfg == name and Theme.PurpleVivid or Theme.Text1,
                Font   = Enum.Font.GothamSemibold,
                TextSize = 12,
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                Size = UDim2.new(1, -56, 1, 0),
                TextXAlignment = Enum.TextXAlignment.Left,
                ZIndex = 83,
                AutoButtonColor = false,
                LayoutOrder = 1,
            })
            nameBtn.MouseButton1Click:Connect(function()
                activeCfg = name
                CfgDd.Text = name .. (data.autoload and "  ★" or "")
                closeCfgMenu()
                rebuildCfgMenu()
            end)

            -- star (autoload) button
            local starBtn = Util.Create("TextButton", {
                Parent = item,
                Text   = "★",
                TextColor3 = data.autoload and Theme.Green or Theme.Text2,
                Font   = Enum.Font.Gotham,
                TextSize = 13,
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                Size = UDim2.fromOffset(22, 26),
                ZIndex = 83,
                AutoButtonColor = false,
                LayoutOrder = 2,
            })
            starBtn.MouseButton1Click:Connect(function()
                for n, d in pairs(configs) do d.autoload = false end
                data.autoload = not data.autoload
                autoloadCfg = data.autoload and name or nil
                rebuildCfgMenu()
                Notify({Title = "Khaos UI", Content = data.autoload and ('"'..name..'" set as auto-load') or "Auto-load disabled"})
            end)

            -- delete button
            local delBtn = Util.Create("TextButton", {
                Parent = item,
                Text   = "✕",
                TextColor3 = Theme.Red,
                Font   = Enum.Font.GothamBold,
                TextSize = 11,
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                Size = UDim2.fromOffset(22, 26),
                ZIndex = 83,
                AutoButtonColor = false,
                LayoutOrder = 3,
            })
            delBtn.MouseButton1Click:Connect(function()
                configs[name] = nil
                if activeCfg == name then activeCfg = nil; CfgDd.Text = "— select config —" end
                rebuildCfgMenu()
                Notify({Title = "Khaos UI", Content = '"'..name..'" deleted', Duration = 3})
            end)
        end
    end

    CfgDd.MouseButton1Click:Connect(function()
        if cfgMenuOpen then
            closeCfgMenu()
        else
            cfgMenuOpen = true
            local abs = CfgDd.AbsolutePosition
            local sz  = CfgDd.AbsoluteSize
            CfgMenu.Size = UDim2.fromOffset(sz.X, 0)
            CfgMenu.Position = UDim2.fromOffset(abs.X, abs.Y + sz.Y + 4)
            CfgMenu.Visible = true
            rebuildCfgMenu()
            local count = math.min(#(function() local t={} for _ in pairs(configs) do table.insert(t,1) end return t end)(), 5)
            Util.Tween(CfgMenu, {Size = UDim2.fromOffset(sz.X, math.max(count * 32 + 4, 36))}, 0.15, Enum.EasingStyle.Back)
            Util.Tween(CfgDd:FindFirstChildOfClass("UIStroke"), {Color = Theme.PurpleVivid, Transparency = 0}, 0.15)
        end
    end)

    -- Snapshot current options state
    local function snapshot()
        local data = {}
        for id, opt in pairs(_options) do
            if opt.Value ~= nil then
                if type(opt.Value) == "userdata" then
                    -- Color3
                    local r,g,b = opt.Value.R*255, opt.Value.G*255, opt.Value.B*255
                    data[id] = {type="Color3", r=r, g=g, b=b}
                else
                    data[id] = {type="value", v=opt.Value}
                end
            end
        end
        return data
    end

    local function applySnapshot(data)
        for id, entry in pairs(data) do
            local opt = _options[id]
            if opt and opt.SetValue then
                if entry.type == "Color3" then
                    pcall(function() opt:SetValue(Color3.fromRGB(entry.r, entry.g, entry.b)) end)
                else
                    pcall(function() opt:SetValue(entry.v) end)
                end
            end
        end
    end

    local function persistConfigs()
        local ok, encoded = pcall(HttpService.JSONEncode, HttpService, configs)
        if ok then safeWrite(_folder .. "/configs/index.json", encoded) end
    end

    local function loadPersistedConfigs()
        local data = safeRead(_folder .. "/configs/index.json")
        if data then
            local ok, decoded = pcall(HttpService.JSONDecode, HttpService, data)
            if ok and type(decoded) == "table" then
                configs = decoded
                rebuildCfgMenu()
                -- auto-load
                for name, cfg in pairs(configs) do
                    if cfg.autoload and cfg.data then
                        pcall(applySnapshot, cfg.data)
                        activeCfg = name
                        CfgDd.Text = name .. "  ★"
                        Notify({Title = "Khaos UI", Content = 'Auto-loaded "'..name..'"', Duration = 4})
                    end
                end
            end
        end
    end

    -- Save button
    SaveBtn.MouseButton1Click:Connect(function()
        local name = CfgNameBox.Text:match("^%s*(.-)%s*$")
        if name == "" then
            Notify({Title = "Khaos UI", Content = "Enter a config name!", Duration = 3})
            return
        end
        configs[name] = {data = snapshot(), autoload = false}
        activeCfg = name
        CfgDd.Text = name
        CfgNameBox.Text = ""
        persistConfigs()
        rebuildCfgMenu()
        Notify({Title = "Khaos UI", Content = '"'..name..'" saved!'})
    end)

    -- Action buttons row (Load, Update, Delete)
    local actRow = Util.Create("Frame", {
        Parent = cfgBody,
        BackgroundTransparency = 1,
        BorderSizePixel  = 0,
        Size = UDim2.new(1, 0, 0, 30),
        ZIndex = 3,
        LayoutOrder = 3,
    })
    Util.Create("UIListLayout", {
        Parent = actRow,
        FillDirection = Enum.FillDirection.Horizontal,
        VerticalAlignment = Enum.VerticalAlignment.Center,
        Padding = UDim.new(0, 6),
    })

    local function makeActionBtn(txt, color, parent, order)
        local b = Util.Create("TextButton", {
            Parent = parent,
            Text   = txt,
            TextColor3 = color == "danger" and Theme.Red or Theme.Text2,
            Font   = Enum.Font.GothamBold,
            TextSize = 10,
            BackgroundColor3 = Theme.BgInput,
            BorderSizePixel  = 0,
            Size = UDim2.fromOffset(70, 24),
            ZIndex = 4,
            AutoButtonColor = false,
            LayoutOrder = order,
        })
        Util.Create("UICorner", {Parent = b, CornerRadius = UDim.new(0, 6)})
        Util.Create("UIStroke", {
            Parent = b,
            Color  = color == "danger" and Theme.Red or Theme.PurpleMid,
            Thickness = 1,
            Transparency = 0.6,
        })
        b.MouseEnter:Connect(function()
            Util.Tween(b, {BackgroundTransparency = 0.85, TextColor3 = color == "danger" and Theme.Red or Theme.Text1}, 0.12)
            b.BackgroundColor3 = color == "danger" and Theme.Red or Theme.BgHover
        end)
        b.MouseLeave:Connect(function()
            Util.Tween(b, {BackgroundTransparency = 1, TextColor3 = color == "danger" and Theme.Red or Theme.Text2}, 0.12)
        end)
        return b
    end

    local LoadBtn   = makeActionBtn("Load",   "normal",  actRow, 1)
    local UpdateBtn = makeActionBtn("Update",  "normal",  actRow, 2)
    local DeleteBtn = makeActionBtn("Delete",  "danger",  actRow, 3)

    LoadBtn.MouseButton1Click:Connect(function()
        if not activeCfg or not configs[activeCfg] then
            Notify({Title = "Khaos UI", Content = "Select a config first", Duration = 3})
            return
        end
        applySnapshot(configs[activeCfg].data)
        Notify({Title = "Khaos UI", Content = '"'..activeCfg..'" loaded!'})
    end)

    UpdateBtn.MouseButton1Click:Connect(function()
        if not activeCfg then
            Notify({Title = "Khaos UI", Content = "Select a config first", Duration = 3})
            return
        end
        configs[activeCfg].data = snapshot()
        persistConfigs()
        Notify({Title = "Khaos UI", Content = '"'..activeCfg..'" updated!'})
    end)

    DeleteBtn.MouseButton1Click:Connect(function()
        if not activeCfg then return end
        local name = activeCfg
        configs[name] = nil
        activeCfg = nil
        CfgDd.Text = "— select config —"
        persistConfigs()
        rebuildCfgMenu()
        Notify({Title = "Khaos UI", Content = '"'..name..'" deleted', Duration = 3})
    end)

    -- Auto-load row
    local alRow = Util.Create("Frame", {
        Parent = cfgBody,
        BackgroundColor3 = Theme.BgInput,
        BorderSizePixel  = 0,
        Size = UDim2.new(1, 0, 0, 38),
        ZIndex = 3,
        LayoutOrder = 4,
    })
    Util.Create("UICorner", {Parent = alRow, CornerRadius = UDim.new(0, 7)})
    Util.Create("UIStroke", {Parent = alRow, Color = Theme.PurpleMid, Thickness = 1, Transparency = 0.65})
    Util.Create("UIPadding", {Parent = alRow, PaddingLeft = UDim.new(0, 10), PaddingRight = UDim.new(0, 10)})
    Util.Create("UIListLayout", {
        Parent = alRow,
        FillDirection = Enum.FillDirection.Horizontal,
        VerticalAlignment = Enum.VerticalAlignment.Center,
    })

    local alLabelHolder = Util.Create("Frame", {
        Parent = alRow,
        BackgroundTransparency = 1,
        Size = UDim2.new(1, -46, 1, 0),
        ZIndex = 4, LayoutOrder = 1,
    })
    Util.Create("UIListLayout", {Parent = alLabelHolder, VerticalAlignment = Enum.VerticalAlignment.Center, Padding = UDim.new(0,2)})
    Util.Create("TextLabel", {
        Parent = alLabelHolder, Text = "Auto-load on start",
        TextColor3 = Theme.Text1, Font = Enum.Font.GothamSemibold, TextSize = 12,
        TextXAlignment = Enum.TextXAlignment.Left, BackgroundTransparency = 1,
        Size = UDim2.new(1,0,0,15), ZIndex = 4, LayoutOrder = 1,
    })
    local alSub = Util.Create("TextLabel", {
        Parent = alLabelHolder, Text = "No config selected",
        TextColor3 = Theme.Text2, Font = Enum.Font.Code, TextSize = 10,
        TextXAlignment = Enum.TextXAlignment.Left, BackgroundTransparency = 1,
        Size = UDim2.new(1,0,0,12), ZIndex = 4, LayoutOrder = 2,
    })

    -- AL toggle
    local alTrack = Util.Create("Frame", {
        Parent = alRow,
        BackgroundColor3 = Theme.BgInput,
        BorderSizePixel = 0,
        Size = UDim2.fromOffset(36, 19),
        ZIndex = 4, LayoutOrder = 2,
    })
    Util.Create("UICorner", {Parent = alTrack, CornerRadius = UDim.new(1, 0)})
    Util.Create("UIStroke", {Parent = alTrack, Color = Theme.PurpleMid, Thickness = 1, Transparency = 0.5})
    local alKnob = Util.Create("Frame", {
        Parent = alTrack,
        BackgroundColor3 = Theme.Text3,
        BorderSizePixel = 0,
        Size = UDim2.fromOffset(13, 13),
        Position = UDim2.new(0, 2, 0.5, -6.5),
        ZIndex = 5,
    })
    Util.Create("UICorner", {Parent = alKnob, CornerRadius = UDim.new(1, 0)})

    alTrack.InputBegan:Connect(function(inp)
        if inp.UserInputType == Enum.UserInputType.MouseButton1
        or inp.UserInputType == Enum.UserInputType.Touch then
            if not activeCfg then
                Notify({Title = "Khaos UI", Content = "Select a config first", Duration = 3})
                return
            end
            for n, d in pairs(configs) do d.autoload = false end
            local togOn = not configs[activeCfg].autoload
     configs[activeCfg].autoload = togOn
     autoloadCfg = togOn e activeCfg ou nulo
     alSub.Text = togOn e ('"'..activeCfg..'"') ou "Nenhuma configuração selecionada"
     se togOn então
     Util.Tween(alTrack, {BackgroundColor3 = Theme.PurpleDeep}, 0,2)
     Util.Tween(alKnob, {Posição = UDim2.new(1,-15,0,5,-6,5), BackgroundColor3 = Color3.fromRGB(220,200,255)}, 0,2, Enum.EasingStyle.Back)
     outro
     Util.Tween(alTrack, {BackgroundColor3 = Theme.BgInput}, 0,2)
     Util.Tween(alKnob, {Posição = UDim2.new(0,2,0.5,-6.5), BackgroundColor3 = Tema.Texto3}, 0.2, Enum.EasingStyle.Voltar)
     fim
     persistConfigs()
     reconstituirCfgMenu()
     fim
    fim)

    -- Carregar configurações persistentes na inicialização
    tarefa.delay(0,5, loadPersistedConfigs)

    -- Expor Notificar globalmente sem WindowObj
    WindowObj.Notify = Notificar
    WindowObj.Options = _opções

    -- Guia de seleção auxiliar
    função WindowObj:SelectTab(índice)
     aba local = self._tabs[índice]
     se tab entrada tab._btn.MouseButton1Click:Fire() fim
    fim

    -- Auxiliares SetTitle / SetSubtitle
    função WindowObj:SetTitle(nome, acento)
     se TitleLabel então
     TitleLabel.Text = nome .. (sotaque e " " .. acento ou "")
     fim
    fim

    função WindowObj:SetSubtitle(sub)
     -- encontrar protocolo de legenda
     para _, v em pares(TitleTextHolder:GetChildren()) faça
     se v:IsA("TextLabel") e v.LayoutOrder == 2 entidade
     v.Texto = sub
     fim
     fim
    fim

    tabela.insert(_windows, WindowObj)
    janela retornarObj
fim

-- ══════════════════════════════════════════════════════════════
-- BIBLIOTECA DE RETORNO
-- ══════════════════════════════════════════════════════════════
KhaosUI.Opções = _opções
KhaosUI.Notify = Notificar

retornar KhaosUI
