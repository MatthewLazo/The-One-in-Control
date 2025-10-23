local Time = {}

local tasks = {}

function Time:waitFor(seconds)
    local coRo = coroutine.create(function()
        Time:wait(seconds)
    end)
    table.insert(tasks, coRo)
    return coRo
end

function Time:wait(seconds)
    local time = seconds

    while time > 0 do
        time = time - coroutine.yield()
    end
end

function Time:isTimeTaskDone(task)
    local isTaskDone = true
    for i = #tasks, 1, -1 do
        if tasks[i] == task then
            isTaskDone = false
        end
    end
    return isTaskDone
end


function Time:update(dt)
    for i = #tasks, 1, -1 do
        if coroutine.status(tasks[i]) ~= "dead" then
            coroutine.resume(tasks[i], dt)
        else 
            print("Task " ..i .." ended")
            table.remove(tasks, i)
        end
    end

end

return Time