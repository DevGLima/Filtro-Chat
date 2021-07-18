contagem = 0

filtro = {
    "fdp",
    "pqp",
    "vtmnc",
    "pnc",
    "sfd",
    "vsfd",
    "caraio",
    "caralho",
    "filho da puta",
    "puta que pariu",
    "vai toma no cu",
    "vai se fude",
    "se fude",
    "pau no cu",
}


function Filtro(message)
    for i, v in ipairs(filtro) do

        if string.find(message, v) then
            cancelEvent()
            contagem = contagem + 1
            outputChatBox("#0000CD「SERVER NAME」#FFFFFF Filtro Anti-Palavrões ("..contagem.."/3)", source, 255, 255, 255, true)
            if contagem >= 3 then
                kickPlayer(source, "Console", "Pare de falar palavriados!!!")
                contagem = 0
            end
        end
    end
end
addEventHandler("onPlayerChat", root, Filtro)

function antBug ()
    if source then
        contagem = 0
    end
end
addEventHandler ( "onPlayerQuit", root, antBug   )