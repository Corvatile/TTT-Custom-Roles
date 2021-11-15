------------------
-- TRANSLATIONS --
------------------

hook.Add("Initialize", "DetectiveLike_Translations_Initialize", function()
    -- Event
    LANG.AddToLanguage("english", "ev_promote", "{player} was promoted to {detective}")

    -- HUD
    LANG.AddToLanguage("english", "detective_promotion_hud", "You have been promoted to {detective}")
end)

-------------
-- SCORING --
-------------

hook.Add("Initialize", "DetectiveLike_Scoring_Initialize", function()
    local promotion_icon = Material("icon16/award_star_add.png")
    local Event = CLSCORE.DeclareEventDisplay
    local PT = LANG.GetParamTranslation
    Event(EVENT_PROMOTION, {
        text = function(e)
            return PT("ev_promote", {player = e.ply, detective = ROLE_STRINGS[ROLE_DETECTIVE]})
        end,
        icon = function(e)
            return promotion_icon, "Promotion"
        end})
end)

net.Receive("TTT_Promotion", function(len)
    local name = net.ReadString()
    CLSCORE:AddEvent({
        id = EVENT_PROMOTION,
        ply = name
    })
end)

---------
-- HUD --
---------

hook.Add("TTTHUDInfoPaint", "DetectiveLike_TTTHUDInfoPaint", function(client, label_left, label_top)
    if client:IsDetectiveLike() and not client:IsDetectiveTeam() then
        surface.SetFont("TabLarge")
        surface.SetTextColor(255, 255, 255, 230)

        text = LANG.GetParamTranslation("detective_promotion_hud", { detective = ROLE_STRINGS[ROLE_DETECTIVE] })
        local _, h = surface.GetTextSize(text)

        surface.SetTextPos(label_left, ScrH() - label_top - h)
        surface.DrawText(text)

        -- Move the label up for the next one
        label_top = label_top + 20
    end
end)