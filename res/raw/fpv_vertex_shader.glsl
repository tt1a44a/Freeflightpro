uniform highp vec2 TextureCoordScale;
uniform highp vec2 TextureCoordOffset;
uniform highp vec2 EyeToSourceScale;
uniform highp vec2 EyeToSourceOffset;
uniform highp mat4 TransformMatrix;

attribute highp vec2 Position;
attribute highp vec4 Color;

attribute highp vec2 TexCoord0;
attribute highp vec2 TexCoord1;
attribute highp vec2 TexCoord2;

varying highp vec2 oTexCoord0;
varying highp vec2 oTexCoord1;
varying highp vec2 oTexCoord2;

varying highp vec4 oColor;

void main()
{
    vec4 transformedPos = vec4(Position.x, Position.y, 0.0, 1.0) * TransformMatrix;
    gl_Position.x = transformedPos.x * EyeToSourceScale.x + EyeToSourceOffset.x;
    gl_Position.y = transformedPos.y * EyeToSourceScale.y + EyeToSourceOffset.y;
    gl_Position.z = 0.5;
    gl_Position.w = 1.0;

    // Vertex inputs are in TanEyeAngle space for the R,G,B channels (i.e. after chromatic aberration and distortion).
    // Scale them into the correct [0-1],[0-1] UV lookup space (depending on eye)
    vec2 midValue = vec2(0.5, 0.5);
    vec4 transformedTextureCoordOffset = vec4(TextureCoordOffset.x, TextureCoordOffset.y, 0.0, 1.0) * TransformMatrix;

    oTexCoord0 = ((TexCoord0 - midValue) * TextureCoordScale) + midValue + transformedTextureCoordOffset.xy;
    oTexCoord1 = ((TexCoord1 - midValue) * TextureCoordScale) + midValue + transformedTextureCoordOffset.xy;
    oTexCoord2 = ((TexCoord2 - midValue) * TextureCoordScale) + midValue + transformedTextureCoordOffset.xy;

    oColor = Color; // Used for vignette fade.
}
