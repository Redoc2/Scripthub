function EnergyAssaultSilentAim()



game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Silent Aim", Text = "Silent Aim was succesfully enabled!"})
getgenv().fov = math.huge
getgenv().hitpart = "Head"
-- variables
local players = game:GetService("Players");
local localPlayer = players.LocalPlayer;
local rotation = CFrame.Angles(0, math.pi*0.5, 0);

-- temporaries
local closest;
local origin;
local vector;
local team;
local character;
local cframe;
local angle;

-- hooks
local old;
old = hookmetamethod(game, "__newindex", function(self, index, value)
    if index == "CFrame" and debug.info(3, "n") == "firebullet" then
        closest = fov or 180;
        origin, vector = value.Position, value.LookVector;
        for _, player in next, players:GetPlayers() do
            team, character = player.Team, player.Character;
            if character and (not team or team ~= localPlayer.Team) then
                cframe = CFrame.new(origin, character[hitpart or "Head"].Position) * rotation;
                angle = math.deg(math.acos(vector:Dot(cframe.LookVector)));
                if angle < closest then
                    value = cframe;
                    closest = angle;
                end
            end
        end
    end
    return old(self, index, value);
end);



end
function EnergyAssaultESP()
    local custom_theme = {} --soon

    local function CreateInstance(cls,props)
    local inst = Instance.new(cls)
    for i,v in pairs(props) do
        inst[i] = v
    end
    return inst
    end
        
    local age1 = CreateInstance('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name='age1', Parent=game.CoreGui})
    local p_visuals = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 50, 0, 60),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 254),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'p_visuals',Parent = age1})
    local UIListLayout = CreateInstance('UIListLayout', {Padding = UDim.new(0, 1), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Left, SortOrder = Enum.SortOrder.LayoutOrder, VerticalAlignment = Enum.VerticalAlignment.Top, Name = 'UIListLayout', Parent = p_visuals })
    local title1 = CreateInstance('TextLabel',{Font=Enum.Font.GothamBlack,FontSize=Enum.FontSize.Size18,Text='Player visuals',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, 0, 0, 24),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='title1',Parent = p_visuals})
    local b_b = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Bounding box',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_b',Parent = p_visuals})
    local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_b})
    local b_f = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Fill alpha',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_f',Parent = p_visuals})
    local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_f})
    local b_rt = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Render team',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_rt',Parent = p_visuals})
    local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_rt})
    local b_tc = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Use TeamColor',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_tc',Parent = p_visuals})
    local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_tc})
    local b_sn = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Show name',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_sn',Parent = p_visuals})
    local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_sn})
    local b_sd = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Show distance',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_sd',Parent = p_visuals})
    local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_sd})
    local b_sh = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Show health',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_sh',Parent = p_visuals})
    local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_sh})
    local b_ht = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Health type',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_ht',Parent = p_visuals})
    local v = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Text',TextColor3=Color3.new(0, 1, 1),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_ht})
    local b_f_t = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Fill transparency',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_f_t',Parent = p_visuals})
    local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='1',TextColor3=Color3.new(0, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_f_t})
    local title1_2 = CreateInstance('TextLabel',{Font=Enum.Font.SourceSansBold,FontSize=Enum.FontSize.Size18,Text='ESP',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, 0, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='title1_2',Parent = p_visuals})
    local b_ct = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Team color',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_ct',Parent = p_visuals})
    local ct_b = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(0, 0, 1), PlaceholderText='', PlaceholderColor3=Color3.new(0, 0, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -2, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ct_b',Parent = b_ct})
    local ct_g = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(0, 1, 0), PlaceholderText='', PlaceholderColor3=Color3.new(0, 1, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -29, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ct_g',Parent = b_ct})
    local ct_r = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(1, 0, 0), PlaceholderText='', PlaceholderColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -56, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ct_r',Parent = b_ct})
    local b_ce = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Enemy color',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_ce',Parent = p_visuals})
    local ce_b = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(0, 0, 1), PlaceholderText='', PlaceholderColor3=Color3.new(0, 0, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -2, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ce_b',Parent = b_ce})
    local ce_g = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(0, 1, 0), PlaceholderText='', PlaceholderColor3=Color3.new(0, 1, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -29, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ce_g',Parent = b_ce})
    local ce_r = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(1, 0, 0), PlaceholderText='', PlaceholderColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -56, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ce_r',Parent = b_ce})
    local watermark = CreateInstance('TextLabel',{Font=Enum.Font.Code,FontSize=Enum.FontSize.Size14,Text='lamehaxx v0.01',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, -34),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=20,Name='watermark',Parent = age1})
    local watermark1 = CreateInstance('TextLabel',{Font=Enum.Font.Code,FontSize=Enum.FontSize.Size14,Text='lamehaxx v0.01',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=0,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, -2, 0, -2),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=20,Name='watermark1',Parent = watermark})
    p_visuals.Draggable = true
    
    title1.LayoutOrder = 0 title1_2.LayoutOrder = 1
    b_b.LayoutOrder = 1 b_f.LayoutOrder = 2 b_f_t.LayoutOrder = 3 b_sd.LayoutOrder = 4 b_sn.LayoutOrder = 5 b_sh.LayoutOrder = 6 b_ht.LayoutOrder = 7 b_rt.LayoutOrder = 8 b_tc.LayoutOrder = 9 b_ct.LayoutOrder = 10 b_ce.LayoutOrder = 11
    
    local localplayer = game:GetService"Players".LocalPlayer
    local uis = game:GetService"UserInputService"
    
    local cheats = {
        b_b = false;
        b_f = false;
        b_f_t = 1;
        b_sd = false;
        b_sn = false;
        b_sh = false;
        b_ht = "Text";
        b_rt = false;
        b_tc = false;
    }
    
    local cheatsf = Instance.new("Folder", game.CoreGui) cheatsf.Name = "cheats"
    local espf = Instance.new("Folder", cheatsf) espf.Name = "esp"
    
    function addEsp(player)
        local bbg = Instance.new("BillboardGui", espf)
        bbg.Name = player.Name
        bbg.AlwaysOnTop = true
        bbg.Size = UDim2.new(4,0,5.4,0)
        bbg.ClipsDescendants = false
        
        local outlines = Instance.new("Frame", bbg)
        outlines.Size = UDim2.new(1,0,1,0)
        outlines.BorderSizePixel = 0
        outlines.BackgroundTransparency = 1
        local left = Instance.new("Frame", outlines)
        left.BorderSizePixel = 0
        left.Size = UDim2.new(0,1,1,0)
        local right = left:Clone()
        right.Parent = outlines
        right.Size = UDim2.new(0,-1,1,0)
        right.Position = UDim2.new(1,0,0,0)
        local up = left:Clone()
        up.Parent = outlines
        up.Size = UDim2.new(1,0,0,1)
        local down = left:Clone()
        down.Parent = outlines
        down.Size = UDim2.new(1,0,0,-1)
        down.Position = UDim2.new(0,0,1,0)
        
        local info = Instance.new("BillboardGui", bbg)
        info.Name = "info"
        info.Size = UDim2.new(3,0,0,54)
        info.StudsOffset = Vector3.new(3.6,-3,0)
        info.AlwaysOnTop = true
        info.ClipsDescendants = false
        local namelabel = Instance.new("TextLabel", info)
        namelabel.Name = "namelabel"
        namelabel.BackgroundTransparency = 1
        namelabel.TextStrokeTransparency = 0
        namelabel.TextXAlignment = Enum.TextXAlignment.Left
        namelabel.Size = UDim2.new(0,100,0,18)
        namelabel.Position = UDim2.new(0,0,0,0)
        namelabel.Text = player.Name
        local distancel = Instance.new("TextLabel", info)
        distancel.Name = "distancelabel"
        distancel.BackgroundTransparency = 1
        distancel.TextStrokeTransparency = 0
        distancel.TextXAlignment = Enum.TextXAlignment.Left
        distancel.Size = UDim2.new(0,100,0,18)
        distancel.Position = UDim2.new(0,0,0,18)
        local healthl = Instance.new("TextLabel", info)
        healthl.Name = "healthlabel"
        healthl.BackgroundTransparency = 1
        healthl.TextStrokeTransparency = 0
        healthl.TextXAlignment = Enum.TextXAlignment.Left
        healthl.Size = UDim2.new(0,100,0,18)
        healthl.Position = UDim2.new(0,0,0,36)
        
        local uill = Instance.new("UIListLayout", info)
        
        local forhealth = Instance.new("BillboardGui", bbg)
        forhealth.Name = "forhealth"
        forhealth.Size = UDim2.new(5,0,6,0)
        forhealth.AlwaysOnTop = true
        forhealth.ClipsDescendants = false
        
        local healthbar = Instance.new("Frame", forhealth)
        healthbar.Name = "healthbar"
        healthbar.BackgroundColor3 = Color3.fromRGB(40,40,40)
        healthbar.BorderColor3 = Color3.fromRGB(0,0,0)
        healthbar.Size = UDim2.new(0.04,0,0.9,0)
        healthbar.Position = UDim2.new(0,0,0.05,0)
        local bar = Instance.new("Frame", healthbar)
        bar.Name = "bar"
        bar.BorderSizePixel = 0
        bar.BackgroundColor3 = Color3.fromRGB(94,255,69)
        bar.AnchorPoint = Vector2.new(0,1)
        bar.Position = UDim2.new(0,0,1,0)
        bar.Size = UDim2.new(1,0,1,0)
        
        local co = coroutine.create(function()
            while wait(0.1) do
                if (player.Character and player.Character:FindFirstChild"HumanoidRootPart") then
                    bbg.Adornee = player.Character.HumanoidRootPart
                    info.Adornee = player.Character.HumanoidRootPart
                    forhealth.Adornee = player.Character.HumanoidRootPart
                    
                    if (player.Team ~= localplayer.Team) then
                        bbg.Enabled = true
                        info.Enabled = true
                        forhealth.Enabled = true
                    end
                    if player.Character:FindFirstChild("ForceField") then
                        outlines.BackgroundTransparency = 0.4
                        left.BackgroundTransparency = 0.4
                        right.BackgroundTransparency = 0.4
                        up.BackgroundTransparency = 0.4
                        down.BackgroundTransparency = 0.4
                        healthl.TextTransparency = 0.4
                        healthl.TextStrokeTransparency = 0.8
                        distancel.TextTransparency = 0.4
                        distancel.TextStrokeTransparency = 0.8
                        namelabel.TextTransparency = 0.4
                        namelabel.TextStrokeTransparency = 0.8
                        bar.BackgroundTransparency = 0.4
                        healthbar.BackgroundTransparency = 0.8
                    else
                        outlines.BackgroundTransparency = 0
                        left.BackgroundTransparency = 0
                        right.BackgroundTransparency = 0
                        up.BackgroundTransparency = 0
                        down.BackgroundTransparency = 0
                        healthl.TextTransparency = 0
                        healthl.TextStrokeTransparency = 0
                        distancel.TextTransparency = 0
                        distancel.TextStrokeTransparency = 0
                        namelabel.TextTransparency = 0
                        namelabel.TextStrokeTransparency = 0
                        bar.BackgroundTransparency = 0
                        healthbar.BackgroundTransparency = 0
                    end
                    if cheats.b_b == true then
                        outlines.Visible = true
                    else
                        outlines.Visible = false
                    end
                    if cheats.b_f == true then
                        if player.Character:FindFirstChild("ForceField") then
                            outlines.BackgroundTransparency = 0.9
                        else
                            outlines.BackgroundTransparency = cheats.b_f_t
                        end
                    else
                        outlines.BackgroundTransparency = 1
                    end
                    if cheats.b_sh == true then
                        if (player.Character:FindFirstChild"Humanoid") then
                            healthl.Text = "Health: "..math.floor(player.Character:FindFirstChild"Humanoid".Health)
                            healthbar.bar.Size = UDim2.new(1,0,player.Character:FindFirstChild"Humanoid".Health/player.Character:FindFirstChild"Humanoid".MaxHealth,0)
                        end
                        if cheats.b_ht == "Text" then
                            healthbar.Visible = false
                            healthl.Visible = true
                        end
                        if cheats.b_ht == "Bar" then
                            healthl.Visible = false
                            healthbar.Visible = true
                        end
                        if cheats.b_ht == "Both" then
                            healthl.Visible = true
                            healthbar.Visible = true
                        end
                    else
                        healthl.Visible = false
                        healthbar.Visible = false
                    end
                    if cheats.b_sn then
                        namelabel.Visible = true
                    else
                        namelabel.Visible = false
                    end
                    if cheats.b_sd == true then
                        distancel.Visible = true
                        if (localplayer.Character and localplayer.Character:FindFirstChild"HumanoidRootPart") then
                            distancel.Text = "Distance: "..math.floor(0.5+(localplayer.Character:FindFirstChild"HumanoidRootPart".Position - player.Character:FindFirstChild"HumanoidRootPart".Position).magnitude)
                        end
                    else
                        distancel.Visible = false
                    end
                    if cheats.b_rt == true then
                        if (player.Team == localplayer.Team) then
                            bbg.Enabled = true
                            info.Enabled = true
                            forhealth.Enabled = true
                        end
                    else
                        if (player.Team == localplayer.Team) then
                            bbg.Enabled = false
                            info.Enabled = false
                            forhealth.Enabled = false
                        end
                    end
                    if cheats.b_tc == true then
                        outlines.BackgroundColor3 = player.TeamColor.Color
                        left.BackgroundColor3 = player.TeamColor.Color
                        right.BackgroundColor3 = player.TeamColor.Color
                        up.BackgroundColor3 = player.TeamColor.Color
                        down.BackgroundColor3 = player.TeamColor.Color
                        healthl.TextColor3 = player.TeamColor.Color
                        distancel.TextColor3 = player.TeamColor.Color
                        namelabel.TextColor3 = player.TeamColor.Color
                    else
                        if (player.Team == localplayer.Team) then
                            outlines.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
                            left.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
                            right.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
                            up.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
                            down.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
                            healthl.TextColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
                            distancel.TextColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
                            namelabel.TextColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
                        else
                            outlines.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
                            left.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
                            right.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
                            up.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
                            down.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
                            healthl.TextColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
                            distancel.TextColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
                            namelabel.TextColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
                        end
                    end
                end
                if not (game:GetService"Players":FindFirstChild(player.Name)) then
                    print(player.Name.." has left. Clearing esp.")
                    espf:FindFirstChild(player.Name):Destroy()
                    coroutine.yield()
                end
            end
        end)
        coroutine.resume(co)
    end
    
    --main
    do
        wait(2)
        --menu buttons
        for _,button in pairs(age1:GetDescendants()) do
            if button:IsA"TextButton" then
                button.MouseButton1Click:connect(function()
                    if button.Name == "b_f_t" then
                        if cheats.b_f_t >= 0 then
                            cheats.b_f_t = cheats.b_f_t+0.1
                            if cheats.b_f_t > 1 then
                                cheats.b_f_t = 0
                            end
                        end
                        button.v.Text = cheats.b_f_t
                    elseif button.Name == "b_ht" then
                        if cheats.b_ht == "Text" then
                            cheats.b_ht = "Bar"
                        elseif cheats.b_ht == "Bar" then
                            cheats.b_ht = "Both"
                        else
                            cheats.b_ht = "Text"
                        end
                        button.v.Text = cheats.b_ht
                    else
                        if cheats[button.Name] == true then
                            cheats[button.Name] = false
                            button.v.Text = "OFF"
                            button.v.TextColor3 = Color3.fromRGB(255,0,0)
                        else
                            cheats[button.Name] = true
                            button.v.Text = "ON"
                            button.v.TextColor3 = Color3.fromRGB(0,255,0)
                        end
                    end	
                end)
            end
        end
        
        --initial player addition
        for _,v in pairs(game:GetService("Players"):GetChildren()) do
            if not (v.Name == localplayer.Name) then
                if not (espf:FindFirstChild(v.Name)) then
                    addEsp(v)
                end
            end
        end
        
        --open/close gui
        game:GetService("UserInputService").InputBegan:connect(function(input, gameProcessed)
            if input.KeyCode == Enum.KeyCode.KeypadOne then
                if not gameProcessed then
                    age1.Enabled = not age1.Enabled
                end
            end
        end)
        
        --auto-update
        while wait(10) do
            for _,v in pairs(game:GetService("Players"):GetChildren()) do
                if not (v.Name == localplayer.Name) then
                    if not (espf:FindFirstChild(v.Name)) then
                        addEsp(v)
                    end
                end
            end
        end
    end
