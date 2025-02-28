local ipairs = ipairs
local player = player
local vgui = vgui

local GetAllPlayers = player.GetAll

--- Credit transfer tab for equipment menu
local GetTranslation = LANG.GetTranslation
function CreateTransferMenu(parent)
    local dform = vgui.Create("DForm", parent)
    dform:SetName(GetTranslation("xfer_menutitle"))
    dform:StretchToParent(0, 0, 0, 0)
    dform:SetAutoSize(false)

    local client = LocalPlayer()
    if client:GetCredits() <= 0 then
        dform:Help(GetTranslation("xfer_no_credits"))
        return dform
    end

    local bw, bh = 100, 20
    local dsubmit = vgui.Create("DButton", dform)
    dsubmit:SetSize(bw, bh)
    dsubmit:SetDisabled(true)
    dsubmit:SetText(GetTranslation("xfer_send"))

    local selected_entry = nil

    local dpick = vgui.Create("DComboBox", dform)
    dpick.OnSelect = function(s, idx, val, data)
        if data then
            selected_entry = data
            dsubmit:SetDisabled(false)
        end
    end

    dpick:SetWide(250)

    -- fill combobox
    local r = client:GetRole()
    for _, p in ipairs(GetAllPlayers()) do
        if (IsValid(p) and p:IsActiveRole(r) and p ~= client) or
                (client:IsActiveTraitorTeam() and (p:IsActiveTraitorTeam() or p:IsActiveGlitch())) or
                (client:IsActiveMonsterTeam() and p:IsActiveMonsterTeam()) then
            dpick:AddChoice(p:Nick(), { ni = p:Nick(), sid = p:SteamID64() or "BOT" })
        end
    end

    -- select first player by default
    if dpick:GetOptionText(1) then dpick:ChooseOptionID(1) end

    dsubmit.DoClick = function(s)
        if selected_entry then
            if selected_entry.sid == "BOT" then
                RunConsoleCommand("ttt_bot_transfer_credits", selected_entry.ni, "1")
            elseif player.GetBySteamID64(selected_entry.sid):IsActiveGlitch() then
                RunConsoleCommand("ttt_fake_transfer_credits", selected_entry.sid, "1")
            else
                RunConsoleCommand("ttt_transfer_credits", selected_entry.sid, "1")
            end
        end
    end

    dsubmit.Think = function(s)
        if LocalPlayer():GetCredits() < 1 then
            s:SetDisabled(true)
        end
    end

    dform:AddItem(dpick)
    dform:AddItem(dsubmit)

    dform:Help(LANG.GetParamTranslation("xfer_help", { role = LocalPlayer():GetRoleString() }))

    return dform
end
