shader_type canvas_item;

uniform bool active = true;

void fragment()
{
	vec4 previous_color = texture(TEXTURE, UV);
	vec4 new_color = previous_color;
	if (active)
	{
		vec4 white_color = vec4(1.0, 1.0, 1.0, previous_color.a);
		new_color = white_color;
	}
	COLOR = new_color;
}