end
function NinjaHitboxes()
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Loaded", Text = "w = Enabled : p = disabled."})
    local player = game.Players.LocalPlayer
    local mouse = player:GetMouse()
    
    -- Settings
    
    bind = ""
    bind2 = "w"
    bind3 = "p"
    
    -- Script
    
    mouse.KeyDown:connect(function(key)
    if key == bind then
    player.Character.HumanoidRootPart.CFrame = CFrame.new(1254.09656, 137.906067, -172.128204)
    end
    end)
    
    mouse.KeyDown:connect(function(key2)
    if key2 == bind2 then
    _G.HeadSize = 17
    _G.Disabled = true
    
    
    if _G.Disabled then
    for i,v in next, game:GetService('Players'):GetPlayers() do
    if v.Name ~= game:GetService('Players').LocalPlayer.Name then
    if v.Name ~= "Yanicnoobtopro" then
    if v.name ~= "Redoc_2" then
    pcall(function()
    v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
    v.Character.HumanoidRootPart.Transparency = 0.7
    v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Bright red")
    v.Character.HumanoidRootPart.Material = "Neon"
    v.Character.HumanoidRootPart.CanCollide = false
    end)
    end
    end
    end
    end
    end
    end
    end)
    
    mouse.KeyDown:connect(function(key3)
    if key3 == bind3 then
    _G.HeadSize = 17
    _G.Disabled = true
    
    
    for i,v in next, game:GetService('Players'):GetPlayers() do
    if v.Name ~= game:GetService('Players').LocalPlayer.Name then
    pcall(function()
    v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
    v.Character.HumanoidRootPart.Transparency = 1
    v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
    v.Character.HumanoidRootPart.Material = "Plastic"
    v.Character.HumanoidRootPart.CanCollide = false
    end)
    end
    end
    end
    end)
