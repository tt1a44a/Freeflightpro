uniform highp vec2 TextureCoordScale;
uniform highp vec2 TextureCoordOffset;
uniform highp vec2 EyeToSourceScale;
uniform highp vec2 EyeToSourceOffset;
uniform highp mat4 TransformMatrix;

attribute highp vec2 Position;
attribute highp vec4 Color;

varying highp vec4 oColor;

void main()
{
    vec4 transformedPos = vec4(Position.x, Position.y, 0.0, 1.0) * TransformMatrix;
    vec4 transformedTextureCoordOffset = vec4(TextureCoordOffset.x, TextureCoordOffset.y, 0.0, 1.0) * TransformMatrix;

    gl_Position.x = transformedPos.x * EyeToSourceScale.x + EyeToSourceOffset.x - transformedTextureCoordOffset.x;
    gl_Position.y = transformedPos.y * EyeToSourceScale.y + EyeToSourceOffset.y + transformedTextureCoordOffset.y;
    gl_Position.z = 0.5;
    gl_Position.w = 1.0;

    oColor = Color;
}
