-- [[ VENZX HUB - CREATIVE & ELEVANT CUSTOM UI ]] --
-- Desain Elegan: Glassmorphism Ungu Transparan dengan Logo Bulat VzX Neon

local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Hapus UI lama jika ada untuk mencegah penumpukan
if CoreGui:FindFirstChild("VenzxHubUI") then
    CoreGui.VenzxHubUI:Destroy()
end

-- =================================================================
-- SISTEM KUNCI PERMANEN (ELEGANT PROMPT)
-- =================================================================
local KeyVerified = false

local function CreateKeySystemView(onSuccess)
    local KeyUI = Instance.new("ScreenGui")
    KeyUI.Name = "VenzxKeyUI"
    KeyUI.Parent = CoreGui
    
    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0, 320, 0, 180)
    MainFrame.Position = UDim2.new(0.5, -160, 0.5, -90)
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 15, 30)
    MainFrame.BackgroundTransparency = 0.2
    MainFrame.BorderSizePixel = 0
    MainFrame.Parent = KeyUI
    
    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 12)
    Corner.Parent = MainFrame
    
    local Stroke = Instance.new("UIStroke")
    Stroke.Color = Color3.fromRGB(150, 0, 255)
    Stroke.Thickness = 1.5
    Stroke.Parent = MainFrame

    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, 0, 0, 40)
    Title.Text = "VENZX HUB | VERIFICATION"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 14
    Title.Font = Enum.Font.FredokaOne
    Title.BackgroundTransparency = 1
    Title.Parent = MainFrame

    local TextBox = Instance.new("TextBox")
    TextBox.Size = UDim2.new(0, 240, 0, 35)
    TextBox.Position = UDim2.new(0.5, -120, 0.4, 0)
    TextBox.BackgroundColor3 = Color3.fromRGB(40, 30, 60)
    TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.PlaceholderText = "Masukkan Key (vZx-17)..."
    TextBox.Text = ""
    TextBox.TextSize = 14
    TextBox.Font = Enum.Font.SourceSans
    TextBox.Parent = MainFrame
    Instance.new("UICorner", TextBox).CornerRadius = UDim.new(0, 6)

    local VerifyBtn = Instance.new("TextButton")
    VerifyBtn.Size = UDim2.new(0, 120, 0, 35)
    VerifyBtn.Position = UDim2.new(0.5, -60, 0.7, 5)
    VerifyBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 255)
    VerifyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    VerifyBtn.Text = "VERIFIKASI"
    VerifyBtn.Font = Enum.Font.SourceSansBold
    VerifyBtn.TextSize = 14
    VerifyBtn.Parent = MainFrame
    Instance.new("UICorner", VerifyBtn).CornerRadius = UDim.new(0, 6)

    VerifyBtn.MouseButton1Click:Connect(function()
        if TextBox.Text == "vZx-17" then
            KeyUI:Destroy()
            onSuccess()
        else
            TextBox.Text = ""
            TextBox.PlaceholderText = "Key Salah! Coba Lagi..."
            TweenService:Create(Stroke, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 2, true), {Color = Color3.fromRGB(255,0,0)}):Play()
        end
    end)
end