end
function KATScript()
if game.PlaceId == 621129760 then
loadstring(game:HttpGet("https://pastebin.com/raw/1baRYpFK", true))()

-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.300
Frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
Frame.BorderSizePixel = 5
Frame.Position = UDim2.new(0, 0, 0.5, -62)
Frame.Size = UDim2.new(0, 702, 0, 124)
Frame.Active = true


TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 3.000
TextLabel.Size = UDim2.new(0, 702, 0, 124)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Important Announcement, There Is another kat script going around trying to take over this script. Remake Has Been Done! Feel Free To Use it if you would like to. The Main Script is the lime x one"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 3.000
TextButton.Position = UDim2.new(0.928774953, 0, 0.669354856, 0)
TextButton.Size = UDim2.new(0, 42, 0, 41)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Close"
TextButton.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 50.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:connect(function()
	Frame.Visible = false
end)




end


end
function SwagMode()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SwagModeV002'))()
end
function PizzaPlace()
loadstring(game:HttpGet("https://gist.githubusercontent.com/TurkOyuncu99/bb2f1182a224999682a2d1a87aa8517a/raw/66c7791224be0434b23938ca26244238649d0143/ameicaa", true))()
end
function Doors()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
end
function MM2()
    --murder mystery 2 script by niko#1809
