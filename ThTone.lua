local prev_time = 0
local prev_thr = 0
local idThr

local function init()
    idThr= getFieldInfo('thr').id
end

-- Called periodically while the Special Function switch is on.
-- Not sure how frequently, so limit to 250ms min period.
local function run()
    local t = getTime()
    if (t - prev_time) > 25 then
        prev_time = t
        -- Range of thr is 2048, so avoid noise with delta > 25
        local thr = getValue(idThr)
        if math.abs(thr - prev_thr) > 25 then
            prev_thr = thr
            playTone(800+thr/2, 250, 0, PLAY_NOW)
        end
    end
end

-- Called periodically while the Special Function switch is off
local function background()

end

return { run=run, background=background, init=init }
