LP = game.Players.LocalPlayer
local function CheckRig()
  if LP.Character and LP.Character:FindFirstChild('Humanoid') then 
    return (LP.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 and 'R15' or 'R6') 
  end
end
if CheckRig() == 'R15' then
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(self,...)
    local Args = {...}
    if getnamecallmethod() == "FindPartOnRayWithIgnoreList" and not checkcaller() and  getgenv().SilentAim  then
        local GivemeHead = ClosestPlayerToCurser()
        if GivemeHead and GivemeHead.Character and GivemeHead.Character.FindFirstChild(GivemeHead.Character, "UpperTorso") then
            Args[1] = Ray.new(workspace.CurrentCamera.CFrame.Position, (GivemeHead.Character.UpperTorso.Position - workspace.CurrentCamera.CFrame.Position).Unit * 1000)
            return OldNameCall(self, unpack(Args))
        end
    end
    return OldNameCall(self, ...)
end)
end

if CheckRig() == 'R6' then
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(self,...)
    local Args = {...}
    if getnamecallmethod() == "FindPartOnRayWithIgnoreList" and not checkcaller() and  getgenv().SilentAim  then
        local GivemeHead = ClosestPlayerToCurser()
        if GivemeHead and GivemeHead.Character and GivemeHead.Character.FindFirstChild(GivemeHead.Character, "Torso") then
            Args[1] = Ray.new(workspace.CurrentCamera.CFrame.Position, (GivemeHead.Character.Torso.Position - workspace.CurrentCamera.CFrame.Position).Unit * 1000)
            return OldNameCall(self, unpack(Args))
        end
    end
    return OldNameCall(self, ...)
end)
end
if game.PlaceId == 734159876 then
    
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(self,...)
    local Args = {...}
    if getnamecallmethod() == "FindPartOnRayWithIgnoreList" and not checkcaller() and  getgenv().SilentAim  then
        local GivemeHead = GetClosestFromCursor()
        if GivemeHead and GivemeHead.Body then
            Args[1] = Ray.new(workspace.CurrentCamera.CFrame.Position, (GivemeHead.Body.Position - workspace.CurrentCamera.CFrame.Position).Unit * 1000)
            return OldNameCall(self, unpack(Args))
        end
    end
    return OldNameCall(self, ...)
end)
end
if game.PlaceId == 3233893879  then
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(self,...)
    local Args = {...}
    if tostring(self) == "Projectiles" and getnamecallmethod() == "FireServer" and getClosestPlayerToCursor()  and getgenv().SilentAim then
    pcall(function()        
        Args[3] = getClosestPlayerToCursor().Hitbox.Chest
        Args[4] = getClosestPlayerToCursor().Hitbox.Chest.Position
        end)
        return self.FireServer(self, unpack(Args))
    end
    return OldNameCall(self, ...)
end)
end