--have fun :>

local pez = {};

pez.initiated = false;

local tabs = 0;

function pez:init()
    local nikopez = Instance.new("ScreenGui")
    local exframe = Instance.new("Frame")

    nikopez.Name = "nikopez"
    nikopez.Parent = game.CoreGui
    nikopez.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    pez.initiated = true;
end

function pez:addTab(name,text)
    if (pez.initiated) then
        local exframe = Instance.new("Frame")
        local exflabel = Instance.new("TextLabel")

        exframe.Active = true;
        exframe.Draggable = true;
        exframe.Name = name
        exframe.Parent = game.CoreGui.nikopez;
        exframe.BackgroundColor3 = Color3.new(1, 0.0941177, 0.0941177)
        exframe.BackgroundTransparency = 0.5
        exframe.BorderSizePixel = 0
        exframe.Position = UDim2.new(0.0218181908 * (tabs*5), 0, 0.0418994427, 0)
        exframe.Size = UDim2.new(0, 170, 0, 25)

        exflabel.Name = "exflabel"
        exflabel.Parent = exframe
        exflabel.BackgroundColor3 = Color3.new(1, 1, 1)
        exflabel.BackgroundTransparency = 1
        exflabel.Position = UDim2.new(0.0352941193, 0, 0, 0)
        exflabel.Size = UDim2.new(0.964705884, 0, 1, 0)
        exflabel.Font = Enum.Font.ArialBold
        exflabel.Text = text
        exflabel.TextColor3 = Color3.new(1, 1, 1)
        exflabel.TextSize = 15
        exflabel.TextStrokeTransparency = 0.40000000596046
        exflabel.TextXAlignment = Enum.TextXAlignment.Left
        tabs = tabs + 1;
    else
        print("pez not initiated!");
    end
