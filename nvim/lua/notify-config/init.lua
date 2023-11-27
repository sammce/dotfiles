vim.notify = require("notify")

vim.notify.setup {
    fps = 60
}

local job = require("plenary.job")
job
:new({
    command = "curl",
    args = {"https://vtip.43z.one"},
    on_exit = function(j, exit_code)
        local res = table.concat(j:result())
        if exit_code ~= 0 then
            res = "Error fetching tip: " .. res
        end
        vim.notify(res, nil, {title = "Vim Tip"})
    end
})
:start()
