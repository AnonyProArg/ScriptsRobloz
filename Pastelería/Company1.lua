local function clickMoneyLoop()
    while true do
        local args = {
            [1] = 74,
            [2] = "TextButton",
            [3] = "Instance"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("ClickMoney"):InvokeServer(unpack(args))
        wait(0.2)
    end
end

local function collectMoneyLoop()
    while true do
        game:GetService("ReplicatedStorage").CollectMoney:InvokeServer()
        wait(2)
    end
end

spawn(clickMoneyLoop)
spawn(collectMoneyLoop)