end

function pez:addButton(tab,text,func)
    if (pez.initiated) then
        local count = 0;
        for i,v in pairs(game.CoreGui.nikopez[tab]:GetChildren()) do
            count = count + 1;
        end

        local TextButton = Instance.new("TextButton");

        TextButton.Parent = game.CoreGui.nikopez[tab];
        TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
        TextButton.BackgroundTransparency = 1
        TextButton.Position = UDim2.new(0.0352941193, 0, 1, (25*count)-25)
        TextButton.Size = UDim2.new(0.964705884, 0, 0, 25)
        TextButton.Font = Enum.Font.ArialBold
        TextButton.Text = "> "..text
        TextButton.TextColor3 = Color3.new(255,255,255)
        TextButton.TextSize = 13
        TextButton.TextStrokeTransparency = 0.40000000596046
        TextButton.TextXAlignment = Enum.TextXAlignment.Left

        TextButton.MouseButton1Click:connect(function()
            TextButton.TextColor3 = Color3.new(0,255,0)
            func();
            wait(0.5)
            TextButton.TextColor3 = Color3.new(255,255,255)
        end)
    else
        print("pez not initiated!");
    end
end

function pez:hide()
    if (pez.initiated) then
        for i,v in pairs(game.CoreGui.nikopez:GetChildren()) do
            if (v:IsA("Frame")) then
                if (v.Name ~= "cheats") then
                    if (v.Name ~= "playerlist") then
                        v.Visible = false;
                    end
                end
            end
        end
    else
        print("pez not initiated!");
    end
end

function pez:show()
    if (pez.initiated) then
        for i,v in pairs(game.CoreGui.nikopez:GetChildren()) do
            if (v:IsA("Frame")) then
                if (v.Name ~= "cheats") then
                    v.Visible = true;
                end
            end
        end
    else
        print("pez not initiated!");
    end
end
    
function pez:itemExists(tab,item)
    if (pez.initiated) then
        if (game.CoreGui.nikopez:FindFirstChild(tab)) then
            if (game.CoreGui.nikopez[tab]:FindFirstChild(item)) then
                return true;
            else
                return false;
            end
        end
    else
        print("pez not initiated!");
    end
end

function pez:addLabel(tab,name,text)
    if (pez.initiated) then
        local count = 0;
        for i,v in pairs(game.CoreGui.nikopez[tab]:GetChildren()) do
            count = count + 1;
        end

        local label = Instance.new("TextLabel");

        label.Name = name;
        label.Parent = game.CoreGui.nikopez[tab];
        label.BackgroundColor3 = Color3.new(1, 1, 1)
        label.BackgroundTransparency = 1
        label.Position = UDim2.new(0.0352941193, 0, 1, (25*count)-25)
        label.Size = UDim2.new(0.964705884, 0, 0, 25)
        label.Font = Enum.Font.ArialBold
        label.Text = "> "..text
        label.TextColor3 = Color3.new(255,255,255)
        label.TextSize = 13
        label.TextStrokeTransparency = 0.40000000596046
        label.TextXAlignment = Enum.TextXAlignment.Left
    else
        print("pez not initiated!");
    end
end

function pez:addColoredLabel(tab,name,text,color)
    if (pez.initiated) then
        local count = 0;
        for i,v in pairs(game.CoreGui.nikopez[tab]:GetChildren()) do
            count = count + 1;
        end

        local label = Instance.new("TextLabel");

        label.Name = name;
        label.Parent = game.CoreGui.nikopez[tab];
        label.BackgroundColor3 = Color3.new(1, 1, 1)
        label.BackgroundTransparency = 1
        label.Position = UDim2.new(0.0352941193, 0, 1, (25*count)-25)
        label.Size = UDim2.new(0.964705884, 0, 0, 25)
        label.Font = Enum.Font.ArialBold
        label.Text = "> "..text
        label.TextColor3 = color
        label.TextSize = 13
        label.TextStrokeTransparency = 0.40000000596046
        label.TextXAlignment = Enum.TextXAlignment.Left
    else
        print("pez not initiated!");
    end
