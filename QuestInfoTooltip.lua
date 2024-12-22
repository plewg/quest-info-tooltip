QuestItemTooltip = {}
local QIT = QuestItemTooltip
local itemIdQuestMap = {
	[769] = {
		quests = {
			{
				id = 86,
				name = 'Pie for Billy',
				amountNeeded = 4
			},
			{
				id = 317,
				name = 'Stocking Jetsteam',
				amountNeeded = 4
			}
		}
	}
}

local questStatus = {}

-- Identify character bags
local CharacterBags = {}
for i = CONTAINER_BAG_OFFSET + 1, 23 do
	CharacterBags[i] = true
end

-- Identify bank bags
local firstBankBag = C_Container.ContainerIDToInventoryID(NUM_BAG_SLOTS + 1)
local lastBankBag = C_Container.ContainerIDToInventoryID(NUM_BAG_SLOTS + NUM_BANKBAGSLOTS)
for i = firstBankBag, lastBankBag do
	CharacterBags[i] = true
end

-- First keyring inventory slot
local FIRST_KEYRING_INVSLOT = 107

function Print(msg)
	ChatFrame1:AddMessage(msg)
end

-- Set price information in the tooltip
function QIT:SetInfo(tt, count, item)
	count = count or 1
	item = item or select(2, tt:GetItem())
	local itemId = GetItemInfoFromHyperlink(select(2, tt:GetItem()))

	if item and itemIdQuestMap[itemId] ~= nil then
		for _, quest in pairs(itemIdQuestMap[itemId].quests) do
			local completed
			if questStatus[quest.id] ~= nil then
				completed = questStatus[quest.id]
			else
				completed = C_QuestLog.IsQuestFlaggedCompleted(quest.id)
				questStatus[quest.id] = completed
			end

			local leftText = quest.name .. ' [' .. tostring(count) .. '/' .. tostring(quest.amountNeeded) .. ']'
			local rightText = '(' .. (completed and 'Completed' or 'Incomplete') .. ')'
			tt:AddDoubleLine(
				leftText,
				rightText,
				1,
				1,
				0,
				completed and 0 or 1,
				completed and 1 or 0,
				0
			)
		end

		tt:Show()
	end
end

-- Define methods for setting price in various tooltips
local SetItem = {
	SetAction = function(tt, slot)
		if GetActionInfo(slot) == "item" then
			QIT:SetInfo(tt, GetActionCount(slot))
		end
	end,
	SetAuctionItem = function(tt, auctionType, index)
		local _, _, count = GetAuctionItemInfo(auctionType, index)
		QIT:SetInfo(tt, count)
	end,
	SetAuctionSellItem = function(tt)
		local _, _, count = GetAuctionSellItemInfo()
		QIT:SetInfo(tt, count)
	end,
	SetBagItem = function(tt, bag, slot)
		local count
		local info = C_Container.GetContainerItemInfo(bag, slot)
		if info then
			count = info.stackCount
		end
		if count then
			QIT:SetInfo(tt, count)
		end
	end,
	--SetBagItemChild
	--SetBuybackItem -- already shown
	--SetCompareItem
	SetCraftItem = function(tt, index, reagent)
		local _, _, count = GetCraftReagentInfo(index, reagent)
		-- otherwise returns an empty link
		local itemLink = GetCraftReagentItemLink(index, reagent)
		QIT:SetInfo(tt, count, itemLink)
	end,
	SetCraftSpell = function(tt)
		QIT:SetInfo(tt)
	end,
	--SetHyperlink -- item information is not readily available
	SetInboxItem = function(tt, messageIndex, attachIndex)
		local count, itemID
		if attachIndex then
			count = select(4, GetInboxItem(messageIndex, attachIndex))
		else
			count, itemID = select(14, GetInboxHeaderInfo(messageIndex))
		end
		QIT:SetInfo(tt, count, itemID)
	end,
	SetInventoryItem = function(tt, unit, slot)
		local count
		if not CharacterBags[slot] then
			count = GetInventoryItemCount(unit, slot)
		end
		if slot < FIRST_KEYRING_INVSLOT then
			QIT:SetInfo(tt, count)
		end
	end,
	--SetInventoryItemByID
	--SetItemByID
	SetLootItem = function(tt, slot)
		local _, _, count = GetLootSlotInfo(slot)
		QIT:SetInfo(tt, count)
	end,
	SetLootRollItem = function(tt, rollID)
		local _, _, count = GetLootRollItemInfo(rollID)
		QIT:SetInfo(tt, count)
	end,
	--SetMerchantCostItem -- alternate currency
	--SetMerchantItem -- already shown
	SetQuestItem = function(tt, questType, index)
		local _, _, count = GetQuestItemInfo(questType, index)
		QIT:SetInfo(tt, count)
	end,
	SetQuestLogItem = function(tt, _, index)
		local _, _, count = GetQuestLogRewardInfo(index)
		QIT:SetInfo(tt, count)
	end,
	--SetRecipeReagentItem -- retail
	--SetRecipeResultItem -- retail
	SetSendMailItem = function(tt, index)
		local count = select(4, GetSendMailItem(index))
		QIT:SetInfo(tt, count)
	end,
	SetTradePlayerItem = function(tt, index)
		local _, _, count = GetTradePlayerItemInfo(index)
		QIT:SetInfo(tt, count)
	end,
	SetTradeSkillItem = function(tt, index, reagent)
		local count
		if reagent then
			count = select(3, GetTradeSkillReagentInfo(index, reagent))
		else -- show minimum instead of maximum count
			count = GetTradeSkillNumMade(index)
		end
		QIT:SetInfo(tt, count)
	end,
	SetTradeTargetItem = function(tt, index)
		local _, _, count = GetTradeTargetItemInfo(index)
		QIT:SetInfo(tt, count)
	end,
	SetTrainerService = function(tt, index)
		QIT:SetInfo(tt)
	end,
}

-- Hook the SetItem methods to their respective tooltip events
for method, func in pairs(SetItem) do
	hooksecurefunc(GameTooltip, method, func)
end
