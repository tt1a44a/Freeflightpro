.class public Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;
.super Ljava/lang/Object;
.source "VmTextureRender.java"

# interfaces
.implements Lcom/muvee/dsg/mmas/api/advancevideomixer/ShaderConstants;
.implements Lcom/muvee/dsg/mmas/api/advancevideomixer/VerticesDataConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$DrawFrameHandler;,
        Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;
    }
.end annotation


# instance fields
.field private a:Ljava/nio/FloatBuffer;

.field private b:[F

.field private c:[F

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;


# direct methods
.method public constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;)V
    .locals 4

    .prologue
    const/16 v1, 0x10

    const/16 v3, 0xd

    const/4 v2, 0x5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->b:[F

    .line 43
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->c:[F

    .line 55
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->c:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 57
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->c:[F

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->c:[F

    aget v1, v1, v2

    neg-float v1, v1

    aput v1, v0, v2

    .line 58
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->c:[F

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->c:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v3

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->d:I

    .line 62
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->i:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;

    .line 63
    return-void
.end method

.method private a(ILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glCreateShader type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 233
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 234
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 235
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 236
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 237
    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 238
    const-string v2, "com.muvee.dsg.videoframegenerator.STextureRender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v2, "com.muvee.dsg.videoframegenerator.STextureRender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 243
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 247
    const v1, 0x8b31

    invoke-direct {p0, v1, p1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->a(ILjava/lang/String;)I

    move-result v2

    .line 248
    if-nez v2, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->a(ILjava/lang/String;)I

    move-result v3

    .line 252
    if-eqz v3, :cond_0

    .line 256
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 257
    if-nez v1, :cond_2

    .line 258
    const-string v4, "com.muvee.dsg.videoframegenerator.STextureRender"

    const-string v5, "Could not create program"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_2
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 261
    const-string v2, "glAttachShader"

    invoke-virtual {p0, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 262
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 263
    const-string v2, "glAttachShader"

    invoke-virtual {p0, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 264
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 265
    new-array v2, v6, [I

    .line 266
    const v3, 0x8b82

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 267
    aget v2, v2, v0

    if-eq v2, v6, :cond_3

    .line 268
    const-string v2, "com.muvee.dsg.videoframegenerator.STextureRender"

    const-string v3, "Could not link program: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v2, "com.muvee.dsg.videoframegenerator.STextureRender"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static checkLocation(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 285
    if-gez p0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to locate \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in program"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    return-void
.end method

.method public static clearFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 80
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 81
    return-void
.end method


# virtual methods
.method public changeFragmentShader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 208
    if-nez p2, :cond_0

    .line 210
    sget-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$1;->a:[I

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->i:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;

    invoke-virtual {v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 220
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 221
    const-string/jumbo p1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 223
    :cond_1
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->d:I

    .line 225
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->d:I

    if-nez v0, :cond_2

    .line 226
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :pswitch_0
    const-string p2, "\t\t\t#extension GL_OES_EGL_image_external : require\n\t\t\tprecision mediump float;\n\t\t\tuniform samplerExternalOES\tuSampler2d;\n\t\t\tvarying vec2 vTextureCoord;\n\t\t\tuniform float\topacity;\n\t\t\tvoid main (void)\n\t\t\t{\n\t\t\t\tlowp vec4 color = texture2D(uSampler2d, vTextureCoord);\n\t\t\t\tfloat rCol = color.r;\n\t\t\t\tfloat gCol = color.g;\n\t\t\t\tfloat bCol = color.b;\n\t\t\t\tlowp float alphaNew = color.a * opacity;\n\t\t\t\tgl_FragColor = vec4(rCol,gCol,bCol, alphaNew);\n\t\t\t}"

    goto :goto_0

    .line 215
    :pswitch_1
    const-string/jumbo p2, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float\topacity;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    goto :goto_0

    .line 228
    :cond_2
    return-void

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeTriangleVerticesData([F)V
    .locals 2

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    sget-object p1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->TRIANGLE_VERTICES_DATA:[F

    .line 71
    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 73
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->a:Ljava/nio/FloatBuffer;

    .line 74
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 76
    return-void
.end method

.method public checkGlError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 278
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string v1, "com.muvee.dsg.videoframegenerator.STextureRender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_0
    return-void
.end method

.method public drawFrame(Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$DrawFrameHandler;F)V
    .locals 9

    .prologue
    const/4 v1, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 89
    const-string v0, "com.muvee.dsg.videoframegenerator.STextureRender"

    const-string v2, "::drawFrame: %s,%s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v3

    iget-object v5, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->i:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string/jumbo v0, "onDrawFrame start"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 94
    const-string v0, "glUseProgram"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 96
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 97
    iget-object v0, p1, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->type:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;

    iget v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;->type:I

    iget v2, p1, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->textureId:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 99
    iget v0, p1, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->rotation:I

    sparse-switch v0, :sswitch_data_0

    .line 107
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->a:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->TRIANGLE_VERTICES_DATA:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 113
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->g:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->a:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 115
    const-string v0, "glVertexAttribPointer maPosition"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 116
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 117
    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 120
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->h:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->a:Ljava/nio/FloatBuffer;

    move v1, v8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 122
    const-string v0, "glVertexAttribPointer maTextureHandle"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 123
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->h:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 124
    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 126
    if-eqz p2, :cond_0

    .line 127
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->b:[F

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->c:[F

    invoke-interface {p2, v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$DrawFrameHandler;->onBeforeSetVPMatrix([F[F)V

    .line 138
    :goto_1
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->e:I

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->b:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 139
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->f:I

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->c:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 141
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 142
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 144
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->d:I

    const-string/jumbo v1, "opacity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 145
    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 147
    const/4 v0, 0x4

    invoke-static {v7, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 148
    const-string v0, "glDrawArrays"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 150
    iget-object v0, p1, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->type:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;

    iget v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;->type:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 152
    return-void

    .line 102
    :sswitch_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->a:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->TRIANGLE_VERTICES_DATA_PORTAIL:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->b:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 131
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->c:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 133
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->c:[F

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->c:[F

    aget v1, v1, v7

    neg-float v1, v1

    aput v1, v0, v7

    .line 134
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->c:[F

    const/16 v1, 0xd

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->c:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    sub-float/2addr v2, v4

    aput v2, v0, v1

    goto :goto_1

    .line 99
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 292
    return-void
.end method

.method public surfaceCreated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 158
    if-nez p2, :cond_0

    .line 159
    sget-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$1;->a:[I

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->i:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;

    invoke-virtual {v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 168
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 169
    const-string/jumbo p1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 171
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->d:I

    .line 172
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->d:I

    if-nez v0, :cond_2

    .line 173
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :pswitch_0
    const-string p2, "\t\t\t#extension GL_OES_EGL_image_external : require\n\t\t\tprecision mediump float;\n\t\t\tuniform samplerExternalOES\tuSampler2d;\n\t\t\tvarying vec2 vTextureCoord;\n\t\t\tuniform float\topacity;\n\t\t\tvoid main (void)\n\t\t\t{\n\t\t\t\tlowp vec4 color = texture2D(uSampler2d, vTextureCoord);\n\t\t\t\tfloat rCol = color.r;\n\t\t\t\tfloat gCol = color.g;\n\t\t\t\tfloat bCol = color.b;\n\t\t\t\tlowp float alphaNew = color.a * opacity;\n\t\t\t\tgl_FragColor = vec4(rCol,gCol,bCol, alphaNew);\n\t\t\t}"

    goto :goto_0

    .line 164
    :pswitch_1
    const-string/jumbo p2, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float\topacity;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    goto :goto_0

    .line 176
    :cond_2
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->d:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->g:I

    .line 177
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->g:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->checkLocation(ILjava/lang/String;)V

    .line 178
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->d:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->h:I

    .line 179
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->h:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->checkLocation(ILjava/lang/String;)V

    .line 181
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->d:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->e:I

    .line 182
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->e:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->checkLocation(ILjava/lang/String;)V

    .line 183
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->d:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->f:I

    .line 184
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->f:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->checkLocation(ILjava/lang/String;)V

    .line 202
    return-void

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public validate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 295
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->a:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->changeTriangleVerticesData([F)V

    .line 299
    :cond_0
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->d:I

    if-gez v0, :cond_1

    .line 300
    invoke-virtual {p0, v1, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->surfaceCreated(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_1
    return-void
.end method