end

function pez:removeLabel(tab,name)
    if (pez.initiated) then
        if (game.CoreGui.nikopez:FindFirstChild(tab)) then
            if (game.CoreGui.nikopez[tab]:FindFirstChild(name)) then
                game.CoreGui.nikopez[tab]:FindFirstChild(name):Destroy();
                local count = 1;
                for i,v in pairs(game.CoreGui.nikopez[tab]:GetChildren()) do
                    if (v.Name ~= "exflabel") then
                      v.Position = UDim2.new(0.0352941193, 0, 1, (25*count)-25);
                      count = count + 1;
                    end
                end
            end
        else
            print(tab.." not found")
        end
    else
        print("pez not initiated!");
    end
end

function pez:showTab(tab)
    if (pez.initiated) then
        if (game.CoreGui.nikopez:FindFirstChild(tab)) then
            game.CoreGui.nikopez[tab].Visible = true;
        end
    else
        print("pez not initiated!");
    end
end

function pez:hideTab(tab)
    if (pez.initiated) then
        if (game.CoreGui.nikopez:FindFirstChild(tab)) then
            game.CoreGui.nikopez[tab].Visible = false;
        end
    else
        print("pez not initiated!");
    end
end

function pez:clearTab(tab)
    if (pez.initiated) then
        if (game.CoreGui.nikopez:FindFirstChild(tab)) then
            game.CoreGui.nikopez[tab]:ClearAllChildren()
        end
    else
        print("pez not initiated!");
    end
end

function pez:removeTab(tab)
    if (pez.initiated) then
        if (game.CoreGui.nikopez:FindFirstChild(tab)) then
            game.CoreGui.nikopez[tab]:Destroy();
        end
    else
        print("pez not initiated!");
    end
end



function makebox(part,color)
    local yoniko = Instance.new("BillboardGui")
    local Frame = Instance.new("Frame")
    
    yoniko.Name = "yoniko"
    yoniko.Parent = part
    yoniko.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    yoniko.AlwaysOnTop = true
    yoniko.LightInfluence = 1
    yoniko.Size = UDim2.new(4, 0, 6, 0)
    
    Frame.Parent = yoniko
    Frame.BackgroundColor3 = color
    Frame.BackgroundTransparency = 0.5
    Frame.BorderSizePixel = 0
    Frame.Size = UDim2.new(1, 0, 1, 0)
end

function makedot(part)
    local nikohead = Instance.new("BillboardGui")
    local Frame = Instance.new("Frame")
    
    nikohead.Name = "nikohead"
    nikohead.Parent = part
    nikohead.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    nikohead.AlwaysOnTop = true
    nikohead.LightInfluence = 1
    nikohead.Size = UDim2.new(1, 0, 1, 0)
    
    Frame.Parent = nikohead
    Frame.BackgroundColor3 = Color3.new(0,0,255);
    Frame.BackgroundTransparency = 0.20000000298023
    Frame.BorderColor3 = Color3.new(0, 0, 0)
    Frame.Rotation = 120
    Frame.Size = UDim2.new(1, 0, 1, 0)
end

function checkTeam(plr)
    local bp = plr.Backpack
    local char = plr.Character

    local x = false;
    for i,v in pairs(char:GetChildren()) do
        if v:FindFirstChild("IsGun") then
            if (v.IsGun.Value == true) then
                x = true;
            end
        end
    end

    for i,v in pairs(bp:GetChildren()) do
        if v:FindFirstChild("IsGun") then
            if (v.IsGun.Value == true) then
                x = true;
            end
        end
    end

    if (bp:FindFirstChild("Knife") or char:FindFirstChild("Knife")) then
        return 1;
    elseif (x) then
        return 2;
    else
        return 3;
    end
end

pez:init();

enableds = {};

espon = false;
fovon = false;

espgun = false;
espmurderer = true;
espsheriff = true;
espinnocent = false;

tpgun = false;
tpcoins = false;

noclip = false;
fly = false;
fast = false;
highjump = false;

hidden = false;

showvisuals = true;
showespsettings = true;
showmovement = true;
showitems = true;
showenableds = true;
showplayerlist = true;

pez:addTab("cheats","Enabled cheats");

function toggleesp()
    espon = not espon;
    if (espon) then
        pez:addLabel("cheats","esp","ESP");
    else
        pez:removeLabel("cheats","esp");
    end
end

function togglefov()
    fovon = not fovon;
    if (fovon) then
        pez:addLabel("cheats","fov","FOV");
    else
        pez:removeLabel("cheats","fov");
    end
end

function toggleespgun()
    espgun = not espgun;
end

function toggleespmurderer()
    espmurderer = not espmurderer;
end

function toggleespsheriff()
    espsheriff = not espsheriff;
