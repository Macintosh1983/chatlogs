local UIS=game:GetService'UserInputService'
local logger = true --dont touch this u shmuck
getgenv().KeyBind="F1"--u can change this tho 

UIS.InputBegan:Connect(function(Key)
     if Key.KeyCode==Enum.KeyCode[getgenv().KeyBind] and not UIS:GetFocusedTextBox() then
         if logger == false then
             game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
             logger = true
         elseif logger == true then
             game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = false
             logger = false
         end
     end
end)
