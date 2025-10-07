// Parâmetros
textbox_width = 200;
textbox_height = 100;
border = 8;
line_separation = 12;
line_width = textbox_width - border * 2;
txtb_spr = spr_dialogbar;

// Texto
page = 0;
page_number = 0;
text = []; // Inicializa o array para evitar erro
text[0] = "Damn boy this SICK";
text[1] = "ZOROFICATION HELL YEAH";
text[2] = "Tema o WEBSAI 2025 AC";
text[3] = "DAAAAAAAAAMMMMMMMMNNNN!";
text_length = []; // Inicializa outro array
text_length[0] = string_length(text[0]);
text_length[1] = string_length(text[1]);
draw_char = 0;
text_speed = 1;

setup = false;
