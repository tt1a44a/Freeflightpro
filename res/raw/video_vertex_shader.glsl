attribute highp vec3 aPosition;
attribute highp vec2 aTexCoord;
uniform highp mat4 uTexCoordTransformMatrix;
varying highp vec2 vTexCoord;

void main()
{
    gl_Position = uTexCoordTransformMatrix * vec4(aPosition, 1.0);
    vTexCoord = (uTexCoordTransformMatrix * vec4(aTexCoord.xy, 0.0, 1.0)).xy;
}