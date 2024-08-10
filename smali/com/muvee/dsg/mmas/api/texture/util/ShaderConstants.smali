.class public interface abstract Lcom/muvee/dsg/mmas/api/texture/util/ShaderConstants;
.super Ljava/lang/Object;
.source "ShaderConstants.java"


# static fields
.field public static final FRAGMENT_SHADER_EXTERNAL_OPACITY:Ljava/lang/String; = "\t\t\t#extension GL_OES_EGL_image_external : require\n\t\t\tprecision mediump float;\n\t\t\tuniform samplerExternalOES\tuSampler2d;\n\t\t\tvarying vec2 vTextureCoord;\n\t\t\tuniform float\topacity;\n\t\t\tvoid main (void)\n\t\t\t{\n\t\t\t\tlowp vec4 color = texture2D(uSampler2d, vTextureCoord);\n\t\t\t\tfloat rCol = color.r;\n\t\t\t\tfloat gCol = color.g;\n\t\t\t\tfloat bCol = color.b;\n\t\t\t\tlowp float alphaNew = color.a * opacity;\n\t\t\t\tgl_FragColor = vec4(rCol,gCol,bCol, alphaNew);\n\t\t\t}"

.field public static final FRAGMENT_SHADER_NORMAL:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float\topacity;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field public static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"
