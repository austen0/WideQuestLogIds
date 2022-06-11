QuestLogFrame:HookScript('OnUpdate', function(self)
	local index = GetQuestLogSelection();
	local title, _, _, _, _, _, _, id = GetQuestLogTitle(index);
	if ( not title ) then
		title = "";
	else
		title = format("%s [%d]", title, id)
	end
	if ( IsCurrentQuestFailed() ) then
		title = format("%s - (%s)", title, _G.FAILED)
	end
	QuestLogQuestTitle:SetText(title);
end)
