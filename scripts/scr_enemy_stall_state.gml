///scr_enemy_stall_state
show_debug_message("Stall alarm: " + string(stall_alarm) + " time.now: " + string(Time.now));
if (scr_alarm_passed(stall_alarm)) {
    scr_enemy_idle_state();
}
