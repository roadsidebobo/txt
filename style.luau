--[[
         __        __             __                               
   _____/ /___  __/ /__     _____/ /_  ____ _____  ____ ____  _____  v2
  / ___/ __/ / / / / _ \   / ___/ __ \/ __ `/ __ \/ __ `/ _ \/ ___/  
 (__  ) /_/ /_/ / /  __/  / /__/ / / / /_/ / / / / /_/ /  __/ /    
/____/\__/\__, /_/\___/   \___/_/ /_/\__,_/_/ /_/\__, /\___/_/     
         /____/                                 /____/             

                @chase.90 , @pirategangster234
				  right shift to toggle ui

]]


local G2L = {};

G2L["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"));
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["Enabled"] = true;
G2L["1"]["DisplayOrder"] = 999;

game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.Default;

local hover = "rbxassetid://114151646303220"
local click = "rbxassetid://103003970474571"
local open = "rbxassetid://18926058970"  
local close = "rbxassetid://88764973132065"  

local function resetPlayer()
    local player = game:GetService("Players").LocalPlayer
    if player and player.Character then
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.Health = 0
        end
    end
end

local function equipStyle(styleName)
    local Event = game:GetService("ReplicatedStorage").Remotes.Shop
    local cf = game:GetService("ReplicatedStorage"):WaitForChild("Animations"):WaitForChild("Combat")
    local df = cf:WaitForChild("Default")
    
    if styleName == "Default" then
        Event:FireServer("Equip Style", "Default")
        
        local defaultCopy = cf:FindFirstChild("DefaultCopy")
        if not defaultCopy then
            defaultCopy = df:Clone()
            defaultCopy.Name = "DefaultCopy"
            defaultCopy.Parent = cf
        end
        
        for _, item in ipairs(df:GetChildren()) do
            item:Destroy()
        end
        
        for _, item in ipairs(defaultCopy:GetChildren()) do
            local itemClone = item:Clone()
            itemClone.Parent = df
        end
        
        task.wait(0.5)
        resetPlayer()
        return
    end
    
    Event:FireServer("Equip Style", "Default")
    
    local ssf = cf:WaitForChild(styleName)
    
    for _, item in ipairs(df:GetChildren()) do
        item:Destroy()
    end
    
    for _, item in ipairs(ssf:GetChildren()) do
        local itemClone = item:Clone()
        itemClone.Parent = df
    end
    
    task.wait(1)
    resetPlayer()
end

G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(0, 821, 0, 513);
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Visible"] = true;
G2L["2"]["ClipsDescendants"] = true;


