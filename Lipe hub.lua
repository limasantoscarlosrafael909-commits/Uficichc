--[[
========================================================
                 LIPE TEST HUB
========================================================

USO:
    Roblox Studio - seu próprio jogo

NPCs/Dummies precisam ter:
    Model + Humanoid + Head

FUNÇÕES:
    • Aimbot somente NPC
    • FOV
    • ESP
    • Line ESP
    • Skeleton ESP
    • Speed
    • Abrir / Fechar HUB
    • Suporte R6 e R15
========================================================
]]

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

--------------------------------------------------------
-- CONFIGURAÇÕES
--------------------------------------------------------

local Settings = {
    FOV = 180,

    Aim = false,
    ESP = false,
    Lines = false,
    Skeleton = false,

    Speed = 16,

    AimSmoothness = 0.15
}

--------------------------------------------------------
-- GUI
--------------------------------------------------------

local gui = Instance.new("ScreenGui")
gui.Name = "LIPE_TestHub"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = player:WaitForChild("PlayerGui")

--------------------------------------------------------
-- HUB PRINCIPAL
--------------------------------------------------------

local main = Instance.new("Frame")
main.Name = "Main"

main.Size = UDim2.fromOffset(320, 430)
main.Position = UDim2.new(0.5, -160, 0.5, -215)

main.BackgroundColor3 =
    Color3.fromRGB(24, 24, 28)

main.BorderSizePixel = 0
main.Parent = gui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 14)
mainCorner.Parent = main

--------------------------------------------------------
-- TÍTULO
--------------------------------------------------------

local title = Instance.new("TextLabel")

title.Size =
    UDim2.new(1, 0, 0, 50)

title.BackgroundTransparency = 1

title.Text = "
