--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 182 | Scripts: 1 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.KhaosHub
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[KhaosHub]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.KhaosHub.ToggleUI
G2L["2"] = Instance.new("ImageButton", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(3, 3, 3);
G2L["2"]["ZIndex"] = 10;
G2L["2"]["Image"] = [[rbxassetid://109958086553778]];
G2L["2"]["Size"] = UDim2.new(0, 36, 0, 36);
G2L["2"]["Name"] = [[ToggleUI]];
G2L["2"]["Position"] = UDim2.new(0.5, -18, 0, 10);


-- StarterGui.KhaosHub.ToggleUI.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.KhaosHub.ToggleUI.UIStroke
G2L["4"] = Instance.new("UIStroke", G2L["2"]);
G2L["4"]["Color"] = Color3.fromRGB(120, 0, 188);
G2L["4"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window
G2L["5"] = Instance.new("Frame", G2L["1"]);
G2L["5"]["ZIndex"] = 2;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(3, 3, 3);
G2L["5"]["ClipsDescendants"] = true;
G2L["5"]["Size"] = UDim2.new(0, 580, 0, 460);
G2L["5"]["Position"] = UDim2.new(0.5, -290, 0.5, -230);
G2L["5"]["Name"] = [[Window]];


-- StarterGui.KhaosHub.Window.UICorner
G2L["6"] = Instance.new("UICorner", G2L["5"]);



-- StarterGui.KhaosHub.Window.UIStroke
G2L["7"] = Instance.new("UIStroke", G2L["5"]);
G2L["7"]["Color"] = Color3.fromRGB(32, 0, 54);
G2L["7"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Titlebar
G2L["8"] = Instance.new("Frame", G2L["5"]);
G2L["8"]["ZIndex"] = 3;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(3, 3, 3);
G2L["8"]["Size"] = UDim2.new(1, 0, 0, 44);
G2L["8"]["Name"] = [[Titlebar]];
G2L["8"]["BackgroundTransparency"] = 1;


-- StarterGui.KhaosHub.Window.Titlebar.TitleDivider
G2L["9"] = Instance.new("Frame", G2L["8"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(23, 0, 38);
G2L["9"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["9"]["Position"] = UDim2.new(0, 0, 1, -1);
G2L["9"]["Name"] = [[TitleDivider]];


-- StarterGui.KhaosHub.Window.Titlebar.Logo
G2L["a"] = Instance.new("ImageLabel", G2L["8"]);
G2L["a"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Image"] = [[rbxassetid://121724126392757]];
G2L["a"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["a"]["Name"] = [[Logo]];
G2L["a"]["Position"] = UDim2.new(0, 10, 0, 8);


-- StarterGui.KhaosHub.Window.Titlebar.Logo.UICorner
G2L["b"] = Instance.new("UICorner", G2L["a"]);
G2L["b"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.KhaosHub.Window.Titlebar.TitleName
G2L["c"] = Instance.new("TextLabel", G2L["8"]);
G2L["c"]["TextSize"] = 14;
G2L["c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["c"]["TextColor3"] = Color3.fromRGB(177, 107, 239);
G2L["c"]["BackgroundTransparency"] = 1;
G2L["c"]["Size"] = UDim2.new(0, 200, 0, 16);
G2L["c"]["Text"] = [[Khaos Hub]];
G2L["c"]["Name"] = [[TitleName]];
G2L["c"]["Position"] = UDim2.new(0, 46, 0, 6);


-- StarterGui.KhaosHub.Window.Titlebar.TitleSub
G2L["d"] = Instance.new("TextLabel", G2L["8"]);
G2L["d"]["TextSize"] = 10;
G2L["d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d"]["TextColor3"] = Color3.fromRGB(120, 52, 171);
G2L["d"]["BackgroundTransparency"] = 1;
G2L["d"]["Size"] = UDim2.new(0, 200, 0, 12);
G2L["d"]["Text"] = [[by kw]];
G2L["d"]["Name"] = [[TitleSub]];
G2L["d"]["Position"] = UDim2.new(0, 46, 0, 24);


-- StarterGui.KhaosHub.Window.Titlebar.CloseBtn
G2L["e"] = Instance.new("TextButton", G2L["8"]);
G2L["e"]["TextSize"] = 11;
G2L["e"]["TextColor3"] = Color3.fromRGB(205, 52, 52);
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(27, 0, 0);
G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["e"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["e"]["Text"] = [[✕]];
G2L["e"]["Name"] = [[CloseBtn]];
G2L["e"]["Position"] = UDim2.new(1, -30, 0, 12);


-- StarterGui.KhaosHub.Window.Titlebar.CloseBtn.UICorner
G2L["f"] = Instance.new("UICorner", G2L["e"]);
G2L["f"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.KhaosHub.Window.Titlebar.CloseBtn.UIStroke
G2L["10"] = Instance.new("UIStroke", G2L["e"]);
G2L["10"]["Color"] = Color3.fromRGB(75, 0, 0);
G2L["10"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body
G2L["11"] = Instance.new("Frame", G2L["5"]);
G2L["11"]["BorderMode"] = Enum.BorderMode.Inset;
G2L["11"]["ClipsDescendants"] = true;
G2L["11"]["Size"] = UDim2.new(1, 0, 1, -44);
G2L["11"]["Position"] = UDim2.new(0, 0, 0, 44);
G2L["11"]["Name"] = [[Body]];
G2L["11"]["BackgroundTransparency"] = 1;


-- StarterGui.KhaosHub.Window.Body.Sidebar
G2L["12"] = Instance.new("Frame", G2L["11"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(3, 3, 3);
G2L["12"]["Size"] = UDim2.new(0, 135, 1, 0);
G2L["12"]["Name"] = [[Sidebar]];


-- StarterGui.KhaosHub.Window.Body.Sidebar.SidebarDivider
G2L["13"] = Instance.new("Frame", G2L["12"]);
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(23, 0, 38);
G2L["13"]["Size"] = UDim2.new(0, 1, 1, 0);
G2L["13"]["Position"] = UDim2.new(1, -1, 0, 0);
G2L["13"]["Name"] = [[SidebarDivider]];


-- StarterGui.KhaosHub.Window.Body.Sidebar.UIListLayout
G2L["14"] = Instance.new("UIListLayout", G2L["12"]);
G2L["14"]["Wraps"] = true;
G2L["14"]["Padding"] = UDim.new(0, 4);
G2L["14"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.KhaosHub.Window.Body.Sidebar.UIPadding
G2L["15"] = Instance.new("UIPadding", G2L["12"]);
G2L["15"]["PaddingTop"] = UDim.new(0, 6);
G2L["15"]["PaddingBottom"] = UDim.new(0, 6);


-- StarterGui.KhaosHub.Window.Body.Sidebar.MainTabBtn
G2L["16"] = Instance.new("TextButton", G2L["12"]);
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["AutoButtonColor"] = false;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(15, 0, 25);
G2L["16"]["Size"] = UDim2.new(1, 0, 0, 36);
G2L["16"]["LayoutOrder"] = 1;
G2L["16"]["Text"] = [[]];
G2L["16"]["Name"] = [[MainTabBtn]];


-- StarterGui.KhaosHub.Window.Body.Sidebar.MainTabBtn.Indicator
G2L["17"] = Instance.new("Frame", G2L["16"]);
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(120, 0, 188);
G2L["17"]["Size"] = UDim2.new(0, 2, 0, 36);
G2L["17"]["Name"] = [[Indicator]];


-- StarterGui.KhaosHub.Window.Body.Sidebar.MainTabBtn.Icon
G2L["18"] = Instance.new("TextLabel", G2L["16"]);
G2L["18"]["TextSize"] = 14;
G2L["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["18"]["TextColor3"] = Color3.fromRGB(177, 107, 239);
G2L["18"]["BackgroundTransparency"] = 1;
G2L["18"]["Size"] = UDim2.new(0, 15, 0, 20);
G2L["18"]["Text"] = [[☰]];
G2L["18"]["Name"] = [[Icon]];
G2L["18"]["Position"] = UDim2.new(0, 12, 0, 8);


-- StarterGui.KhaosHub.Window.Body.Sidebar.MainTabBtn.Label
G2L["19"] = Instance.new("TextLabel", G2L["16"]);
G2L["19"]["TextSize"] = 12;
G2L["19"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["19"]["TextColor3"] = Color3.fromRGB(177, 107, 239);
G2L["19"]["BackgroundTransparency"] = 1;
G2L["19"]["Size"] = UDim2.new(0, 80, 0, 20);
G2L["19"]["Text"] = [[Main]];
G2L["19"]["Name"] = [[Label]];
G2L["19"]["Position"] = UDim2.new(0, 31, 0, 8);


-- StarterGui.KhaosHub.Window.Body.Sidebar.MainTabBtn.Arrow
G2L["1a"] = Instance.new("TextLabel", G2L["16"]);
G2L["1a"]["TextSize"] = 12;
G2L["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1a"]["TextColor3"] = Color3.fromRGB(69, 69, 69);
G2L["1a"]["BackgroundTransparency"] = 1;
G2L["1a"]["Size"] = UDim2.new(0, 10, 0, 20);
G2L["1a"]["Text"] = [[›]];
G2L["1a"]["Name"] = [[Arrow]];
G2L["1a"]["Position"] = UDim2.new(1, -18, 0, 8);


-- StarterGui.KhaosHub.Window.Body.Sidebar.SettingsTabBtn
G2L["1b"] = Instance.new("TextButton", G2L["12"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["AutoButtonColor"] = false;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(3, 3, 3);
G2L["1b"]["Size"] = UDim2.new(1, 0, 0, 36);
G2L["1b"]["LayoutOrder"] = 2;
G2L["1b"]["Text"] = [[]];
G2L["1b"]["Name"] = [[SettingsTabBtn]];


-- StarterGui.KhaosHub.Window.Body.Sidebar.SettingsTabBtn.Indicator
G2L["1c"] = Instance.new("Frame", G2L["1b"]);
G2L["1c"]["Visible"] = false;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(120, 0, 188);
G2L["1c"]["Size"] = UDim2.new(0, 2, 0, 36);
G2L["1c"]["Name"] = [[Indicator]];


-- StarterGui.KhaosHub.Window.Body.Sidebar.SettingsTabBtn.Icon
G2L["1d"] = Instance.new("TextLabel", G2L["1b"]);
G2L["1d"]["TextSize"] = 14;
G2L["1d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1d"]["TextColor3"] = Color3.fromRGB(69, 69, 69);
G2L["1d"]["BackgroundTransparency"] = 1;
G2L["1d"]["Size"] = UDim2.new(0, 15, 0, 20);
G2L["1d"]["Text"] = [[⚙]];
G2L["1d"]["Name"] = [[Icon]];
G2L["1d"]["Position"] = UDim2.new(0, 12, 0, 8);


-- StarterGui.KhaosHub.Window.Body.Sidebar.SettingsTabBtn.Label
G2L["1e"] = Instance.new("TextLabel", G2L["1b"]);
G2L["1e"]["TextSize"] = 12;
G2L["1e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1e"]["TextColor3"] = Color3.fromRGB(69, 69, 69);
G2L["1e"]["BackgroundTransparency"] = 1;
G2L["1e"]["Size"] = UDim2.new(0, 80, 0, 20);
G2L["1e"]["Text"] = [[Settings]];
G2L["1e"]["Name"] = [[Label]];
G2L["1e"]["Position"] = UDim2.new(0, 31, 0, 8);


-- StarterGui.KhaosHub.Window.Body.Sidebar.SettingsTabBtn.Arrow
G2L["1f"] = Instance.new("TextLabel", G2L["1b"]);
G2L["1f"]["TextSize"] = 12;
G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1f"]["TextColor3"] = Color3.fromRGB(69, 69, 69);
G2L["1f"]["BackgroundTransparency"] = 1;
G2L["1f"]["Size"] = UDim2.new(0, 10, 0, 20);
G2L["1f"]["Text"] = [[›]];
G2L["1f"]["Name"] = [[Arrow]];
G2L["1f"]["Position"] = UDim2.new(1, -18, 0, 8);


-- StarterGui.KhaosHub.Window.Body.ContentArea
G2L["20"] = Instance.new("Frame", G2L["11"]);
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(3, 3, 3);
G2L["20"]["ClipsDescendants"] = true;
G2L["20"]["Size"] = UDim2.new(1, -135, 1, 0);
G2L["20"]["Position"] = UDim2.new(0, 135, 0, 0);
G2L["20"]["Name"] = [[ContentArea]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage
G2L["21"] = Instance.new("ScrollingFrame", G2L["20"]);
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["21"]["Name"] = [[MainPage]];
G2L["21"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["21"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["21"]["ScrollBarImageColor3"] = Color3.fromRGB(62, 0, 108);
G2L["21"]["ScrollBarThickness"] = 3;
G2L["21"]["BackgroundTransparency"] = 1;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.UIListLayout
G2L["22"] = Instance.new("UIListLayout", G2L["21"]);
G2L["22"]["Padding"] = UDim.new(0, 5);
G2L["22"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.UIPadding
G2L["23"] = Instance.new("UIPadding", G2L["21"]);
G2L["23"]["PaddingTop"] = UDim.new(0, 7);
G2L["23"]["PaddingRight"] = UDim.new(0, 7);
G2L["23"]["PaddingLeft"] = UDim.new(0, 7);
G2L["23"]["PaddingBottom"] = UDim.new(0, 7);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat
G2L["24"] = Instance.new("Frame", G2L["21"]);
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(5, 5, 5);
G2L["24"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["24"]["Size"] = UDim2.new(1, 0, 0, 32);
G2L["24"]["Name"] = [[ComponentesSuportadosCat]];
G2L["24"]["LayoutOrder"] = 1;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.UICorner
G2L["25"] = Instance.new("UICorner", G2L["24"]);
G2L["25"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.UIStroke
G2L["26"] = Instance.new("UIStroke", G2L["24"]);
G2L["26"]["Color"] = Color3.fromRGB(25, 0, 41);
G2L["26"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Header
G2L["27"] = Instance.new("TextButton", G2L["24"]);
G2L["27"]["AutoButtonColor"] = false;
G2L["27"]["BackgroundTransparency"] = 1;
G2L["27"]["Size"] = UDim2.new(1, 0, 0, 32);
G2L["27"]["Text"] = [[]];
G2L["27"]["Name"] = [[Header]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Header.Title
G2L["28"] = Instance.new("TextLabel", G2L["27"]);
G2L["28"]["TextSize"] = 12;
G2L["28"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["28"]["TextColor3"] = Color3.fromRGB(145, 97, 188);
G2L["28"]["BackgroundTransparency"] = 1;
G2L["28"]["Size"] = UDim2.new(1, -40, 1, 0);
G2L["28"]["Text"] = [[Componentes Suportados]];
G2L["28"]["Name"] = [[Title]];
G2L["28"]["Position"] = UDim2.new(0, 11, 0, 0);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Header.Arrow
G2L["29"] = Instance.new("TextLabel", G2L["27"]);
G2L["29"]["TextSize"] = 10;
G2L["29"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["29"]["TextColor3"] = Color3.fromRGB(59, 59, 59);
G2L["29"]["BackgroundTransparency"] = 1;
G2L["29"]["Size"] = UDim2.new(0, 12, 0, 32);
G2L["29"]["Text"] = [[▲]];
G2L["29"]["Name"] = [[Arrow]];
G2L["29"]["Position"] = UDim2.new(1, -20, 0, 0);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Divider
G2L["2a"] = Instance.new("Frame", G2L["24"]);
G2L["2a"]["BorderSizePixel"] = 0;
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(25, 0, 41);
G2L["2a"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["2a"]["Position"] = UDim2.new(0, 0, 0, 32);
G2L["2a"]["Name"] = [[Divider]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items
G2L["2b"] = Instance.new("Frame", G2L["24"]);
G2L["2b"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["2b"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["2b"]["Position"] = UDim2.new(0, 0, 0, 33);
G2L["2b"]["Name"] = [[Items]];
G2L["2b"]["BackgroundTransparency"] = 1;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.UIListLayout
G2L["2c"] = Instance.new("UIListLayout", G2L["2b"]);
G2L["2c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item1
G2L["2d"] = Instance.new("Frame", G2L["2b"]);
G2L["2d"]["Size"] = UDim2.new(1, 0, 0, 36);
G2L["2d"]["Name"] = [[Item1]];
G2L["2d"]["LayoutOrder"] = 1;
G2L["2d"]["BackgroundTransparency"] = 1;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item1.Divider
G2L["2e"] = Instance.new("Frame", G2L["2d"]);
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
G2L["2e"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["2e"]["Position"] = UDim2.new(0, 0, 1, -1);
G2L["2e"]["Name"] = [[Divider]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item1.Tag
G2L["2f"] = Instance.new("TextLabel", G2L["2d"]);
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(14, 0, 16);
G2L["2f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["2f"]["TextColor3"] = Color3.fromRGB(154, 69, 222);
G2L["2f"]["Size"] = UDim2.new(0, 48, 0, 16);
G2L["2f"]["Text"] = [[TOGGLE]];
G2L["2f"]["Name"] = [[Tag]];
G2L["2f"]["Position"] = UDim2.new(0, 11, 0, 10);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item1.Tag.UICorner
G2L["30"] = Instance.new("UICorner", G2L["2f"]);
G2L["30"]["CornerRadius"] = UDim.new(0, 2);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item1.Tag.UIStroke
G2L["31"] = Instance.new("UIStroke", G2L["2f"]);
G2L["31"]["Color"] = Color3.fromRGB(62, 0, 108);
G2L["31"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item1.Label
G2L["32"] = Instance.new("TextLabel", G2L["2d"]);
G2L["32"]["TextSize"] = 12;
G2L["32"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["32"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["32"]["TextColor3"] = Color3.fromRGB(193, 193, 193);
G2L["32"]["BackgroundTransparency"] = 1;
G2L["32"]["Size"] = UDim2.new(0, 120, 1, 0);
G2L["32"]["Text"] = [[Toggle simples]];
G2L["32"]["Name"] = [[Label]];
G2L["32"]["Position"] = UDim2.new(0, 66, 0, 0);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item1.ToggleFrame
G2L["33"] = Instance.new("Frame", G2L["2d"]);
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
G2L["33"]["ClipsDescendants"] = true;
G2L["33"]["Size"] = UDim2.new(0, 34, 0, 18);
G2L["33"]["Position"] = UDim2.new(1, -45, 0.5, -9);
G2L["33"]["Name"] = [[ToggleFrame]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item1.ToggleFrame.UICorner
G2L["34"] = Instance.new("UICorner", G2L["33"]);
G2L["34"]["CornerRadius"] = UDim.new(0, 9);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item1.ToggleFrame.UIStroke
G2L["35"] = Instance.new("UIStroke", G2L["33"]);
G2L["35"]["Color"] = Color3.fromRGB(35, 0, 57);
G2L["35"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item1.ToggleFrame.Knob
G2L["36"] = Instance.new("Frame", G2L["33"]);
G2L["36"]["BorderSizePixel"] = 0;
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(86, 86, 86);
G2L["36"]["Size"] = UDim2.new(0, 12, 0, 12);
G2L["36"]["Position"] = UDim2.new(0, 3, 0, 3);
G2L["36"]["Name"] = [[Knob]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item1.ToggleFrame.Knob.UICorner
G2L["37"] = Instance.new("UICorner", G2L["36"]);
G2L["37"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item2
G2L["38"] = Instance.new("Frame", G2L["2b"]);
G2L["38"]["Size"] = UDim2.new(1, 0, 0, 36);
G2L["38"]["Name"] = [[Item2]];
G2L["38"]["LayoutOrder"] = 2;
G2L["38"]["BackgroundTransparency"] = 1;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item2.Divider
G2L["39"] = Instance.new("Frame", G2L["38"]);
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
G2L["39"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["39"]["Position"] = UDim2.new(0, 0, 1, -1);
G2L["39"]["Name"] = [[Divider]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item2.Tag
G2L["3a"] = Instance.new("TextLabel", G2L["38"]);
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(14, 0, 16);
G2L["3a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["3a"]["TextColor3"] = Color3.fromRGB(154, 69, 222);
G2L["3a"]["Size"] = UDim2.new(0, 58, 0, 16);
G2L["3a"]["Text"] = [[TOG+BTN]];
G2L["3a"]["Name"] = [[Tag]];
G2L["3a"]["Position"] = UDim2.new(0, 11, 0, 10);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item2.Tag.UICorner
G2L["3b"] = Instance.new("UICorner", G2L["3a"]);
G2L["3b"]["CornerRadius"] = UDim.new(0, 2);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item2.Tag.UIStroke
G2L["3c"] = Instance.new("UIStroke", G2L["3a"]);
G2L["3c"]["Color"] = Color3.fromRGB(62, 0, 108);
G2L["3c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item2.Label
G2L["3d"] = Instance.new("TextLabel", G2L["38"]);
G2L["3d"]["TextSize"] = 12;
G2L["3d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3d"]["TextColor3"] = Color3.fromRGB(193, 193, 193);
G2L["3d"]["BackgroundTransparency"] = 1;
G2L["3d"]["Size"] = UDim2.new(0, 120, 1, 0);
G2L["3d"]["Text"] = [[Toggle com botão]];
G2L["3d"]["Name"] = [[Label]];
G2L["3d"]["Position"] = UDim2.new(0, 76, 0, 0);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item2.Ação✦Btn
G2L["3e"] = Instance.new("TextButton", G2L["38"]);
G2L["3e"]["TextSize"] = 10;
G2L["3e"]["TextColor3"] = Color3.fromRGB(154, 69, 222);
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(16, 0, 27);
G2L["3e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3e"]["Size"] = UDim2.new(0, 54, 0, 22);
G2L["3e"]["Text"] = [[Ação ✦]];
G2L["3e"]["Name"] = [[Ação✦Btn]];
G2L["3e"]["Position"] = UDim2.new(1, -105, 0.5, -11);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item2.Ação✦Btn.UICorner
G2L["3f"] = Instance.new("UICorner", G2L["3e"]);
G2L["3f"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item2.Ação✦Btn.UIStroke
G2L["40"] = Instance.new("UIStroke", G2L["3e"]);
G2L["40"]["Color"] = Color3.fromRGB(51, 0, 97);
G2L["40"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item2.ToggleFrame
G2L["41"] = Instance.new("Frame", G2L["38"]);
G2L["41"]["BorderSizePixel"] = 0;
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
G2L["41"]["ClipsDescendants"] = true;
G2L["41"]["Size"] = UDim2.new(0, 34, 0, 18);
G2L["41"]["Position"] = UDim2.new(1, -45, 0.5, -9);
G2L["41"]["Name"] = [[ToggleFrame]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item2.ToggleFrame.UICorner
G2L["42"] = Instance.new("UICorner", G2L["41"]);
G2L["42"]["CornerRadius"] = UDim.new(0, 9);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item2.ToggleFrame.UIStroke
G2L["43"] = Instance.new("UIStroke", G2L["41"]);
G2L["43"]["Color"] = Color3.fromRGB(35, 0, 57);
G2L["43"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item2.ToggleFrame.Knob
G2L["44"] = Instance.new("Frame", G2L["41"]);
G2L["44"]["BorderSizePixel"] = 0;
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(86, 86, 86);
G2L["44"]["Size"] = UDim2.new(0, 12, 0, 12);
G2L["44"]["Position"] = UDim2.new(0, 3, 0, 3);
G2L["44"]["Name"] = [[Knob]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item2.ToggleFrame.Knob.UICorner
G2L["45"] = Instance.new("UICorner", G2L["44"]);
G2L["45"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item3
G2L["46"] = Instance.new("Frame", G2L["2b"]);
G2L["46"]["Size"] = UDim2.new(1, 0, 0, 36);
G2L["46"]["Name"] = [[Item3]];
G2L["46"]["LayoutOrder"] = 3;
G2L["46"]["BackgroundTransparency"] = 1;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item3.Divider
G2L["47"] = Instance.new("Frame", G2L["46"]);
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
G2L["47"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["47"]["Position"] = UDim2.new(0, 0, 1, -1);
G2L["47"]["Name"] = [[Divider]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item3.Tag
G2L["48"] = Instance.new("TextLabel", G2L["46"]);
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(14, 0, 16);
G2L["48"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["48"]["TextColor3"] = Color3.fromRGB(154, 69, 222);
G2L["48"]["Size"] = UDim2.new(0, 66, 0, 16);
G2L["48"]["Text"] = [[TOG+SLIDE]];
G2L["48"]["Name"] = [[Tag]];
G2L["48"]["Position"] = UDim2.new(0, 11, 0, 10);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item3.Tag.UICorner
G2L["49"] = Instance.new("UICorner", G2L["48"]);
G2L["49"]["CornerRadius"] = UDim.new(0, 2);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item3.Tag.UIStroke
G2L["4a"] = Instance.new("UIStroke", G2L["48"]);
G2L["4a"]["Color"] = Color3.fromRGB(62, 0, 108);
G2L["4a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item3.Label
G2L["4b"] = Instance.new("TextLabel", G2L["46"]);
G2L["4b"]["TextSize"] = 12;
G2L["4b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4b"]["TextColor3"] = Color3.fromRGB(193, 193, 193);
G2L["4b"]["BackgroundTransparency"] = 1;
G2L["4b"]["Size"] = UDim2.new(0, 120, 1, 0);
G2L["4b"]["Text"] = [[Toggle com slider]];
G2L["4b"]["Name"] = [[Label]];
G2L["4b"]["Position"] = UDim2.new(0, 84, 0, 0);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item3.SliderBG
G2L["4c"] = Instance.new("Frame", G2L["46"]);
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(35, 0, 57);
G2L["4c"]["Size"] = UDim2.new(0, 80, 0, 3);
G2L["4c"]["Position"] = UDim2.new(1, -140, 0.5, -1);
G2L["4c"]["Name"] = [[SliderBG]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item3.SliderBG.UICorner
G2L["4d"] = Instance.new("UICorner", G2L["4c"]);
G2L["4d"]["CornerRadius"] = UDim.new(0, 2);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item3.SliderBG.Fill
G2L["4e"] = Instance.new("Frame", G2L["4c"]);
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(120, 0, 188);
G2L["4e"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["4e"]["Name"] = [[Fill]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item3.SliderBG.Fill.UICorner
G2L["4f"] = Instance.new("UICorner", G2L["4e"]);
G2L["4f"]["CornerRadius"] = UDim.new(0, 2);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item3.SliderBG.Knob
G2L["50"] = Instance.new("Frame", G2L["4c"]);
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(120, 0, 188);
G2L["50"]["Size"] = UDim2.new(0, 12, 0, 12);
G2L["50"]["Position"] = UDim2.new(0.5, -6, 0.5, -6);
G2L["50"]["Name"] = [[Knob]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item3.SliderBG.Knob.UICorner
G2L["51"] = Instance.new("UICorner", G2L["50"]);
G2L["51"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item3.SlVal
G2L["52"] = Instance.new("TextLabel", G2L["46"]);
G2L["52"]["TextSize"] = 10;
G2L["52"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["52"]["TextColor3"] = Color3.fromRGB(69, 69, 69);
G2L["52"]["BackgroundTransparency"] = 1;
G2L["52"]["Size"] = UDim2.new(0, 24, 0, 18);
G2L["52"]["Text"] = [[50]];
G2L["52"]["Name"] = [[SlVal]];
G2L["52"]["Position"] = UDim2.new(1, -55, 0.5, -9);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item3.ToggleFrame
G2L["53"] = Instance.new("Frame", G2L["46"]);
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
G2L["53"]["ClipsDescendants"] = true;
G2L["53"]["Size"] = UDim2.new(0, 34, 0, 18);
G2L["53"]["Position"] = UDim2.new(1, -45, 0.5, -9);
G2L["53"]["Name"] = [[ToggleFrame]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item3.ToggleFrame.UICorner
G2L["54"] = Instance.new("UICorner", G2L["53"]);
G2L["54"]["CornerRadius"] = UDim.new(0, 9);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item3.ToggleFrame.UIStroke
G2L["55"] = Instance.new("UIStroke", G2L["53"]);
G2L["55"]["Color"] = Color3.fromRGB(35, 0, 57);
G2L["55"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item3.ToggleFrame.Knob
G2L["56"] = Instance.new("Frame", G2L["53"]);
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(86, 86, 86);
G2L["56"]["Size"] = UDim2.new(0, 12, 0, 12);
G2L["56"]["Position"] = UDim2.new(0, 3, 0, 3);
G2L["56"]["Name"] = [[Knob]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item3.ToggleFrame.Knob.UICorner
G2L["57"] = Instance.new("UICorner", G2L["56"]);
G2L["57"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4
G2L["58"] = Instance.new("Frame", G2L["2b"]);
G2L["58"]["Size"] = UDim2.new(1, 0, 0, 36);
G2L["58"]["Name"] = [[Item4]];
G2L["58"]["LayoutOrder"] = 4;
G2L["58"]["BackgroundTransparency"] = 1;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Divider
G2L["59"] = Instance.new("Frame", G2L["58"]);
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
G2L["59"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["59"]["Position"] = UDim2.new(0, 0, 1, -1);
G2L["59"]["Name"] = [[Divider]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Tag
G2L["5a"] = Instance.new("TextLabel", G2L["58"]);
G2L["5a"]["BackgroundColor3"] = Color3.fromRGB(14, 0, 16);
G2L["5a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["5a"]["TextColor3"] = Color3.fromRGB(154, 69, 222);
G2L["5a"]["Size"] = UDim2.new(0, 60, 0, 16);
G2L["5a"]["Text"] = [[DROP+BTN]];
G2L["5a"]["Name"] = [[Tag]];
G2L["5a"]["Position"] = UDim2.new(0, 11, 0, 10);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Tag.UICorner
G2L["5b"] = Instance.new("UICorner", G2L["5a"]);
G2L["5b"]["CornerRadius"] = UDim.new(0, 2);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Tag.UIStroke
G2L["5c"] = Instance.new("UIStroke", G2L["5a"]);
G2L["5c"]["Color"] = Color3.fromRGB(62, 0, 108);
G2L["5c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Label
G2L["5d"] = Instance.new("TextLabel", G2L["58"]);
G2L["5d"]["TextSize"] = 12;
G2L["5d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5d"]["TextColor3"] = Color3.fromRGB(193, 193, 193);
G2L["5d"]["BackgroundTransparency"] = 1;
G2L["5d"]["Size"] = UDim2.new(0, 120, 1, 0);
G2L["5d"]["Text"] = [[Dropdown + botão]];
G2L["5d"]["Name"] = [[Label]];
G2L["5d"]["Position"] = UDim2.new(0, 78, 0, 0);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Dropdown
G2L["5e"] = Instance.new("Frame", G2L["58"]);
G2L["5e"]["ZIndex"] = 5;
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(14, 14, 14);
G2L["5e"]["Size"] = UDim2.new(0, 110, 0, 22);
G2L["5e"]["Position"] = UDim2.new(1, -175, 0.5, -11);
G2L["5e"]["Name"] = [[Dropdown]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Dropdown.UICorner
G2L["5f"] = Instance.new("UICorner", G2L["5e"]);
G2L["5f"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Dropdown.UIStroke
G2L["60"] = Instance.new("UIStroke", G2L["5e"]);
G2L["60"]["Color"] = Color3.fromRGB(35, 0, 57);
G2L["60"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Dropdown.Selected
G2L["61"] = Instance.new("TextLabel", G2L["5e"]);
G2L["61"]["ZIndex"] = 5;
G2L["61"]["TextSize"] = 11;
G2L["61"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["61"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["61"]["TextColor3"] = Color3.fromRGB(137, 137, 137);
G2L["61"]["BackgroundTransparency"] = 1;
G2L["61"]["Size"] = UDim2.new(1, -20, 1, 0);
G2L["61"]["Text"] = [[Player1]];
G2L["61"]["Name"] = [[Selected]];
G2L["61"]["Position"] = UDim2.new(0, 7, 0, 0);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Dropdown.Arrow
G2L["62"] = Instance.new("TextLabel", G2L["5e"]);
G2L["62"]["ZIndex"] = 5;
G2L["62"]["TextSize"] = 11;
G2L["62"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["62"]["TextColor3"] = Color3.fromRGB(137, 137, 137);
G2L["62"]["BackgroundTransparency"] = 1;
G2L["62"]["Size"] = UDim2.new(0, 16, 0, 22);
G2L["62"]["Text"] = [[▾]];
G2L["62"]["Name"] = [[Arrow]];
G2L["62"]["Position"] = UDim2.new(1, -16, 0, 0);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Dropdown.OptionsList
G2L["63"] = Instance.new("Frame", G2L["5e"]);
G2L["63"]["Visible"] = false;
G2L["63"]["ZIndex"] = 10;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(11, 0, 19);
G2L["63"]["Size"] = UDim2.new(0, 110, 0, 72);
G2L["63"]["Position"] = UDim2.new(0, 0, 0, 24);
G2L["63"]["Name"] = [[OptionsList]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Dropdown.OptionsList.UICorner
G2L["64"] = Instance.new("UICorner", G2L["63"]);
G2L["64"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Dropdown.OptionsList.UIStroke
G2L["65"] = Instance.new("UIStroke", G2L["63"]);
G2L["65"]["Color"] = Color3.fromRGB(35, 0, 57);
G2L["65"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Dropdown.OptionsList.UIListLayout
G2L["66"] = Instance.new("UIListLayout", G2L["63"]);
G2L["66"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Dropdown.OptionsList.Opt1
G2L["67"] = Instance.new("TextButton", G2L["63"]);
G2L["67"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["67"]["TextSize"] = 11;
G2L["67"]["TextColor3"] = Color3.fromRGB(137, 137, 137);
G2L["67"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["67"]["ZIndex"] = 10;
G2L["67"]["BackgroundTransparency"] = 1;
G2L["67"]["Size"] = UDim2.new(1, 0, 0, 24);
G2L["67"]["LayoutOrder"] = 1;
G2L["67"]["Text"] = [[Player1]];
G2L["67"]["Name"] = [[Opt1]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Dropdown.OptionsList.Opt1.UIPadding
G2L["68"] = Instance.new("UIPadding", G2L["67"]);
G2L["68"]["PaddingLeft"] = UDim.new(0, 8);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Dropdown.OptionsList.Opt2
G2L["69"] = Instance.new("TextButton", G2L["63"]);
G2L["69"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["69"]["TextSize"] = 11;
G2L["69"]["TextColor3"] = Color3.fromRGB(137, 137, 137);
G2L["69"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["69"]["ZIndex"] = 10;
G2L["69"]["BackgroundTransparency"] = 1;
G2L["69"]["Size"] = UDim2.new(1, 0, 0, 24);
G2L["69"]["LayoutOrder"] = 2;
G2L["69"]["Text"] = [[Player2]];
G2L["69"]["Name"] = [[Opt2]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Dropdown.OptionsList.Opt2.UIPadding
G2L["6a"] = Instance.new("UIPadding", G2L["69"]);
G2L["6a"]["PaddingLeft"] = UDim.new(0, 8);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Dropdown.OptionsList.Opt3
G2L["6b"] = Instance.new("TextButton", G2L["63"]);
G2L["6b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6b"]["TextSize"] = 11;
G2L["6b"]["TextColor3"] = Color3.fromRGB(137, 137, 137);
G2L["6b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6b"]["ZIndex"] = 10;
G2L["6b"]["BackgroundTransparency"] = 1;
G2L["6b"]["Size"] = UDim2.new(1, 0, 0, 24);
G2L["6b"]["LayoutOrder"] = 3;
G2L["6b"]["Text"] = [[Player3]];
G2L["6b"]["Name"] = [[Opt3]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Dropdown.OptionsList.Opt3.UIPadding
G2L["6c"] = Instance.new("UIPadding", G2L["6b"]);
G2L["6c"]["PaddingLeft"] = UDim.new(0, 8);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Dropdown.DropBtn
G2L["6d"] = Instance.new("TextButton", G2L["5e"]);
G2L["6d"]["ZIndex"] = 6;
G2L["6d"]["BackgroundTransparency"] = 1;
G2L["6d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["6d"]["Text"] = [[]];
G2L["6d"]["Name"] = [[DropBtn]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Ação✦Btn
G2L["6e"] = Instance.new("TextButton", G2L["58"]);
G2L["6e"]["TextSize"] = 10;
G2L["6e"]["TextColor3"] = Color3.fromRGB(154, 69, 222);
G2L["6e"]["BackgroundColor3"] = Color3.fromRGB(16, 0, 27);
G2L["6e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6e"]["Size"] = UDim2.new(0, 54, 0, 22);
G2L["6e"]["Text"] = [[Ação ✦]];
G2L["6e"]["Name"] = [[Ação✦Btn]];
G2L["6e"]["Position"] = UDim2.new(1, -60, 0.5, -11);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Ação✦Btn.UICorner
G2L["6f"] = Instance.new("UICorner", G2L["6e"]);
G2L["6f"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item4.Ação✦Btn.UIStroke
G2L["70"] = Instance.new("UIStroke", G2L["6e"]);
G2L["70"]["Color"] = Color3.fromRGB(51, 0, 97);
G2L["70"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item5
G2L["71"] = Instance.new("Frame", G2L["2b"]);
G2L["71"]["Size"] = UDim2.new(1, 0, 0, 36);
G2L["71"]["Name"] = [[Item5]];
G2L["71"]["LayoutOrder"] = 5;
G2L["71"]["BackgroundTransparency"] = 1;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item5.Divider
G2L["72"] = Instance.new("Frame", G2L["71"]);
G2L["72"]["BorderSizePixel"] = 0;
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
G2L["72"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["72"]["Position"] = UDim2.new(0, 0, 1, -1);
G2L["72"]["Name"] = [[Divider]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item5.Tag
G2L["73"] = Instance.new("TextLabel", G2L["71"]);
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(14, 0, 16);
G2L["73"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["73"]["TextColor3"] = Color3.fromRGB(154, 69, 222);
G2L["73"]["Size"] = UDim2.new(0, 42, 0, 16);
G2L["73"]["Text"] = [[BOTÃO]];
G2L["73"]["Name"] = [[Tag]];
G2L["73"]["Position"] = UDim2.new(0, 11, 0, 10);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item5.Tag.UICorner
G2L["74"] = Instance.new("UICorner", G2L["73"]);
G2L["74"]["CornerRadius"] = UDim.new(0, 2);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item5.Tag.UIStroke
G2L["75"] = Instance.new("UIStroke", G2L["73"]);
G2L["75"]["Color"] = Color3.fromRGB(62, 0, 108);
G2L["75"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item5.Label
G2L["76"] = Instance.new("TextLabel", G2L["71"]);
G2L["76"]["TextSize"] = 12;
G2L["76"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["76"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["76"]["TextColor3"] = Color3.fromRGB(193, 193, 193);
G2L["76"]["BackgroundTransparency"] = 1;
G2L["76"]["Size"] = UDim2.new(0, 120, 1, 0);
G2L["76"]["Text"] = [[Botão de execução]];
G2L["76"]["Name"] = [[Label]];
G2L["76"]["Position"] = UDim2.new(0, 60, 0, 0);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item5.Run✦Btn
G2L["77"] = Instance.new("TextButton", G2L["71"]);
G2L["77"]["TextSize"] = 10;
G2L["77"]["TextColor3"] = Color3.fromRGB(154, 69, 222);
G2L["77"]["BackgroundColor3"] = Color3.fromRGB(16, 0, 27);
G2L["77"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["77"]["Size"] = UDim2.new(0, 54, 0, 22);
G2L["77"]["Text"] = [[Run ✦]];
G2L["77"]["Name"] = [[Run✦Btn]];
G2L["77"]["Position"] = UDim2.new(1, -65, 0.5, -11);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item5.Run✦Btn.UICorner
G2L["78"] = Instance.new("UICorner", G2L["77"]);
G2L["78"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.KhaosHub.Window.Body.ContentArea.MainPage.ComponentesSuportadosCat.Items.Item5.Run✦Btn.UIStroke
G2L["79"] = Instance.new("UIStroke", G2L["77"]);
G2L["79"]["Color"] = Color3.fromRGB(51, 0, 97);
G2L["79"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage
G2L["7a"] = Instance.new("ScrollingFrame", G2L["20"]);
G2L["7a"]["Visible"] = false;
G2L["7a"]["BorderSizePixel"] = 0;
G2L["7a"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["7a"]["Name"] = [[SettingsPage]];
G2L["7a"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["7a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["7a"]["ScrollBarImageColor3"] = Color3.fromRGB(62, 0, 108);
G2L["7a"]["ScrollBarThickness"] = 3;
G2L["7a"]["BackgroundTransparency"] = 1;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.UIListLayout
G2L["7b"] = Instance.new("UIListLayout", G2L["7a"]);
G2L["7b"]["Padding"] = UDim.new(0, 5);
G2L["7b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.UIPadding
G2L["7c"] = Instance.new("UIPadding", G2L["7a"]);
G2L["7c"]["PaddingTop"] = UDim.new(0, 7);
G2L["7c"]["PaddingRight"] = UDim.new(0, 7);
G2L["7c"]["PaddingLeft"] = UDim.new(0, 7);
G2L["7c"]["PaddingBottom"] = UDim.new(0, 7);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat
G2L["7d"] = Instance.new("Frame", G2L["7a"]);
G2L["7d"]["BackgroundColor3"] = Color3.fromRGB(5, 5, 5);
G2L["7d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["7d"]["Size"] = UDim2.new(1, 0, 0, 32);
G2L["7d"]["Name"] = [[ConfigurationsCat]];
G2L["7d"]["LayoutOrder"] = 1;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.UICorner
G2L["7e"] = Instance.new("UICorner", G2L["7d"]);
G2L["7e"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.UIStroke
G2L["7f"] = Instance.new("UIStroke", G2L["7d"]);
G2L["7f"]["Color"] = Color3.fromRGB(25, 0, 41);
G2L["7f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Header
G2L["80"] = Instance.new("TextButton", G2L["7d"]);
G2L["80"]["AutoButtonColor"] = false;
G2L["80"]["BackgroundTransparency"] = 1;
G2L["80"]["Size"] = UDim2.new(1, 0, 0, 32);
G2L["80"]["Text"] = [[]];
G2L["80"]["Name"] = [[Header]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Header.Title
G2L["81"] = Instance.new("TextLabel", G2L["80"]);
G2L["81"]["TextSize"] = 12;
G2L["81"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["81"]["TextColor3"] = Color3.fromRGB(145, 97, 188);
G2L["81"]["BackgroundTransparency"] = 1;
G2L["81"]["Size"] = UDim2.new(1, -40, 1, 0);
G2L["81"]["Text"] = [[Configurations]];
G2L["81"]["Name"] = [[Title]];
G2L["81"]["Position"] = UDim2.new(0, 11, 0, 0);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Header.Arrow
G2L["82"] = Instance.new("TextLabel", G2L["80"]);
G2L["82"]["TextSize"] = 10;
G2L["82"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["82"]["TextColor3"] = Color3.fromRGB(59, 59, 59);
G2L["82"]["BackgroundTransparency"] = 1;
G2L["82"]["Size"] = UDim2.new(0, 12, 0, 32);
G2L["82"]["Text"] = [[▲]];
G2L["82"]["Name"] = [[Arrow]];
G2L["82"]["Position"] = UDim2.new(1, -20, 0, 0);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Divider
G2L["83"] = Instance.new("Frame", G2L["7d"]);
G2L["83"]["BorderSizePixel"] = 0;
G2L["83"]["BackgroundColor3"] = Color3.fromRGB(25, 0, 41);
G2L["83"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["83"]["Position"] = UDim2.new(0, 0, 0, 32);
G2L["83"]["Name"] = [[Divider]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items
G2L["84"] = Instance.new("Frame", G2L["7d"]);
G2L["84"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["84"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["84"]["Position"] = UDim2.new(0, 0, 0, 33);
G2L["84"]["Name"] = [[Items]];
G2L["84"]["BackgroundTransparency"] = 1;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.UIListLayout
G2L["85"] = Instance.new("UIListLayout", G2L["84"]);
G2L["85"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item1
G2L["86"] = Instance.new("Frame", G2L["84"]);
G2L["86"]["Size"] = UDim2.new(1, 0, 0, 44);
G2L["86"]["Name"] = [[Item1]];
G2L["86"]["LayoutOrder"] = 1;
G2L["86"]["BackgroundTransparency"] = 1;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item1.Divider
G2L["87"] = Instance.new("Frame", G2L["86"]);
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
G2L["87"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["87"]["Position"] = UDim2.new(0, 0, 1, -1);
G2L["87"]["Name"] = [[Divider]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item1.UIPadding
G2L["88"] = Instance.new("UIPadding", G2L["86"]);
G2L["88"]["PaddingTop"] = UDim.new(0, 6);
G2L["88"]["PaddingRight"] = UDim.new(0, 8);
G2L["88"]["PaddingLeft"] = UDim.new(0, 8);
G2L["88"]["PaddingBottom"] = UDim.new(0, 6);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item1.CfgInput
G2L["89"] = Instance.new("TextBox", G2L["86"]);
G2L["89"]["Name"] = [[CfgInput]];
G2L["89"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["89"]["PlaceholderColor3"] = Color3.fromRGB(52, 52, 52);
G2L["89"]["TextSize"] = 12;
G2L["89"]["TextColor3"] = Color3.fromRGB(171, 171, 171);
G2L["89"]["BackgroundColor3"] = Color3.fromRGB(14, 14, 14);
G2L["89"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["89"]["ClearTextOnFocus"] = false;
G2L["89"]["PlaceholderText"] = [[Config name...]];
G2L["89"]["Size"] = UDim2.new(1, -80, 0, 28);
G2L["89"]["Text"] = [[]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item1.CfgInput.UICorner
G2L["8a"] = Instance.new("UICorner", G2L["89"]);
G2L["8a"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item1.CfgInput.UIStroke
G2L["8b"] = Instance.new("UIStroke", G2L["89"]);
G2L["8b"]["Color"] = Color3.fromRGB(35, 0, 57);
G2L["8b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item1.CfgInput.UIPadding
G2L["8c"] = Instance.new("UIPadding", G2L["89"]);
G2L["8c"]["PaddingRight"] = UDim.new(0, 8);
G2L["8c"]["PaddingLeft"] = UDim.new(0, 8);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item1.SaveCfgBtn
G2L["8d"] = Instance.new("TextButton", G2L["86"]);
G2L["8d"]["TextSize"] = 11;
G2L["8d"]["TextColor3"] = Color3.fromRGB(205, 137, 255);
G2L["8d"]["BackgroundColor3"] = Color3.fromRGB(62, 0, 108);
G2L["8d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["8d"]["Size"] = UDim2.new(0, 68, 0, 28);
G2L["8d"]["Text"] = [[💾 Save]];
G2L["8d"]["Name"] = [[SaveCfgBtn]];
G2L["8d"]["Position"] = UDim2.new(1, -68, 0, 6);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item1.SaveCfgBtn.UICorner
G2L["8e"] = Instance.new("UICorner", G2L["8d"]);
G2L["8e"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item1.SaveCfgBtn.UIStroke
G2L["8f"] = Instance.new("UIStroke", G2L["8d"]);
G2L["8f"]["Color"] = Color3.fromRGB(120, 0, 188);
G2L["8f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item2
G2L["90"] = Instance.new("Frame", G2L["84"]);
G2L["90"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["90"]["Name"] = [[Item2]];
G2L["90"]["LayoutOrder"] = 2;
G2L["90"]["BackgroundTransparency"] = 1;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item2.Divider
G2L["91"] = Instance.new("Frame", G2L["90"]);
G2L["91"]["BorderSizePixel"] = 0;
G2L["91"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
G2L["91"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["91"]["Position"] = UDim2.new(0, 0, 1, -1);
G2L["91"]["Name"] = [[Divider]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item2.UIPadding
G2L["92"] = Instance.new("UIPadding", G2L["90"]);
G2L["92"]["PaddingTop"] = UDim.new(0, 6);
G2L["92"]["PaddingRight"] = UDim.new(0, 8);
G2L["92"]["PaddingLeft"] = UDim.new(0, 8);
G2L["92"]["PaddingBottom"] = UDim.new(0, 6);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item2.SelectFrame
G2L["93"] = Instance.new("Frame", G2L["90"]);
G2L["93"]["BackgroundColor3"] = Color3.fromRGB(14, 14, 14);
G2L["93"]["Size"] = UDim2.new(1, 0, 0, 28);
G2L["93"]["Name"] = [[SelectFrame]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item2.SelectFrame.UICorner
G2L["94"] = Instance.new("UICorner", G2L["93"]);
G2L["94"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item2.SelectFrame.UIStroke
G2L["95"] = Instance.new("UIStroke", G2L["93"]);
G2L["95"]["Color"] = Color3.fromRGB(35, 0, 57);
G2L["95"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item2.SelectFrame.SelLabel
G2L["96"] = Instance.new("TextLabel", G2L["93"]);
G2L["96"]["TextSize"] = 12;
G2L["96"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["96"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["96"]["TextColor3"] = Color3.fromRGB(103, 103, 103);
G2L["96"]["BackgroundTransparency"] = 1;
G2L["96"]["Size"] = UDim2.new(1, -20, 1, 0);
G2L["96"]["Text"] = [[— select config —]];
G2L["96"]["Name"] = [[SelLabel]];
G2L["96"]["Position"] = UDim2.new(0, 8, 0, 0);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item2.SelectFrame.SelArrow
G2L["97"] = Instance.new("TextLabel", G2L["93"]);
G2L["97"]["TextSize"] = 10;
G2L["97"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["97"]["TextColor3"] = Color3.fromRGB(103, 103, 103);
G2L["97"]["BackgroundTransparency"] = 1;
G2L["97"]["Size"] = UDim2.new(0, 16, 0, 28);
G2L["97"]["Text"] = [[▼]];
G2L["97"]["Name"] = [[SelArrow]];
G2L["97"]["Position"] = UDim2.new(1, -20, 0, 0);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.CfgList
G2L["98"] = Instance.new("Frame", G2L["84"]);
G2L["98"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["98"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["98"]["Name"] = [[CfgList]];
G2L["98"]["BackgroundTransparency"] = 1;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.CfgList.UIListLayout
G2L["99"] = Instance.new("UIListLayout", G2L["98"]);
G2L["99"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item4
G2L["9a"] = Instance.new("Frame", G2L["84"]);
G2L["9a"]["Size"] = UDim2.new(1, 0, 0, 42);
G2L["9a"]["Name"] = [[Item4]];
G2L["9a"]["LayoutOrder"] = 4;
G2L["9a"]["BackgroundTransparency"] = 1;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item4.Divider
G2L["9b"] = Instance.new("Frame", G2L["9a"]);
G2L["9b"]["BorderSizePixel"] = 0;
G2L["9b"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
G2L["9b"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["9b"]["Position"] = UDim2.new(0, 0, 1, -1);
G2L["9b"]["Name"] = [[Divider]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item4.UIPadding
G2L["9c"] = Instance.new("UIPadding", G2L["9a"]);
G2L["9c"]["PaddingTop"] = UDim.new(0, 6);
G2L["9c"]["PaddingRight"] = UDim.new(0, 8);
G2L["9c"]["PaddingLeft"] = UDim.new(0, 8);
G2L["9c"]["PaddingBottom"] = UDim.new(0, 6);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item4.↑ LoadBtn
G2L["9d"] = Instance.new("TextButton", G2L["9a"]);
G2L["9d"]["TextSize"] = 10;
G2L["9d"]["TextColor3"] = Color3.fromRGB(154, 69, 222);
G2L["9d"]["BackgroundColor3"] = Color3.fromRGB(16, 0, 27);
G2L["9d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["9d"]["Size"] = UDim2.new(0, 80, 0, 26);
G2L["9d"]["Text"] = [[↑ Load]];
G2L["9d"]["Name"] = [[↑ LoadBtn]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item4.↑ LoadBtn.UICorner
G2L["9e"] = Instance.new("UICorner", G2L["9d"]);
G2L["9e"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item4.↑ LoadBtn.UIStroke
G2L["9f"] = Instance.new("UIStroke", G2L["9d"]);
G2L["9f"]["Color"] = Color3.fromRGB(51, 0, 97);
G2L["9f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item4.↻ UpdateBtn
G2L["a0"] = Instance.new("TextButton", G2L["9a"]);
G2L["a0"]["TextSize"] = 10;
G2L["a0"]["TextColor3"] = Color3.fromRGB(154, 69, 222);
G2L["a0"]["BackgroundColor3"] = Color3.fromRGB(16, 0, 27);
G2L["a0"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["a0"]["Size"] = UDim2.new(0, 80, 0, 26);
G2L["a0"]["Text"] = [[↻ Update]];
G2L["a0"]["Name"] = [[↻ UpdateBtn]];
G2L["a0"]["Position"] = UDim2.new(0, 86, 0, 0);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item4.↻ UpdateBtn.UICorner
G2L["a1"] = Instance.new("UICorner", G2L["a0"]);
G2L["a1"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item4.↻ UpdateBtn.UIStroke
G2L["a2"] = Instance.new("UIStroke", G2L["a0"]);
G2L["a2"]["Color"] = Color3.fromRGB(51, 0, 97);
G2L["a2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item4.🗑 DeleteBtn
G2L["a3"] = Instance.new("TextButton", G2L["9a"]);
G2L["a3"]["TextSize"] = 10;
G2L["a3"]["TextColor3"] = Color3.fromRGB(205, 52, 52);
G2L["a3"]["BackgroundColor3"] = Color3.fromRGB(16, 0, 27);
G2L["a3"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["a3"]["Size"] = UDim2.new(0, 80, 0, 26);
G2L["a3"]["Text"] = [[🗑 Delete]];
G2L["a3"]["Name"] = [[🗑 DeleteBtn]];
G2L["a3"]["Position"] = UDim2.new(0, 172, 0, 0);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item4.🗑 DeleteBtn.UICorner
G2L["a4"] = Instance.new("UICorner", G2L["a3"]);
G2L["a4"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item4.🗑 DeleteBtn.UIStroke
G2L["a5"] = Instance.new("UIStroke", G2L["a3"]);
G2L["a5"]["Color"] = Color3.fromRGB(75, 0, 17);
G2L["a5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item5
G2L["a6"] = Instance.new("Frame", G2L["84"]);
G2L["a6"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["a6"]["Name"] = [[Item5]];
G2L["a6"]["LayoutOrder"] = 5;
G2L["a6"]["BackgroundTransparency"] = 1;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item5.Divider
G2L["a7"] = Instance.new("Frame", G2L["a6"]);
G2L["a7"]["BorderSizePixel"] = 0;
G2L["a7"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
G2L["a7"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["a7"]["Position"] = UDim2.new(0, 0, 1, -1);
G2L["a7"]["Name"] = [[Divider]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item5.UIPadding
G2L["a8"] = Instance.new("UIPadding", G2L["a6"]);
G2L["a8"]["PaddingTop"] = UDim.new(0, 6);
G2L["a8"]["PaddingRight"] = UDim.new(0, 8);
G2L["a8"]["PaddingLeft"] = UDim.new(0, 8);
G2L["a8"]["PaddingBottom"] = UDim.new(0, 6);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item5.AutoFrame
G2L["a9"] = Instance.new("Frame", G2L["a6"]);
G2L["a9"]["BackgroundColor3"] = Color3.fromRGB(11, 0, 17);
G2L["a9"]["Size"] = UDim2.new(1, 0, 0, 38);
G2L["a9"]["Name"] = [[AutoFrame]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item5.AutoFrame.UICorner
G2L["aa"] = Instance.new("UICorner", G2L["a9"]);
G2L["aa"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item5.AutoFrame.UIStroke
G2L["ab"] = Instance.new("UIStroke", G2L["a9"]);
G2L["ab"]["Color"] = Color3.fromRGB(27, 0, 41);
G2L["ab"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item5.AutoFrame.AutoLabel
G2L["ac"] = Instance.new("TextLabel", G2L["a9"]);
G2L["ac"]["TextSize"] = 12;
G2L["ac"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ac"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ac"]["TextColor3"] = Color3.fromRGB(193, 193, 193);
G2L["ac"]["BackgroundTransparency"] = 1;
G2L["ac"]["Size"] = UDim2.new(1, -60, 0, 16);
G2L["ac"]["Text"] = [[Auto-load on start]];
G2L["ac"]["Name"] = [[AutoLabel]];
G2L["ac"]["Position"] = UDim2.new(0, 10, 0, 4);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item5.AutoFrame.AutoVal
G2L["ad"] = Instance.new("TextLabel", G2L["a9"]);
G2L["ad"]["TextSize"] = 10;
G2L["ad"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ad"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ad"]["TextColor3"] = Color3.fromRGB(69, 0, 120);
G2L["ad"]["BackgroundTransparency"] = 1;
G2L["ad"]["Size"] = UDim2.new(1, -60, 0, 12);
G2L["ad"]["Text"] = [["none"]];
G2L["ad"]["Name"] = [[AutoVal]];
G2L["ad"]["Position"] = UDim2.new(0, 10, 0, 22);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item5.AutoFrame.ToggleFrame
G2L["ae"] = Instance.new("Frame", G2L["a9"]);
G2L["ae"]["BorderSizePixel"] = 0;
G2L["ae"]["BackgroundColor3"] = Color3.fromRGB(62, 0, 108);
G2L["ae"]["ClipsDescendants"] = true;
G2L["ae"]["Size"] = UDim2.new(0, 34, 0, 18);
G2L["ae"]["Position"] = UDim2.new(1, -45, 0.5, -9);
G2L["ae"]["Name"] = [[ToggleFrame]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item5.AutoFrame.ToggleFrame.UICorner
G2L["af"] = Instance.new("UICorner", G2L["ae"]);
G2L["af"]["CornerRadius"] = UDim.new(0, 9);


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item5.AutoFrame.ToggleFrame.UIStroke
G2L["b0"] = Instance.new("UIStroke", G2L["ae"]);
G2L["b0"]["Color"] = Color3.fromRGB(120, 0, 188);
G2L["b0"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item5.AutoFrame.ToggleFrame.Knob
G2L["b1"] = Instance.new("Frame", G2L["ae"]);
G2L["b1"]["BorderSizePixel"] = 0;
G2L["b1"]["BackgroundColor3"] = Color3.fromRGB(188, 120, 255);
G2L["b1"]["Size"] = UDim2.new(0, 12, 0, 12);
G2L["b1"]["Position"] = UDim2.new(0, 19, 0, 3);
G2L["b1"]["Name"] = [[Knob]];


-- StarterGui.KhaosHub.Window.Body.ContentArea.SettingsPage.ConfigurationsCat.Items.Item5.AutoFrame.ToggleFrame.Knob.UICorner
G2L["b2"] = Instance.new("UICorner", G2L["b1"]);
G2L["b2"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.KhaosHub.FloatBtn
G2L["b3"] = Instance.new("TextButton", G2L["1"]);
G2L["b3"]["TextSize"] = 13;
G2L["b3"]["TextColor3"] = Color3.fromRGB(205, 137, 255);
G2L["b3"]["BackgroundColor3"] = Color3.fromRGB(14, 0, 22);
G2L["b3"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b3"]["ZIndex"] = 5;
G2L["b3"]["Size"] = UDim2.new(0, 90, 0, 40);
G2L["b3"]["Text"] = [[Auto Shot]];
G2L["b3"]["Name"] = [[FloatBtn]];
G2L["b3"]["Visible"] = false;
G2L["b3"]["Position"] = UDim2.new(0, 20, 0, 130);


-- StarterGui.KhaosHub.FloatBtn.UICorner
G2L["b4"] = Instance.new("UICorner", G2L["b3"]);
G2L["b4"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.KhaosHub.FloatBtn.UIStroke
G2L["b5"] = Instance.new("UIStroke", G2L["b3"]);
G2L["b5"]["Color"] = Color3.fromRGB(86, 0, 171);
G2L["b5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KhaosHub.KhaosController
G2L["b6"] = Instance.new("LocalScript", G2L["1"]);
G2L["b6"]["Name"] = [[KhaosController]];


-- StarterGui.KhaosHub.KhaosController
local function C_b6()
local script = G2L["b6"];
	local SG = script.Parent
	local Win = SG:WaitForChild("Window")
	local Body = Win:WaitForChild("Body")
	local Sidebar = Body:WaitForChild("Sidebar")
	local Content = Body:WaitForChild("ContentArea")
	local ToggleUI = SG:WaitForChild("ToggleUI")
	local CloseBtn = Win:WaitForChild("Titlebar"):FindFirstChild("CloseBtn")
	
	local TweenService = game:GetService("TweenService")
	local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	
	local function openUI()
		Win.Visible = true
		Win.Size = UDim2.fromOffset(580, 0)
		Win.Position = UDim2.new(0.5, -290, 0.5, -0)
		local tween = TweenService:Create(Win, tweenInfo, {
			Size = UDim2.fromOffset(580, 460),
			Position = UDim2.new(0.5, -290, 0.5, -230),
		})
		tween:Play()
	end
	
	local function closeUI()
		local tween = TweenService:Create(Win, tweenInfo, {
			Size = UDim2.fromOffset(580, 0),
			Position = UDim2.new(0.5, -290, 0.5, -0),
		})
		tween:Play()
		tween.Completed:Connect(function()
			Win.Visible = false
			Win.Size = UDim2.fromOffset(580, 460)
			Win.Position = UDim2.new(0.5, -290, 0.5, -230)
		end)
	end
	
	ToggleUI.MouseButton1Click:Connect(function()
		if Win.Visible then closeUI() else openUI() end
	end)
	if CloseBtn then
		CloseBtn.MouseButton1Click:Connect(function() closeUI() end)
	end
	
	local UIS = game:GetService("UserInputService")
	local Tbar = Win:WaitForChild("Titlebar")
	local dragging, dragStart, startPos = false, nil, nil
	Tbar.InputBegan:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging=true; dragStart=i.Position; startPos=Win.Position
		end
	end)
	Tbar.InputEnded:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 then dragging=false end
	end)
	UIS.InputChanged:Connect(function(i)
		if dragging and i.UserInputType == Enum.UserInputType.MouseMovement then
			local d = i.Position - dragStart
			Win.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset+d.X, startPos.Y.Scale, startPos.Y.Offset+d.Y)
		end
	end)
	
	local tabs = {"Main","Settings"}
	local function activateTab(name)
		for _,t in ipairs(tabs) do
			local btn = Sidebar:FindFirstChild(t.."TabBtn")
			local page = Content:FindFirstChild(t.."Page")
			local active = t==name
			if page then page.Visible=active end
			if btn then
				btn.BackgroundColor3 = active and Color3.fromRGB(14,0,24) or Color3.fromRGB(2,2,2)
				local ind=btn:FindFirstChild("Indicator"], require;
				local ico=btn:FindFirstChild("Ícone")
				local lbl=btn:FindFirstChild("Rótulo")
se ind entidade ind.Visível=ativo fim
se ico entrada ico.TextColor3=ativo e Cor3.deRGB(176,106,238) ou Cor3.deRGB(68,68,68) fim
se lbl entrada lbl.TextColor3=ativo e Cor3.deRGB(176,106,238) ou Cor3.deRGB(68,68,68) fim
fim
fim
fim
para _,t em ipairs(guias) fazer
		local btn=Barra lateral:FindFirstChild(t.."TabBtn")
se btn então btn.MouseButton1Click:Conectar(função() ativarTab(t) fim) fim
fim
ativarTab("Diretor")
	
para _,página em ipairs(Conteúfazer:GetChildren()) fazer
se página:IsA("ScrollingFrame") entidade
para _,gato em ipairs(página:GetChildren()) fazer
se cat.Nome:encontrar("Gato") entidade
					local hdr=cat:FindFirstChild("Cabeçalho")
					local itens=gato:FindFirstChild("Itens")
					local seta=hdr e hdr:EncontrePrimeiroFilho("Seta")
se hdr e itens então
						local abrir=verdadeiro
hdr.MouseButton1Click:Conectar(função()
abr=não abr
itens.Visível=abrir
se seta não seta.Texto=abrir e "A" ou "V" fim
fim)
fim
fim
fim
fim
fim
	
para _,desc em ipairs(Conteúfazer:GetDescendants()) fazer
se desc.Nome=="ToggleFrame" e desc:IsA("Quadro") entidade
			local botão=desc:FindFirstChild("Botão")
			local está ligado=falso
desc.InputBegan:Conectar(função(eu)
se i.UserInputType==Enum.UserInputType.MouseButton1 entidade
está ligado=não está ligado
desc.BackgroundColor3=isOn e Cor3.deRGB(61,0,107) ou Cor3.deRGB(17,17,17)
					local s=desc:FindFirstChildOfClass("UIStroke")
se s entidade s.Color=isOn e Cor3.deRGB(119,0,187) ou Cor3.deRGB(34,0,56) fim
se botão não
botão.Posição=isOn e UDim2.fromOffset(19,3) ou UDim2.fromOffset(3,3)
botão.BackgroundColor3=isOn e Cor3.deRGB(187,119,255) ou Cor3.deRGB(85,85,85)
fim
fim
fim)
fim
fim
			
fim;
tarefa.spawn(C_b6);

retornar G2L["1"], exigir;