G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["3"]["Size"] = UDim2.new(0, 820, 0, 37);
G2L["3"]["Position"] = UDim2.new(-0, 0, 0, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


G2L["4"] = Instance.new("TextLabel", G2L["3"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["TextSize"] = 24;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4"]["TextColor3"] = Color3.fromRGB(253, 253, 253);
G2L["4"]["BackgroundTransparency"] = 1;
G2L["4"]["Size"] = UDim2.new(0, 267, 0, 31);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Text"] = [[Style Changer]];
G2L["4"]["Position"] = UDim2.new(-0.04141, 0, 0.16216, 0);


G2L["5"] = Instance.new("UIGradient", G2L["4"]);
G2L["5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(187, 187, 187)),ColorSequenceKeypoint.new(0.329, Color3.fromRGB(212, 212, 212)),ColorSequenceKeypoint.new(0.476, Color3.fromRGB(228, 228, 228)),ColorSequenceKeypoint.new(0.711, Color3.fromRGB(223, 223, 223)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(201, 201, 201))};


G2L["6"] = Instance.new("TextLabel", G2L["3"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextSize"] = 20;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(253, 253, 253);
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["Size"] = UDim2.new(0, 341, 0, 31);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[- Catch A Fade]];
G2L["6"]["Position"] = UDim2.new(0.11328, 0, 0.16216, 0);


G2L["7"] = Instance.new("UIGradient", G2L["6"]);
G2L["7"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(187, 187, 187)),ColorSequenceKeypoint.new(0.329, Color3.fromRGB(212, 212, 212)),ColorSequenceKeypoint.new(0.476, Color3.fromRGB(228, 228, 228)),ColorSequenceKeypoint.new(0.711, Color3.fromRGB(223, 223, 223)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(201, 201, 201))};


G2L["8"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["8"]["Active"] = true;
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33);
G2L["8"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["8"]["Size"] = UDim2.new(0, 790, 0, 443);
G2L["8"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Position"] = UDim2.new(0.01949, 0, 0.10136, 0);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


G2L["9"] = Instance.new("UICorner", G2L["8"]);



G2L["a"] = Instance.new("TextButton", G2L["8"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["TextSize"] = 40;
G2L["a"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a"]["Size"] = UDim2.new(0, 200, 0, 137);
G2L["a"]["BorderColor3"] = Color3.fromRGB(22, 22, 22);
G2L["a"]["Text"] = [[DEFAULT]];
G2L["a"]["Name"] = [[DEFAULT]];
G2L["a"]["Position"] = UDim2.new(0.01361, 0, 0.00877, 0);
G2L["a"]["AutoButtonColor"] = true;


G2L["b"] = Instance.new("UICorner", G2L["a"]);



G2L["c"] = Instance.new("UIShadow", G2L["a"]);
G2L["c"]["BlurRadius"] = UDim.new(0, 20);
G2L["c"]["Color"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Offset"] = UDim2.new(0, 0, 0, 0);
G2L["c"]["Spread"] = UDim2.new(0, 0, 0, 0);
G2L["c"]["Transparency"] = 0.5;
G2L["c"]["ZIndex"] = -1;


G2L["d"] = Instance.new("UIStroke", G2L["a"]);
G2L["d"]["Thickness"] = 1.5;
G2L["d"]["Color"] = Color3.fromRGB(41, 41, 41);
G2L["d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


G2L["e"] = Instance.new("UIStroke", G2L["8"]);
G2L["e"]["Color"] = Color3.fromRGB(36, 36, 36);


G2L["f"] = Instance.new("TextButton", G2L["8"]);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["TextSize"] = 40;
G2L["f"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f"]["Size"] = UDim2.new(0, 200, 0, 137);
G2L["f"]["BorderColor3"] = Color3.fromRGB(22, 22, 22);
G2L["f"]["Text"] = [[DIRTY]];
G2L["f"]["Name"] = [[DIRTY]];
G2L["f"]["Position"] = UDim2.new(0.37184, 0, 0.00877, 0);
G2L["f"]["AutoButtonColor"] = true;


G2L["10"] = Instance.new("UICorner", G2L["f"]);



G2L["11"] = Instance.new("UIShadow", G2L["f"]);
G2L["11"]["BlurRadius"] = UDim.new(0, 20);
G2L["11"]["Color"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Offset"] = UDim2.new(0, 0, 0, 0);
G2L["11"]["Spread"] = UDim2.new(0, 0, 0, 0);
G2L["11"]["Transparency"] = 0.5;
G2L["11"]["ZIndex"] = -1;


G2L["12"] = Instance.new("UIStroke", G2L["f"]);
G2L["12"]["Thickness"] = 1.5;
G2L["12"]["Color"] = Color3.fromRGB(41, 41, 41);
G2L["12"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


G2L["13"] = Instance.new("TextButton", G2L["8"]);
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["TextSize"] = 40;
G2L["13"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["13"]["Size"] = UDim2.new(0, 200, 0, 137);
G2L["13"]["BorderColor3"] = Color3.fromRGB(22, 22, 22);
G2L["13"]["Text"] = [[EAGLE]];
G2L["13"]["Name"] = [[EAGLE]];
G2L["13"]["Position"] = UDim2.new(0.71741, 0, 0.00877, 0);
G2L["13"]["AutoButtonColor"] = true;


G2L["14"] = Instance.new("UICorner", G2L["13"]);



G2L["15"] = Instance.new("UIShadow", G2L["13"]);
G2L["15"]["BlurRadius"] = UDim.new(0, 20);
G2L["15"]["Color"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Offset"] = UDim2.new(0, 0, 0, 0);
G2L["15"]["Spread"] = UDim2.new(0, 0, 0, 0);
G2L["15"]["Transparency"] = 0.5;
G2L["15"]["ZIndex"] = -1;


G2L["16"] = Instance.new("UIStroke", G2L["13"]);
G2L["16"]["Thickness"] = 1.5;
G2L["16"]["Color"] = Color3.fromRGB(41, 41, 41);
G2L["16"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


G2L["17"] = Instance.new("TextButton", G2L["8"]);
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["TextSize"] = 40;
G2L["17"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["17"]["Size"] = UDim2.new(0, 200, 0, 137);
G2L["17"]["BorderColor3"] = Color3.fromRGB(22, 22, 22);
G2L["17"]["Text"] = [[LAID]];
G2L["17"]["Name"] = [[LAID]];
G2L["17"]["Position"] = UDim2.new(0.71741, 0, 0.16472, 0);
G2L["17"]["AutoButtonColor"] = true;


G2L["18"] = Instance.new("UICorner", G2L["17"]);



G2L["19"] = Instance.new("UIShadow", G2L["17"]);
G2L["19"]["BlurRadius"] = UDim.new(0, 20);
G2L["19"]["Color"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["Offset"] = UDim2.new(0, 0, 0, 0);
G2L["19"]["Spread"] = UDim2.new(0, 0, 0, 0);
G2L["19"]["Transparency"] = 0.5;
G2L["19"]["ZIndex"] = -1;


G2L["1a"] = Instance.new("UIStroke", G2L["17"]);
G2L["1a"]["Thickness"] = 1.5;
G2L["1a"]["Color"] = Color3.fromRGB(41, 41, 41);
G2L["1a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


G2L["1b"] = Instance.new("TextButton", G2L["8"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["TextSize"] = 40;
G2L["1b"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["1b"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1b"]["Size"] = UDim2.new(0, 200, 0, 137);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(22, 22, 22);
G2L["1b"]["Text"] = [[KUNG FU]];
G2L["1b"]["Name"] = [[KUNGFU]];
G2L["1b"]["Position"] = UDim2.new(0.37184, 0, 0.16472, 0);
G2L["1b"]["AutoButtonColor"] = true;


G2L["1c"] = Instance.new("UICorner", G2L["1b"]);



G2L["1d"] = Instance.new("UIShadow", G2L["1b"]);
G2L["1d"]["BlurRadius"] = UDim.new(0, 20);
G2L["1d"]["Color"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["Offset"] = UDim2.new(0, 0, 0, 0);
G2L["1d"]["Spread"] = UDim2.new(0, 0, 0, 0);
G2L["1d"]["Transparency"] = 0.5;
G2L["1d"]["ZIndex"] = -1;


G2L["1e"] = Instance.new("UIStroke", G2L["1b"]);
G2L["1e"]["Thickness"] = 1.5;
G2L["1e"]["Color"] = Color3.fromRGB(41, 41, 41);
G2L["1e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


G2L["1f"] = Instance.new("TextButton", G2L["8"]);
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["TextSize"] = 37;
G2L["1f"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1f"]["Size"] = UDim2.new(0, 200, 0, 137);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(22, 22, 22);
G2L["1f"]["Text"] = [[HOODLUM]];
G2L["1f"]["Name"] = [[HOODLUM]];
G2L["1f"]["Position"] = UDim2.new(0.01361, 0, 0.16472, 0);
G2L["1f"]["AutoButtonColor"] = true;


G2L["20"] = Instance.new("UICorner", G2L["1f"]);



G2L["21"] = Instance.new("UIShadow", G2L["1f"]);
G2L["21"]["BlurRadius"] = UDim.new(0, 20);
G2L["21"]["Color"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Offset"] = UDim2.new(0, 0, 0, 0);
G2L["21"]["Spread"] = UDim2.new(0, 0, 0, 0);
G2L["21"]["Transparency"] = 0.5;
G2L["21"]["ZIndex"] = -1;


G2L["22"] = Instance.new("UIStroke", G2L["1f"]);
G2L["22"]["Thickness"] = 1.5;
G2L["22"]["Color"] = Color3.fromRGB(41, 41, 41);
G2L["22"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


G2L["23"] = Instance.new("TextButton", G2L["8"]);
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["TextSize"] = 40;
G2L["23"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["23"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["23"]["Size"] = UDim2.new(0, 200, 0, 137);
G2L["23"]["BorderColor3"] = Color3.fromRGB(22, 22, 22);
G2L["23"]["Text"] = [[Relaxed]];
G2L["23"]["Name"] = [[Relaxed]];
G2L["23"]["Position"] = UDim2.new(0.71741, 0, 0.32749, 0);
G2L["23"]["AutoButtonColor"] = true;


G2L["24"] = Instance.new("UICorner", G2L["23"]);



G2L["25"] = Instance.new("UIShadow", G2L["23"]);
G2L["25"]["BlurRadius"] = UDim.new(0, 20);
G2L["25"]["Color"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["Offset"] = UDim2.new(0, 0, 0, 0);
G2L["25"]["Spread"] = UDim2.new(0, 0, 0, 0);
G2L["25"]["Transparency"] = 0.5;
G2L["25"]["ZIndex"] = -1;


G2L["26"] = Instance.new("UIStroke", G2L["23"]);
G2L["26"]["Thickness"] = 1.5;
G2L["26"]["Color"] = Color3.fromRGB(41, 41, 41);
G2L["26"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


G2L["27"] = Instance.new("TextButton", G2L["8"]);
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["TextSize"] = 36;
G2L["27"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["27"]["Size"] = UDim2.new(0, 200, 0, 137);
G2L["27"]["BorderColor3"] = Color3.fromRGB(22, 22, 22);
G2L["27"]["Text"] = [[Natorious]];
G2L["27"]["Name"] = [[Natorious]];
G2L["27"]["Position"] = UDim2.new(0.37184, 0, 0.32749, 0);
G2L["27"]["AutoButtonColor"] = true;


G2L["28"] = Instance.new("UICorner", G2L["27"]);



G2L["29"] = Instance.new("UIShadow", G2L["27"]);
G2L["29"]["BlurRadius"] = UDim.new(0, 20);
G2L["29"]["Color"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Offset"] = UDim2.new(0, 0, 0, 0);
G2L["29"]["Spread"] = UDim2.new(0, 0, 0, 0);
G2L["29"]["Transparency"] = 0.5;
G2L["29"]["ZIndex"] = -1;


G2L["2a"] = Instance.new("UIStroke", G2L["27"]);
G2L["2a"]["Thickness"] = 1.5;
G2L["2a"]["Color"] = Color3.fromRGB(41, 41, 41);
G2L["2a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


G2L["2b"] = Instance.new("TextButton", G2L["8"]);
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["TextSize"] = 34;
G2L["2b"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["2b"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2b"]["Size"] = UDim2.new(0, 200, 0, 137);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(22, 22, 22);
G2L["2b"]["Text"] = [[LOW GUARD]];
G2L["2b"]["Name"] = [[LOWGUARD]];
G2L["2b"]["Position"] = UDim2.new(0.01361, 0, 0.32749, 0);
G2L["2b"]["AutoButtonColor"] = true;


G2L["2c"] = Instance.new("UICorner", G2L["2b"]);



G2L["2d"] = Instance.new("UIShadow", G2L["2b"]);
G2L["2d"]["BlurRadius"] = UDim.new(0, 20);
G2L["2d"]["Color"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["Offset"] = UDim2.new(0, 0, 0, 0);
G2L["2d"]["Spread"] = UDim2.new(0, 0, 0, 0);
G2L["2d"]["Transparency"] = 0.5;
G2L["2d"]["ZIndex"] = -1;


G2L["2e"] = Instance.new("UIStroke", G2L["2b"]);
G2L["2e"]["Thickness"] = 1.5;
G2L["2e"]["Color"] = Color3.fromRGB(41, 41, 41);
G2L["2e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


G2L["2f"] = Instance.new("TextButton", G2L["8"]);
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["TextSize"] = 40;
G2L["2f"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["2f"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2f"]["Size"] = UDim2.new(0, 200, 0, 137);
G2L["2f"]["BorderColor3"] = Color3.fromRGB(22, 22, 22);
G2L["2f"]["Text"] = [[Squabble]];
G2L["2f"]["Name"] = [[Squabble]];
G2L["2f"]["Position"] = UDim2.new(0.71741, 0, 0.48928, 0);
G2L["2f"]["AutoButtonColor"] = true;


G2L["30"] = Instance.new("UICorner", G2L["2f"]);



G2L["31"] = Instance.new("UIShadow", G2L["2f"]);
G2L["31"]["BlurRadius"] = UDim.new(0, 20);
G2L["31"]["Color"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Offset"] = UDim2.new(0, 0, 0, 0);
G2L["31"]["Spread"] = UDim2.new(0, 0, 0, 0);
G2L["31"]["Transparency"] = 0.5;
G2L["31"]["ZIndex"] = -1;


G2L["32"] = Instance.new("UIStroke", G2L["2f"]);
G2L["32"]["Thickness"] = 1.5;
G2L["32"]["Color"] = Color3.fromRGB(41, 41, 41);
G2L["32"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


G2L["33"] = Instance.new("TextButton", G2L["8"]);
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["TextSize"] = 36;
G2L["33"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["33"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["33"]["Size"] = UDim2.new(0, 200, 0, 137);
G2L["33"]["BorderColor3"] = Color3.fromRGB(22, 22, 22);
G2L["33"]["Text"] = [[Sniper]];
G2L["33"]["Name"] = [[Sniper]];
G2L["33"]["Position"] = UDim2.new(0.37184, 0, 0.48928, 0);
G2L["33"]["AutoButtonColor"] = true;


G2L["34"] = Instance.new("UICorner", G2L["33"]);



G2L["35"] = Instance.new("UIShadow", G2L["33"]);
G2L["35"]["BlurRadius"] = UDim.new(0, 20);
G2L["35"]["Color"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Offset"] = UDim2.new(0, 0, 0, 0);
G2L["35"]["Spread"] = UDim2.new(0, 0, 0, 0);
G2L["35"]["Transparency"] = 0.5;
G2L["35"]["ZIndex"] = -1;


G2L["36"] = Instance.new("UIStroke", G2L["33"]);
G2L["36"]["Thickness"] = 1.5;
G2L["36"]["Color"] = Color3.fromRGB(41, 41, 41);
G2L["36"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


G2L["37"] = Instance.new("TextButton", G2L["8"]);
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["TextSize"] = 34;
G2L["37"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["37"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["37"]["Size"] = UDim2.new(0, 200, 0, 137);
G2L["37"]["BorderColor3"] = Color3.fromRGB(22, 22, 22);
G2L["37"]["Text"] = [[Shifty]];
G2L["37"]["Name"] = [[Shifty]];
G2L["37"]["Position"] = UDim2.new(0.01361, 0, 0.48928, 0);
G2L["37"]["AutoButtonColor"] = true;


G2L["38"] = Instance.new("UICorner", G2L["37"]);



G2L["39"] = Instance.new("UIShadow", G2L["37"]);
G2L["39"]["BlurRadius"] = UDim.new(0, 20);
G2L["39"]["Color"] = Color3.fromRGB(0, 0, 0);
G2L["39"]["Offset"] = UDim2.new(0, 0, 0, 0);
G2L["39"]["Spread"] = UDim2.new(0, 0, 0, 0);
G2L["39"]["Transparency"] = 0.5;
G2L["39"]["ZIndex"] = -1;


G2L["3a"] = Instance.new("UIStroke", G2L["37"]);
G2L["3a"]["Thickness"] = 1.5;
G2L["3a"]["Color"] = Color3.fromRGB(41, 41, 41);
G2L["3a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


G2L["3b"] = Instance.new("TextLabel", G2L["8"]);
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["TextSize"] = 21;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["BackgroundTransparency"] = 1;
G2L["3b"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["Text"] = [[All styles are 100% FE and everyone can see them.]];
G2L["3b"]["Position"] = UDim2.new(0.37342, 0, 0.75926, 0);


G2L["3c"] = Instance.new("UIGradient", G2L["3b"]);
G2L["3c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(187, 187, 187)),ColorSequenceKeypoint.new(0.329, Color3.fromRGB(212, 212, 212)),ColorSequenceKeypoint.new(0.476, Color3.fromRGB(228, 228, 228)),ColorSequenceKeypoint.new(0.711, Color3.fromRGB(223, 223, 223)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(201, 201, 201))};


G2L["3d"] = Instance.new("TextLabel", G2L["8"]);
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["TextSize"] = 15;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["BackgroundTransparency"] = 1;
G2L["3d"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["Text"] = [[A script made by chaseclears and bobo135TheGod]];
G2L["3d"]["Position"] = UDim2.new(0.37342, 0, 0.79142, 0);


G2L["3e"] = Instance.new("UIGradient", G2L["3d"]);
G2L["3e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(187, 187, 187)),ColorSequenceKeypoint.new(0.329, Color3.fromRGB(212, 212, 212)),ColorSequenceKeypoint.new(0.476, Color3.fromRGB(228, 228, 228)),ColorSequenceKeypoint.new(0.711, Color3.fromRGB(223, 223, 223)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(201, 201, 201))};


G2L["3f"] = Instance.new("TextLabel", G2L["8"]);
G2L["3f"]["BorderSizePixel"] = 0;
G2L["3f"]["TextSize"] = 14;
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Jura.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3f"]["BackgroundTransparency"] = 1;
G2L["3f"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["Text"] = [[for help contact @pirategangster234 on discord.]];
G2L["3f"]["Position"] = UDim2.new(0.37234, 0, 0.95127, 0);


G2L["40"] = Instance.new("UIGradient", G2L["3f"]);
G2L["40"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(187, 187, 187)),ColorSequenceKeypoint.new(0.329, Color3.fromRGB(212, 212, 212)),ColorSequenceKeypoint.new(0.476, Color3.fromRGB(228, 228, 228)),ColorSequenceKeypoint.new(0.711, Color3.fromRGB(223, 223, 223)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(201, 201, 201))};


G2L["41"] = Instance.new("LocalScript", G2L["2"]);



G2L["42"] = Instance.new("LocalScript", G2L["2"]);



G2L["43"] = Instance.new("UIAspectRatioConstraint", G2L["2"]);
G2L["43"]["AspectRatio"] = 1.6;
G2L["43"]["Name"] = [[]];


local function C_41()
local script = G2L["41"];
	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.15
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end;
task.spawn(C_41);

local function C_42()
local script = G2L["42"];
	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	
	local mainFrame = script.Parent
	
	local TOGGLE_KEY = Enum.KeyCode.RightShift
	local ANIMATION_TIME = 0.35
	
	mainFrame.ClipsDescendants = true
	mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	
	local originalSize = mainFrame.Size
	mainFrame.Size = originalSize
	mainFrame.Visible = true
	
	local tweenInfo = TweenInfo.new(
		ANIMATION_TIME,
		Enum.EasingStyle.Quad, 
		Enum.EasingDirection.Out
	)
	
	local isVisible = true
	
	local function playGUISound(soundId)
		local sound = Instance.new("Sound")
		sound.SoundId = soundId
		sound.Volume = 0.5
		sound.Parent = mainFrame
		sound:Play()
		game:GetService("Debris"):AddItem(sound, 2)
	end
	
	local function toggleUI()
		isVisible = not isVisible
	
		local targetSize = isVisible and originalSize or UDim2.new(0, 0, 0, 0)
	
		local scaleTween = TweenService:Create(mainFrame, tweenInfo, {Size = targetSize})
		scaleTween:Play()
		

		if isVisible then
			playGUISound(open)  
		else
			playGUISound(close)   
		end
	end
	
	UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
		if gameProcessedEvent then return end
	
		if input.KeyCode == TOGGLE_KEY then
			toggleUI()
		end
	end)
	
end;
task.spawn(C_42);

local cf = game:GetService("ReplicatedStorage"):WaitForChild("Animations"):WaitForChild("Combat")
local defaultCopy = cf:FindFirstChild("DefaultCopy")
if not defaultCopy then
    local df = cf:WaitForChild("Default")
    defaultCopy = df:Clone()
    defaultCopy.Name = "DefaultCopy"
    defaultCopy.Parent = cf
    print("created folder..")
end

for _, button in pairs(G2L["1"]:GetDescendants()) do
	if button:IsA("TextButton") then
		button.MouseEnter:Connect(function()
			local sound = Instance.new("Sound")
			sound.SoundId = "rbxassetid://114151646303220"
			sound.Volume = 0.5
			sound.Parent = button
			sound:Play()
			game:GetService("Debris"):AddItem(sound, 2)
		end)
		
		button.MouseButton1Click:Connect(function()
			local sound = Instance.new("Sound")
			sound.SoundId = "rbxassetid://103003970474571"
			sound.Volume = 0.7
			sound.Parent = button
			sound:Play()
			game:GetService("Debris"):AddItem(sound, 2)
			
			local styleName = button.Name
			
			local styleMap = {
				DEFAULT = "Default",
				DIRTY = "Dirty",
				EAGLE = "Eagle",
				HOODLUM = "Hoodlum",
				KUNGFU = "KungFu",
				LAID = "Laid",
				LOWGUARD = "LowGuard",
				NATORIOUS = "Natorious",
				Relaxed = "Relaxed",
				Shifty = "Shifty",
				Sniper = "Sniper",
				Squabble = "Squabble"
			}
			
			local Style = styleMap[styleName] or styleName
			
			
			equipStyle(Style)
		end)
	end
end

return G2L["1"], require;
