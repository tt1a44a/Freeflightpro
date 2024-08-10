attribute vec3 aPosition;
attribute vec4 aColor;

uniform mat4 uMvpMatrix;

varying vec4 vColor;

void main()
{
    vColor = aColor;
    gl_Position = uMvpMatrix * vec4(aPosition, 1.0);
}