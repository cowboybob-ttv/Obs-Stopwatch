obs = obslua

-- Global variables
start_time = 0
current_time = 0
running = false
target_time = 60 -- Default target time in seconds
interval = 100 -- Update interval in milliseconds
text_source_name = "Stopwatch" -- Default text source name
hotkey_id_start_pause = obs.OBS_INVALID_HOTKEY_ID
hotkey_id_reset = obs.OBS_INVALID_HOTKEY_ID

-- Function to format time as HH:MM:SS
function format_time(seconds)
    local hours = math.floor(seconds / 3600)
    local minutes = math.floor((seconds % 3600) / 60)
    local seconds = math.floor(seconds % 60)
    return string.format("%02d:%02d:%02d", hours, minutes, seconds)
end

-- Function to update the timer
function update_timer()
    if running then
        local now = os.time()
        current_time = now - start_time
        if current_time >= target_time then
            current_time = target_time
            running = false
        end
        local formatted_time = format_time(current_time)
        update_text_source(formatted_time)
        obs.timer_remove(update_timer)
        if running then
            obs.timer_add(update_timer, interval)
        end
    end
end

-- Function to update the text source in OBS
function update_text_source(text)
    local source = obs.obs_get_source_by_name(text_source_name)
    if source then
        local settings = obs.obs_data_create()
        obs.obs_data_set_string(settings, "text", text)
        obs.obs_source_update(source, settings)
        obs.obs_data_release(settings)
        obs.obs_source_release(source)
    end
end

-- Start function to start the timer
function start_timer()
    if not running then
        start_time = os.time() - current_time
        running = true
        obs.timer_add(update_timer, interval)
    end
end

-- Pause function to pause the timer
function pause_timer()
    if running then
        running = false
        obs.timer_remove(update_timer)
    end
end

-- Start/Pause function to toggle the timer state
function start_pause(pressed)
    if not pressed then -- Ensure the function only runs on key release
        if running then
            pause_timer()
        else
            start_timer()
        end
    end
end

-- Reset function to reset the timer
function reset_timer(pressed)
    if not pressed then -- Ensure the function only runs on key release
        running = false
        current_time = 0
        update_text_source("00:00:00")
        obs.timer_remove(update_timer)
    end
end

-- Reset button callback
function reset_button_clicked(props, prop)
    reset_timer(false)
end

-- Start button callback
function start_button_clicked(props, prop)
    start_timer()
end

-- Pause button callback
function pause_button_clicked(props, prop)
    pause_timer()
end

-- Script description
function script_description()
    return "A simple stopwatch script for OBS with start, pause, and reset buttons and hotkeys. The timer stops when it reaches a specified value and displays the time in a text source. Add hotkeys from Settings/Hotkeys. Search for Start/ Pause Timer to set key to start and pause. Search for Reset Timer to set key to reset timer."
end

-- Script properties
function script_properties()
    local props = obs.obs_properties_create()
    
    obs.obs_properties_add_int(props, "target_time", "Set Timer to Count Up To (seconds)", 1, 86400, 1)
    obs.obs_properties_add_text(props, "text_source_name", "Text Source Name", obs.OBS_TEXT_DEFAULT)
    
    obs.obs_properties_add_button(props, "start_button", "Start", start_button_clicked)
    obs.obs_properties_add_button(props, "pause_button", "Pause", pause_button_clicked)
    obs.obs_properties_add_button(props, "reset_button", "Reset", reset_button_clicked)
    
    return props
end

-- Script update function
function script_update(settings)
    target_time = obs.obs_data_get_int(settings, "target_time")
    text_source_name = obs.obs_data_get_string(settings, "text_source_name")
end

-- Function to save the hotkey binding
function script_save(settings)
    obs.obs_data_set_array(settings, "start_pause_hotkey", obs.obs_hotkey_save(hotkey_id_start_pause))
    obs.obs_data_set_array(settings, "reset_hotkey", obs.obs_hotkey_save(hotkey_id_reset))
end

-- Function to load the hotkey binding
function script_load(settings)
    hotkey_id_start_pause = obs.obs_hotkey_register_frontend("start_pause_hotkey", "Start/Pause Timer", start_pause)
    local hotkey_save_array = obs.obs_data_get_array(settings, "start_pause_hotkey")
    obs.obs_hotkey_load(hotkey_id_start_pause, hotkey_save_array)
    obs.obs_data_array_release(hotkey_save_array)
    
    hotkey_id_reset = obs.obs_hotkey_register_frontend("reset_hotkey", "Reset Timer", reset_timer)
    hotkey_save_array = obs.obs_data_get_array(settings, "reset_hotkey")
    obs.obs_hotkey_load(hotkey_id_reset, hotkey_save_array)
    obs.obs_data_array_release(hotkey_save_array)
    
    update_text_source("00:00:00")
end