end

function toggleespinnocent()
    espinnocent = not espinnocent;
end

function toggletpgun()
    tpgun = not tpgun;
    if (tpgun) then
        pez:addLabel("cheats","tpgun","Tp gun");
    else
        pez:removeLabel("cheats","tpgun");
    end
end

function toggletpcoins()
    tpcoins = not tpcoins;
    if (tpcoins) then
        pez:addLabel("cheats","tpcoins","Tp coins");
    else
        pez:removeLabel("cheats","tpcoins");
    end
end

function togglenoclip()
    noclip = not noclip;
    if (noclip) then
        pez:addLabel("cheats","noclip","Noclip");
    else
        pez:removeLabel("cheats","noclip");
    end
end

function tplobby()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-107,149,23))
end

--FLY SCRIPT BY RGEENEUS

local speed = 50

local c
local h
local bv
local bav
local cam
local flying
local p = game.Players.LocalPlayer
local buttons = {W = false, S = false, A = false, D = false, Moving = false}

local startFly = function () -- Call this function to begin flying 
    if not p.Character or not p.Character.Head or flying then return end
    c = p.Character
    h = c.Humanoid
    h.PlatformStand = true
    cam = workspace:WaitForChild('Camera')
    bv = Instance.new("BodyVelocity")
    bav = Instance.new("BodyAngularVelocity")
    bv.Velocity, bv.MaxForce, bv.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
    bav.AngularVelocity, bav.MaxTorque, bav.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
    bv.Parent = c.Head
    bav.Parent = c.Head
    flying = true
    h.Died:connect(function() flying = false end)
end

local endFly = function () -- Call this function to stop flying
    if not p.Character or not flying then return end
    h.PlatformStand = false
    bv:Destroy()
    bav:Destroy()
    flying = false
end

game:GetService("UserInputService").InputBegan:connect(function (input, GPE) 
    if GPE then return end
    for i, e in pairs(buttons) do
        if i ~= "Moving" and input.KeyCode == Enum.KeyCode[i] then
            buttons[i] = true
            buttons.Moving = true
        end
    end
end)

game:GetService("UserInputService").InputEnded:connect(function (input, GPE) 
    if GPE then return end
    local a = false
    for i, e in pairs(buttons) do
        if i ~= "Moving" then
            if input.KeyCode == Enum.KeyCode[i] then
                buttons[i] = false
            end
            if buttons[i] then a = true end
        end
    end
    buttons.Moving = a
end)

local setVec = function (vec)
    return vec * (speed / vec.Magnitude)
end

game:GetService("RunService").Heartbeat:connect(function (step) -- The actual fly function, called every frame
    if flying and c and c.PrimaryPart then
        local p = c.PrimaryPart.Position
        local cf = cam.CFrame
        local ax, ay, az = cf:toEulerAnglesXYZ()
        c:SetPrimaryPartCFrame(CFrame.new(p.x, p.y, p.z) * CFrame.Angles(ax, ay, az))
        if buttons.Moving then
            local t = Vector3.new()
            if buttons.W then t = t + (setVec(cf.lookVector)) end
            if buttons.S then t = t - (setVec(cf.lookVector)) end
            if buttons.A then t = t - (setVec(cf.rightVector)) end
            if buttons.D then t = t + (setVec(cf.rightVector)) end
            c:TranslateBy(t * step)
        end
    end
end)


function togglefly()
    if (fly) then
        fly = false;
        endFly()
        pez:removeLabel("cheats","fly");
    else
        fly = true;
        startFly()
        pez:addLabel("cheats","fly","Fly");
    end
end

function togglefast()
    fast = not fast;
    if (fast) then
        pez:addLabel("cheats","fast","Fast");
    else
        pez:removeLabel("cheats","fast");
    end
end

function togglejump()
    highjump = not highjump;
    if (highjump) then
        pez:addLabel("cheats","highjump","Highjump");
    else
        pez:removeLabel("cheats","highjump");
    end
end

function setday()
    local lighting = game.Lighting
    lighting.TimeOfDay = 12;
end

function setnight()
    local lighting = game.Lighting
    lighting.TimeOfDay = 22;
end

game:service'RunService'.Stepped:connect(function()
    if (noclip) then game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(11) end
    if (fast) then game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 24; else game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16; end
    if (highjump) then game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = 120; else game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50; end
end)

