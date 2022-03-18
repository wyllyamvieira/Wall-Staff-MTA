--[[

                    ___    ___                                    
                   /\_ \  /\_ \                                   
 __  __  __  __  __\//\ \ \//\ \    __  __     __      ___ ___    
/\ \/\ \/\ \/\ \/\ \ \ \ \  \ \ \  /\ \/\ \  /'__`\  /' __` __`\  
\ \ \_/ \_/ \ \ \_\ \ \_\ \_ \_\ \_\ \ \_\ \/\ \L\.\_/\ \/\ \/\ \ 
 \ \___x___/'\/`____ \/\____\/\____\\/`____ \ \__/.\_\ \_\ \_\ \_\
  \/__//__/   `/___/> \/____/\/____/ `/___/> \/__/\/_/\/_/\/_/\/_/
                 /\___/                 /\___/                    
                 \/__/                  \/__/                     
                                                                                                                                 
--]]


function getPlayerACLGroupFromTable (player, table)
    for i, v in ipairs (table) do
        if aclGetGroup (v) then
            local accName = getAccountName (getPlayerAccount (player))
            return isObjectInACLGroup ("user." ..accName, aclGetGroup (v))
        else
            outputDebugString ("Criar grupos de ACL obrigatórios, grupos de ACL obrigatórios: "..v.."!.", 4, 255, 0, 0)
            return false
        end
    end
end


addCommandHandler (config["Comando"], function (player, cmd)
    if getPlayerACLGroupFromTable (player, config["Acls"]) then
        local data = getElementData (player, "onPlayerStaff")
        if not data then
            setElementData (player, "onPlayerStaff", true)
            outputChatBox ("#FF0000[SERVER] #FFFFFF - Você ativou o Wall.", player, 255, 255, 255, true)
        else
            removeElementData (player, "onPlayerStaff")
            outputChatBox ("#FF0000[SERVER] #FFFFFF- Você desativou o Wall.", player, 255, 255, 255, true)
        end
    else
        outputChatBox ("#FF0000[SERVER] #FFFFFF- Você não tem permissões suficientes.", player, 255, 255, 255, true)
    end
end)

function creditoswyllyam( )
    outputDebugString(" ")
    outputDebugString("Sei que e chato isso no seu debug mais vamos deixar os creditos do Wyllyam que fez esse script como forma de respeito!!!")
    outputDebugString(" ")
end
