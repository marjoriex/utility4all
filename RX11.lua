local RX11 = {}

RX11.__index = RX11
RX11.RX11_RENDERED = {}

function RX11:draw_rect(int_x, int_y, int_width, int_height, color3_color) 
    local RX11_RECT = Drawing.new("Square")
    RX11_RECT.Visible = true
    RX11_RECT.Filled = true
    RX11_RECT.Color = color3_color
    RX11_RECT.Size = Vector2.new(int_width, int_height)
    RX11_RECT.Position = Vector2.new(int_x, int_y)

    table.insert(RX11.RX11_RENDERED, RX11_RECT)
    return RX11_RECT
end

function RX11:draw_square(int_x, int_y, int_width, int_height, color3_color) 
    local RX11_SQUARE = Drawing.new("Square")
    RX11_SQUARE.Visible = true
    RX11_SQUARE.Filled = false
    RX11_SQUARE.Thickness = 1
    RX11_SQUARE.Color = color3_color
    RX11_SQUARE.Size = Vector2.new(int_width, int_height)
    RX11_SQUARE.Position = Vector2.new(int_x, int_y)

    table.insert(RX11.RX11_RENDERED, RX11_SQUARE)
    return RX11_SQUARE
end

function RX11:draw_string(string_content, int_x, int_y, color3_color) 
    local RX11_STRING = Drawing.new("Text")
    RX11_STRING.Visible = true
    RX11_STRING.Center = false
    RX11_STRING.Outline = false
    RX11_STRING.Size = 19
    RX11_STRING.Font = 0
    RX11_STRING.Text = string_content
    RX11_STRING.Position = Vector2.new(int_x, int_y)
    RX11_STRING.Color = color3_color

    table.insert(RX11.RX11_RENDERED, RX11_STRING)
    return RX11_STRING
end

function RX11:draw_string_outline(string_content, int_x, int_y, color3_color) 
    local RX11_STRING_OUTLINE = Drawing.new("Text")
    RX11_STRING_OUTLINE.Visible = true
    RX11_STRING_OUTLINE.Center = false
    RX11_STRING_OUTLINE.Outline = true
    RX11_STRING_OUTLINE.Size = 19
    RX11_STRING_OUTLINE.Font = 0
    RX11_STRING_OUTLINE.Text = string_content
    RX11_STRING_OUTLINE.OutlineColor = color3_outline_color
    RX11_STRING_OUTLINE.Position = Vector2.new(int_x, int_y)
    RX11_STRING_OUTLINE.Color = color3_color

    table.insert(RX11.RX11_RENDERED, RX11_STRING_OUTLINE)
    return RX11_STRING_OUTLINE
end

function RX11:draw_string_custom(string_content, int_x, int_y, int_font, int_size, bool_center, bool_visible, color3_color, color3_outline_color) 
    local RX11_STRING_OUTLINE = Drawing.new("Text")
    RX11_STRING_OUTLINE.Visible = bool_visible
    RX11_STRING_OUTLINE.Center = bool_center
    RX11_STRING_OUTLINE.Size = int_size
    RX11_STRING_OUTLINE.Font = int_font
    RX11_STRING_OUTLINE.Text = string_content
    RX11_STRING_OUTLINE.Position = Vector2.new(int_x, int_y)
    RX11_STRING_OUTLINE.Color = color3_color

    table.insert(RX11.RX11_RENDERED, RX11_STRING_OUTLINE)
    return RX11_STRING_OUTLINE
end

function RX11:draw_string_custom_font(string_content, int_x, int_y, int_font, color3_color, color3_outline_color) 
    local RX11_STRING_OUTLINE = Drawing.new("Text")
    RX11_STRING_OUTLINE.Visible = true
    RX11_STRING_OUTLINE.Center = false
    RX11_STRING_OUTLINE.Size = 19
    RX11_STRING_OUTLINE.Font = int_font
    RX11_STRING_OUTLINE.Text = string_content
    RX11_STRING_OUTLINE.Position = Vector2.new(int_x, int_y)
    RX11_STRING_OUTLINE.Color = color3_color

    table.insert(RX11.RX11_RENDERED, RX11_STRING_OUTLINE)
    return RX11_STRING_OUTLINE
end

function RX11:draw_string_custom_font_outline(string_content, int_x, int_y, int_font, color3_color, color3_outline_color) 
    local RX11_STRING_OUTLINE = Drawing.new("Text")
    RX11_STRING_OUTLINE.Visible = true
    RX11_STRING_OUTLINE.Center = false
    RX11_STRING_OUTLINE.Outline = true
    RX11_STRING_OUTLINE.Size = 19
    RX11_STRING_OUTLINE.Font = int_font
    RX11_STRING_OUTLINE.Text = string_content
    RX11_STRING_OUTLINE.OutlineColor = color3_outline_color
    RX11_STRING_OUTLINE.Position = Vector2.new(int_x, int_y)
    RX11_STRING_OUTLINE.Color = color3_color

    table.insert(RX11.RX11_RENDERED, RX11_STRING_OUTLINE)
    return RX11_STRING_OUTLINE
end

function RX11:draw_string_centered(string_content, int_x, int_y, color3_color) 
    local RX11_STRING_CENTERED = Drawing.new("Text")
    RX11_STRING_CENTERED.Visible = true
    RX11_STRING_CENTERED.Center = true
    RX11_STRING_CENTERED.Outline = false
    RX11_STRING_CENTERED.Size = 19
    RX11_STRING_CENTERED.Font = 0
    RX11_STRING_CENTERED.Text = string_content
    RX11_STRING_CENTERED.Position = Vector2.new(int_x, int_y)
    RX11_STRING_CENTERED.Color = color3_color

    table.insert(RX11.RX11_RENDERED, RX11_STRING_CENTERED)
    return RX11_STRING_CENTERED
end

return RX11
