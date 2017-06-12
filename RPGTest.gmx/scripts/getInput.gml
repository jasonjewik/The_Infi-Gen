right = keyboard_check(ord('D'));
left = keyboard_check(ord('A'));
up = keyboard_check(ord('W'));
down = keyboard_check(ord('S'));

up_press = keyboard_check_released(ord('W'));
down_press = keyboard_check_released(ord('S'));
right_press = keyboard_check_released(ord('D'));
left_press = keyboard_check_released(ord('A'));

space = keyboard_check(vk_space);
shift = keyboard_check_released(vk_shift);
tab = keyboard_check_released(vk_tab);
q = keyboard_check_released(ord('Q'));
z = keyboard_check_released(ord('Z'));
control = keyboard_check_released(vk_control);
escape = keyboard_check_released(vk_escape);
enter = keyboard_check_released(vk_enter);

r = keyboard_check_pressed(ord('R'));
e = keyboard_check_pressed(ord('E'));
c = keyboard_check_pressed(ord('C'));