-- =================================================================
-- PEMBUATAN MENU UTAMA (CREATIVE & ELEGANT)
-- =================================================================
local function BuildMainHub()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "VenzxHubUI"
    ScreenGui.Parent = CoreGui

    -- Window Utama (Ungu Transparan / Glassmorphism Concept)
    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Size = UDim2.new(0, 520, 0, 340)
    MainFrame.Position = UDim2.new(0.5, -260, 0.5, -170)
    MainFrame.BackgroundColor3 = Color3.fromRGB(18, 12, 28)
    MainFrame.BackgroundTransparency = 0.25 -- Transparan Elegan
    MainFrame.BorderSizePixel = 0
    MainFrame.Active = true
    MainFrame.Draggable = true -- Bisa digeser di layar
    MainFrame.Parent = ScreenGui

    -- Sudut Membulat Halus
    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = UDim.new(0, 16)
    MainCorner.Parent = MainFrame

    -- Efek Outline Neon Ungu Lembut
    local MainGlow = Instance.new("UIStroke")
    MainGlow.Color = Color3.fromRGB(130, 50, 250)
    MainGlow.Thickness = 1.5
    MainGlow.Transparency = 0.2
    MainGlow.Parent = MainFrame

    -- Sidebar Kiri
    local Sidebar = Instance.new("Frame")
    Sidebar.Size = UDim2.new(0, 150, 1, 0)
    Sidebar.BackgroundColor3 = Color3.fromRGB(12, 8, 20)
    Sidebar.BackgroundTransparency = 0.4
    Sidebar.BorderSizePixel = 0
    Sidebar.Parent = MainFrame
    
    local SidebarCorner = Instance.new("UICorner")
    SidebarCorner.CornerRadius = UDim.new(0, 16)
    SidebarCorner.Parent = Sidebar

    -- LOGO BULAT VzX (Desain Kreatif & Glow Neon)
    local LogoContainer = Instance.new("Frame")
    LogoContainer.Size = UDim2.new(0, 70, 0, 70)
    LogoContainer.Position = UDim2.new(0.5, -35, 0, 15)
    LogoContainer.BackgroundColor3 = Color3.fromRGB(30, 15, 55)
    LogoContainer.BackgroundTransparency = 0.1
    LogoContainer.Parent = Sidebar
    
    local LogoCorner = Instance.new("UICorner")
    LogoCorner.CornerRadius = UDim.new(1, 0) -- Bulat Sempurna
    LogoCorner.Parent = LogoContainer

    local LogoStroke = Instance.new("UIStroke")
    LogoStroke.Color = Color3.fromRGB(180, 70, 255)
    LogoStroke.Thickness = 2
    LogoStroke.Parent = LogoContainer

    local LogoText = Instance.new("TextLabel")
    LogoText.Size = UDim2.new(1, 0, 1, 0)
    LogoText.Text = "VzX"
    LogoText.TextColor3 = Color3.fromRGB(210, 150, 255)
    LogoText.TextSize = 22
    LogoText.Font = Enum.Font.FredokaOne
    LogoText.BackgroundTransparency = 1
    LogoText.Parent = LogoContainer
    
    -- Animasi Pulse berkedip lembut pada Logo (Elegan)
    task.spawn(function()
        while true do
            local t = TweenService:Create(LogoStroke, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, true), {Transparency = 0.6})
            t:Play()
            t.Completed:Wait()
        end
    end)

    -- Nama Menu Utama "Venzx Hub"
    local HubTitle = Instance.new("TextLabel")
    HubTitle.Size = UDim2.new(1, 0, 0, 25)
    HubTitle.Position = UDim2.new(0, 0, 0, 95)
    HubTitle.Text = "Venzx Hub"
    HubTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    HubTitle.TextSize = 14
    HubTitle.Font = Enum.Font.FredokaOne
    HubTitle.BackgroundTransparency = 1
    HubTitle.Parent = Sidebar

    -- Deskripsi Peta / Subtitle
    local SubTitle = Instance.new("TextLabel")
    SubTitle.Size = UDim2.new(1, 0, 0, 15)
    SubTitle.Position = UDim2.new(0, 0, 0, 115)
    SubTitle.Text = "South Bronx Edition"
    SubTitle.TextColor3 = Color3.fromRGB(150, 140, 160)
    SubTitle.TextSize = 10
    SubTitle.Font = Enum.Font.SourceSansItalic
    SubTitle.BackgroundTransparency = 1
    SubTitle.Parent = Sidebar

    -- Container Halaman / Fitur Konten (Kanan)
    local ContentPage = Instance.new("ScrollingFrame")
    ContentPage.Size = UDim2.new(1, -170, 1, -30)
    ContentPage.Position = UDim2.new(0, 160, 0, 15)
    ContentPage.BackgroundTransparency = 1
    ContentPage.BorderSizePixel = 0
    ContentPage.ScrollBarThickness = 2
    ContentPage.ScrollBarImageColor3 = Color3.fromRGB(150, 0, 255)
    ContentPage.Parent = MainFrame

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Padding = UDim.new(0, 12)
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Parent = ContentPage

    -- Fungsi Pembantu Membuat Pembatas Sederhana (Elegant Card)
    local function CreateCard(name)
        local Card = Instance.new("Frame")
        Card.Size = UDim2.new(1, -10, 0, 75)
        Card.BackgroundColor3 = Color3.fromRGB(30, 22, 45)
        Card.BackgroundTransparency = 0.4
        Card.BorderSizePixel = 0
        Card.Parent = ContentPage
        Instance.new("UICorner", Card).CornerRadius = UDim.new(0, 8)
        Instance.new("UIStroke", Card).Color = Color3.fromRGB(70, 50, 100)
        
        local Label = Instance.new("TextLabel")
        Label.Size = UDim2.new(1, -15, 0, 30)
        Label.Position = UDim2.new(0, 12, 0, 5)
        Label.Text = name
        Label.TextColor3 = Color3.fromRGB(230, 210, 255)
        Label.TextSize = 13
        Label.Font = Enum.Font.FredokaOne
        Label.TextXAlignment = Enum.TextXAlignment.Left
        Label.BackgroundTransparency = 1
        Label.Parent = Card
        
        return Card
    end

    -- =================================================================
    -- IMPLEMENTASI FITUR 1: MACRO SPEED (0.01 - 0.05)
    -- =================================================================
    local MacroCard = CreateCard("⚡ MACRO SPEED CONFIG")
    local MacroSpeed = 0.05
    local MacroEnabled = false

    local SpeedBox = Instance.new("TextBox")
    SpeedBox.Size = UDim2.new(0, 80, 0, 25)
    SpeedBox.Position = UDim2.new(0, 12, 0, 40)
    SpeedBox.BackgroundColor3 = Color3.fromRGB(15, 10, 25)
    SpeedBox.Text = "0.05"
    SpeedBox.TextColor3 = Color3.fromRGB(0, 255, 150)
    SpeedBox.Font = Enum.Font.Code
    SpeedBox.TextSize = 12
    SpeedBox.Parent = MacroCard
    Instance.new("UICorner", SpeedBox).CornerRadius = UDim.new(0, 4)

    local MacroToggle = Instance.new("TextButton")
    MacroToggle.Size = UDim2.new(0, 100, 0, 25)
    MacroToggle.Position = UDim2.new(1, -112, 0, 40)
    MacroToggle.BackgroundColor3 = Color3.fromRGB(60, 20, 30)
    MacroToggle.Text = "STATUS: OFF"
    MacroToggle.TextColor3 = Color3.fromRGB(255, 100, 100)
    MacroToggle.Font = Enum.Font.SourceSansBold
    MacroToggle.TextSize = 12
    MacroToggle.Parent = MacroCard
    Instance.new("UICorner", MacroToggle).CornerRadius = UDim.new(0, 4)

    SpeedBox.FocusLost:Connect(function()
        local val = tonumber(SpeedBox.Text)
        if val then
            MacroSpeed = math.clamp(val, 0.01, 0.05)
            SpeedBox.Text = tostring(MacroSpeed)
      else
        
