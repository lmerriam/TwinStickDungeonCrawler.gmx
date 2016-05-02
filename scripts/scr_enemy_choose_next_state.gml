///scr_enemy_choose_next_state()

if (scr_alarm_passed(wander_alarm)) {
    state = choose(scr_enemy_wander_state, scr_enemy_idle_state);
    wander_alarm = scr_sec_from_now(irandom_range(2,4));
    targetx = random(room_width);
    targety = random(room_height);
}