function onKeyPress(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.Home then
        if (hidden) then
            print(hidden)
            hidden = false;
            pez:show();
        else
            print(hidden)
            hidden = true;
            pez:hide();
        end
	end
end

function togglevisuals()
    if (showvisuals) then
        showvisuals = false;
        pez:hideTab("visuals");
    else
        showvisuals =true;
        pez:showTab("visuals");
    end
end

function toggleespsettings()
    if (showespsettings) then
        showespsettings = false;
        pez:hideTab("espsettings");
    else
        showespsettings =true;
        pez:showTab("espsettings");
    end
end

function toggleitems()
    if (showitems) then
        showitems = false;
        pez:hideTab("items");
    else
        showitems =true;
        pez:showTab("items");
    end
end

function togglemovement()
    if (showmovement) then
        showmovement = false;
        pez:hideTab("movement");
    else
        showmovement =true;
        pez:showTab("movement");
    end
end

function toggleenableds()
    if (showenableds) then
        showenableds = false;
        pez:hideTab("cheats");
    else
        showenableds =true;
        pez:showTab("cheats");
    end
end

function toggleplayerlist()
    if (showplayerlist) then
        showplayerlist = false;
        pez:hideTab("playerlist");
    else
        showplayerlist =true;
        pez:showTab("playerlist");
    end
end
 
game:GetService("UserInputService").InputBegan:connect(onKeyPress)

pez:addTab("gui","Gui");
pez:addLabel("gui","info","Toggle gui: Home")
pez:addButton("gui","Visuals",togglevisuals)
pez:addButton("gui","Esp settings",toggleespsettings)
pez:addButton("gui","Items",toggleitems)
pez:addButton("gui","Movement",togglemovement)
pez:addButton("gui","Enabled cheats",toggleenableds)
pez:addButton("gui","Playerlist",toggleplayerlist)

pez:addTab("visuals","Visuals");
pez:addButton("visuals","ESP",toggleesp)
pez:addButton("visuals","FOV",togglefov)
pez:addButton("visuals","Set night",setnight)
pez:addButton("visuals","Set day",setday)

pez:addTab("espsettings","Esp settings");
pez:addButton("espsettings","Show murderer",toggleespmurderer)
pez:addButton("espsettings","Show sheriff",toggleespsheriff)
pez:addButton("espsettings","Show innocents",toggleespinnocent)
pez:addButton("espsettings","Show dropped gun",toggleespgun);

pez:addTab("items","Items");
pez:addButton("items","Tp coins",toggletpcoins)
pez:addButton("items","Tp gun",toggletpgun)

pez:addTab("movement","Movement");
pez:addButton("movement","Noclip",togglenoclip)
pez:addButton("movement","Fly",togglefly)
pez:addButton("movement","Fast",togglefast)
pez:addButton("movement","Highjump",togglejump)
pez:addButton("movement","Tp to lobby",tplobby)

pez:addTab("playerlist","Playerlist")

pez:addTab("credits","Credits");
pez:addLabel("credits","nikoo","niko#1809")

print("press Home to toggle the gui");
print("mm2 script by niko#1809 / lekolar2 ;)")

local cor = coroutine.wrap(function()
    while(true) do
        wait(1)
        for i,v in pairs(game.Players:GetPlayers()) do
            if (v.Character) then
                if (pez:itemExists("playerlist",v.Name)) then
                    pez:removeLabel("playerlist",v.Name)
                end

                local team = checkTeam(v);

                if (team == 1) then
                    pez:addColoredLabel("playerlist",v.Name,v.Name,Color3.new(255,0,0))
                elseif (team == 2) then
                    pez:addColoredLabel("playerlist",v.Name,v.Name,Color3.new(0,0,255))
                else
                    pez:addColoredLabel("playerlist",v.Name,v.Name,Color3.new(0,255,0))
                end
            end
        end
    end
end)

cor();

x = 0;

while(true)do
    if (x == 200) then pez:removeTab("credits"); else x = x + 1; end
    wait();
    if (fovon) then
        local cam = workspace.CurrentCamera;
        cam.FieldOfView = 100;
    else
        local cam = workspace.CurrentCamera;
        cam.FieldOfView = 70;
    end
    if (tpcoins) then
        for i,v in pairs(workspace:GetChildren()) do
            if (v:FindFirstChild("CoinContainer")) then
                for w,g in pairs(v.CoinContainer:GetChildren()) do
                    g.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
                end
            end
        end
    end
    if (tpgun) then
        if (workspace:FindFirstChild("GunDrop")) then
            workspace.GunDrop.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
    if (espon) then
        if (espgun) then
            if (workspace:FindFirstChild("GunDrop")) then
                if (workspace.GunDrop:FindFirstChild("nikohead")) then
                    workspace.GunDrop.nikohead:Destroy()
                end
                makedot(workspace.GunDrop);
            end
        end
        for i,v in pairs(game.Players:GetPlayers()) do
            if (v.Character) then
                if (v.Character:WaitForChild("HumanoidRootPart")) then
                    if (v~=game.Players.LocalPlayer) then
                        if (v.Character:WaitForChild("HumanoidRootPart"):FindFirstChild("yoniko")) then
                            v.Character:WaitForChild("HumanoidRootPart").yoniko:Destroy()
                        end
                        local team = checkTeam(v)

                        if (team == 1) then
                            if (espmurderer) then makebox(v.Character.HumanoidRootPart,Color3.new(255,0,0)); end
                        elseif (team == 2) then
                            if (espsheriff) then makebox(v.Character.HumanoidRootPart,Color3.new(0,0,255)); end
                        else
                            if (espinnocent) then makebox(v.Character.HumanoidRootPart,Color3.new(0,255,0)); end
                        end
                    end
                end
            end
        end
    end
end
end
function antiafk()
	ait(0.5)
bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
end)
end