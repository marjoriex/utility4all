local RX9 = {}

RX9.__index = RX9
RX9.RX9_RENDERED = {}
RX9.RX9_DEFAULTS = {}

function RX9:draw_rect(int_x, int_y, int_width, int_height, color3_color) 
    local RX9_RECT = Drawing.new("Square")
    RX9_RECT.Visible = true
    RX9_RECT.Filled = true
    RX9_RECT.Color = color3_color
    RX9_RECT.Size = Vector2.new(int_width, int_height)
    RX9_RECT.Position = Vector2.new(int_x, int_y)

    table.insert(RX9.RX9_RENDERED, RX9_RECT)
    return RX9_RECT
end

function RX9:draw_square(int_x, int_y, int_width, int_height, color3_color) 
    local RX9_SQUARE = Drawing.new("Square")
    RX9_SQUARE.Visible = true
    RX9_SQUARE.Filled = false
    RX9_SQUARE.Thickness = 1
    RX9_SQUARE.Color = color3_color
    RX9_SQUARE.Size = Vector2.new(int_width, int_height)
    RX9_SQUARE.Position = Vector2.new(int_x, int_y)

    table.insert(RX9.RX9_RENDERED, RX9_SQUARE)
    return RX9_SQUARE
end

function RX9:draw_string(string_content, int_x, int_y, color3_color) 
    local RX9_STRING = Drawing.new("Text")
    RX9_STRING.Visible = true
    RX9_STRING.Center = false
    RX9_STRING.Outline = false
    RX9_STRING.Size = 19
    RX9_STRING.Font = 0
    RX9_STRING.Text = string_content
    RX9_STRING.Position = Vector2.new(int_x, int_y)
    RX9_STRING.Color = color3_color

    table.insert(RX9.RX9_RENDERED, RX9_STRING)
    return RX9_STRING
end

function RX9:draw_string_outline(string_content, int_x, int_y, color3_color) 
    local RX9_STRING_OUTLINE = Drawing.new("Text")
    RX9_STRING_OUTLINE.Visible = true
    RX9_STRING_OUTLINE.Center = false
    RX9_STRING_OUTLINE.Outline = true
    RX9_STRING_OUTLINE.Size = 19
    RX9_STRING_OUTLINE.Font = 0
    RX9_STRING_OUTLINE.Text = string_content
    RX9_STRING_OUTLINE.OutlineColor = color3_outline_color
    RX9_STRING_OUTLINE.Position = Vector2.new(int_x, int_y)
    RX9_STRING_OUTLINE.Color = color3_color

    table.insert(RX9.RX9_RENDERED, RX9_STRING_OUTLINE)
    return RX9_STRING_OUTLINE
end

function RX9:draw_string_custom(string_content, int_x, int_y, int_font, int_size, bool_center, bool_visible, bool_outline, color3_color, color3_outline_color) 
    local RX9_STRING_OUTLINE = Drawing.new("Text")
    RX9_STRING_OUTLINE.Visible = bool_visible
    RX9_STRING_OUTLINE.Center = bool_center
    RX9_STRING_OUTLINE.Size = int_size
    RX9_STRING_OUTLINE.Font = int_font
    RX9_STRING_OUTLINE.Text = string_content
    RX9_STRING_OUTLINE.Outline = bool_outline
    RX9_STRING_OUTLINE.Position = Vector2.new(int_x, int_y)
    RX9_STRING_OUTLINE.Color = color3_color

    table.insert(RX9.RX9_RENDERED, RX9_STRING_OUTLINE)
    return RX9_STRING_OUTLINE
end

function RX9:draw_string_custom_font(string_content, int_x, int_y, int_font, color3_color, color3_outline_color) 
    local RX9_STRING_OUTLINE = Drawing.new("Text")
    RX9_STRING_OUTLINE.Visible = true
    RX9_STRING_OUTLINE.Center = false
    RX9_STRING_OUTLINE.Size = 19
    RX9_STRING_OUTLINE.Font = int_font
    RX9_STRING_OUTLINE.Text = string_content
    RX9_STRING_OUTLINE.Position = Vector2.new(int_x, int_y)
    RX9_STRING_OUTLINE.Color = color3_color

    table.insert(RX9.RX9_RENDERED, RX9_STRING_OUTLINE)
    return RX9_STRING_OUTLINE
end

function RX9:draw_string_custom_font_outline(string_content, int_x, int_y, int_font, color3_color, color3_outline_color) 
    local RX9_STRING_OUTLINE = Drawing.new("Text")
    RX9_STRING_OUTLINE.Visible = true
    RX9_STRING_OUTLINE.Center = false
    RX9_STRING_OUTLINE.Outline = true
    RX9_STRING_OUTLINE.Size = 19
    RX9_STRING_OUTLINE.Font = int_font
    RX9_STRING_OUTLINE.Text = string_content
    RX9_STRING_OUTLINE.OutlineColor = color3_outline_color
    RX9_STRING_OUTLINE.Position = Vector2.new(int_x, int_y)
    RX9_STRING_OUTLINE.Color = color3_color

    table.insert(RX9.RX9_RENDERED, RX9_STRING_OUTLINE)
    return RX9_STRING_OUTLINE
end

function RX9:draw_string_centered(string_content, int_x, int_y, color3_color) 
    local RX9_STRING_CENTERED = Drawing.new("Text")
    RX9_STRING_CENTERED.Visible = true
    RX9_STRING_CENTERED.Center = true
    RX9_STRING_CENTERED.Outline = false
    RX9_STRING_CENTERED.Size = 19
    RX9_STRING_CENTERED.Font = 0
    RX9_STRING_CENTERED.Text = string_content
    RX9_STRING_CENTERED.Position = Vector2.new(int_x, int_y)
    RX9_STRING_CENTERED.Color = color3_color

    table.insert(RX9.RX9_RENDERED, RX9_STRING_CENTERED)
    return RX9_STRING_CENTERED
end

return RX9
