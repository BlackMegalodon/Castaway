accept_key = keyboard_check_pressed(ord("Z"));

var cam = view_camera[0];
var view_x = camera_get_view_x(cam);
var view_y = camera_get_view_y(cam);
var view_w = camera_get_view_width(cam);
var view_h = camera_get_view_height(cam);

textbox_width = view_w;
textbox_height = 96;
textbox_x = view_x;
textbox_y = view_y + view_h - textbox_height;

if (!setup)
{
    setup = true;
    draw_set_font(Normal);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);

    page_number = array_length(text);
    
    for (var p = 0; p < page_number; p++)
    {
        text_length[p] = string_length(text[p]);
        text_x_offset[p] = 0;
    }
}

if (draw_char < text_length[page])
{
    draw_char += text_speed;
    draw_char = clamp(draw_char, 0, text_length[page]);
}

if (accept_key)
{
    if (draw_char == text_length[page])
    {
        if (page < page_number - 1)
        {
            page++;
            draw_char = 0;
        }
        else
        {
            instance_destroy();
        }
    }
}

txtb_spr_w = sprite_get_width(spr_dialogbar);
txtb_spr_h = sprite_get_height(spr_dialogbar);

draw_sprite_ext(
    spr_dialogbar,
    0,
    textbox_x,
    textbox_y,
    textbox_width / txtb_spr_w,
    textbox_height / txtb_spr_h,
    0,
    c_white,
    1
);

var _drawtext = string_copy(text[page], 1, draw_char);

draw_text_ext(
    textbox_x + border,
    textbox_y + border,
    _drawtext,
    line_separation,
    line_width
);