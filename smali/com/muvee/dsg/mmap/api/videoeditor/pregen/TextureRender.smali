.class public Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;
.super Ljava/lang/Object;
.source "TextureRender.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/pregen/ShaderConstants;
.implements Lcom/muvee/dsg/mmap/api/videoeditor/pregen/VerticesDataConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$DrawFrameHandler;,
        Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;
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

.field private i:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;


# direct methods
.method public constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;)V
    .locals 4

    .prologue
    const/16 v1, 0x10

    const/16 v3, 0xd

    const/4 v2, 0x5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->b:[F

    .line 45
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->c:[F

    .line 57
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->c:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 59
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->c:[F

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->c:[F

    aget v1, v1, v2

    neg-float v1, v1

    aput v1, v0, v2

    .line 60
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->c:[F

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->c:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v3

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->d:I

    .line 64
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->i:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

    .line 65
    return-void
.end method

.method private a(ILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 248
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glCreateShader type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 250
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 251
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 252
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 253
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 254
    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 255
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

    .line 256
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

    .line 257
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 260
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

    .line 264
    const v1, 0x8b31

    invoke-direct {p0, v1, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->a(ILjava/lang/String;)I

    move-result v2

    .line 265
    if-nez v2, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->a(ILjava/lang/String;)I

    move-result v3

    .line 269
    if-eqz v3, :cond_0

    .line 273
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 274
    if-nez v1, :cond_2

    .line 275
    const-string v4, "com.muvee.dsg.videoframegenerator.STextureRender"

    const-string v5, "Could not create program"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_2
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 278
    const-string v2, "glAttachShader"

    invoke-virtual {p0, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 279
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 280
    const-string v2, "glAttachShader"

    invoke-virtual {p0, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 281
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 282
    new-array v2, v6, [I

    .line 283
    const v3, 0x8b82

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 284
    aget v2, v2, v0

    if-eq v2, v6, :cond_3

    .line 285
    const-string v2, "com.muvee.dsg.videoframegenerator.STextureRender"

    const-string v3, "Could not link program: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v2, "com.muvee.dsg.videoframegenerator.STextureRender"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static checkLocation(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 302
    if-gez p0, :cond_0

    .line 303
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

    .line 305
    :cond_0
    return-void
.end method

.method public static clearFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 82
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 83
    return-void
.end method


# virtual methods
.method public changeFragmentShader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 222
    if-nez p2, :cond_0

    .line 224
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$1;->a:[I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->i:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

    invoke-virtual {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 237
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 238
    const-string p1, "attribute highp vec4    aPosition;\nattribute mediump vec4    aTextureCoord;\nuniform mediump mat4    uMVPMatrix;\nuniform mediump mat4    uSTMatrix;\nvarying mediump vec2    vTextureCoord;\nvarying mediump vec2    vTexCoords00;\nvarying mediump vec2    vTexCoords01;\nvarying mediump vec2    vTexCoords02;\nvarying mediump vec2    vTexCoords10;\nvarying mediump vec2    vTexCoords12;\nvarying mediump vec2    vTexCoords20;\nvarying mediump vec2    vTexCoords21;\nvarying mediump vec2    vTexCoords22;\nvoid main(void)\n{\n\tgl_Position = uMVPMatrix * aPosition;\n\tvTextureCoord = (uSTMatrix * aTextureCoord).xy;\n    float stepsizeX = 1.0/1280.0;\n    float stepsizeY = 1.0/720.0;\n    vTexCoords00 = vTextureCoord + vec2(-stepsizeX, -stepsizeY);\n\tvTexCoords01 = vTextureCoord + vec2(0, -stepsizeY);\n    vTexCoords02 = vTextureCoord + vec2(stepsizeX, -stepsizeY);\n\tvTexCoords10 = vTextureCoord + vec2(-stepsizeX, 0);\n\tvTexCoords12 = vTextureCoord + vec2(stepsizeX, 0);\n    vTexCoords20 = vTextureCoord + vec2(-stepsizeX, stepsizeY);\n\tvTexCoords21 = vTextureCoord + vec2(0, stepsizeY);\n    vTexCoords22 = vTextureCoord + vec2(stepsizeX, stepsizeY);\n}\t\n"

    .line 240
    :cond_1
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->d:I

    .line 242
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->d:I

    if-nez v0, :cond_2

    .line 243
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :pswitch_0
    const-string p2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES    uSampler2d;\nuniform lowp float            opacity;\nvarying vec2 vTextureCoord;\nvarying mediump vec2        vTexCoords00;\nvarying mediump vec2        vTexCoords01;\nvarying mediump vec2        vTexCoords02;\nvarying mediump vec2        vTexCoords10;\nvarying mediump vec2        vTexCoords12;\nvarying mediump vec2        vTexCoords20;\nvarying mediump vec2        vTexCoords21;\nvarying mediump vec2        vTexCoords22;\nvoid main (void)\n{\n    lowp vec4 sum = vec4(0.0);\n    lowp vec4 color = texture2D(uSampler2d, vTextureCoord);\n    sum = color + \n    \ttexture2D(uSampler2d, vTexCoords00) +\n        texture2D(uSampler2d, vTexCoords01) + \n        texture2D(uSampler2d, vTexCoords02) +\n        texture2D(uSampler2d, vTexCoords10) +\n        texture2D(uSampler2d, vTexCoords12) +\n        texture2D(uSampler2d, vTexCoords20) +\n        texture2D(uSampler2d, vTexCoords21) +\n        texture2D(uSampler2d, vTexCoords22);\n    gl_FragColor = sum / 9.0;\n}\n"

    goto :goto_0

    .line 232
    :pswitch_1
    const-string/jumbo p2, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float\topacity;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    goto :goto_0

    .line 245
    :cond_2
    return-void

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeTriangleVerticesData([F)V
    .locals 2

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    sget-object p1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->TRIANGLE_VERTICES_DATA:[F

    .line 73
    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 75
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->a:Ljava/nio/FloatBuffer;

    .line 76
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    return-void
.end method

.method public checkGlError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 295
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 296
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

    .line 297
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

    .line 299
    :cond_0
    return-void
.end method

.method public drawFrame(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;ILcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$DrawFrameHandler;F)V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v3, 0x0

    .line 92
    const-string/jumbo v0, "onDrawFrame start"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 94
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 95
    const-string v0, "glUseProgram"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 97
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 98
    iget v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;->type:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 100
    sparse-switch v3, :sswitch_data_0

    .line 108
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 109
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->a:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->TRIANGLE_VERTICES_DATA:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 114
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->g:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->a:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 116
    const-string v0, "glVertexAttribPointer maPosition"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 117
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 118
    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->h:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->a:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 123
    const-string v0, "glVertexAttribPointer maTextureHandle"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 124
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->h:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 125
    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 127
    if-eqz p3, :cond_0

    .line 128
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->b:[F

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->c:[F

    invoke-interface {p3, v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$DrawFrameHandler;->onBeforeSetVPMatrix([F[F)V

    .line 149
    :goto_1
    :pswitch_0
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->e:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->b:[F

    invoke-static {v0, v7, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 150
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->f:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->c:[F

    invoke-static {v0, v7, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 152
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 153
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 155
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->d:I

    const-string/jumbo v1, "opacity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 156
    invoke-static {v0, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 158
    const/4 v0, 0x4

    invoke-static {v6, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 159
    const-string v0, "glDrawArrays"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 161
    iget v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;->type:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 163
    return-void

    .line 103
    :sswitch_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->a:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->TRIANGLE_VERTICES_DATA_PORTAIL:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->b:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 132
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->c:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 134
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$1;->a:[I

    invoke-virtual {p1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->c:[F

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->c:[F

    aget v1, v1, v6

    neg-float v1, v1

    aput v1, v0, v6

    .line 138
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->c:[F

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->c:[F

    aget v2, v2, v8

    sub-float/2addr v1, v2

    aput v1, v0, v8

    goto :goto_1

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 309
    return-void
.end method

.method public surfaceCreated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 169
    if-nez p2, :cond_0

    .line 170
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$1;->a:[I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->i:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

    invoke-virtual {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 182
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 183
    const-string p1, "attribute highp vec4    aPosition;\nattribute mediump vec4    aTextureCoord;\nuniform mediump mat4    uMVPMatrix;\nuniform mediump mat4    uSTMatrix;\nvarying mediump vec2    vTextureCoord;\nvarying mediump vec2    vTexCoords00;\nvarying mediump vec2    vTexCoords01;\nvarying mediump vec2    vTexCoords02;\nvarying mediump vec2    vTexCoords10;\nvarying mediump vec2    vTexCoords12;\nvarying mediump vec2    vTexCoords20;\nvarying mediump vec2    vTexCoords21;\nvarying mediump vec2    vTexCoords22;\nvoid main(void)\n{\n\tgl_Position = uMVPMatrix * aPosition;\n\tvTextureCoord = (uSTMatrix * aTextureCoord).xy;\n    float stepsizeX = 1.0/1280.0;\n    float stepsizeY = 1.0/720.0;\n    vTexCoords00 = vTextureCoord + vec2(-stepsizeX, -stepsizeY);\n\tvTexCoords01 = vTextureCoord + vec2(0, -stepsizeY);\n    vTexCoords02 = vTextureCoord + vec2(stepsizeX, -stepsizeY);\n\tvTexCoords10 = vTextureCoord + vec2(-stepsizeX, 0);\n\tvTexCoords12 = vTextureCoord + vec2(stepsizeX, 0);\n    vTexCoords20 = vTextureCoord + vec2(-stepsizeX, stepsizeY);\n\tvTexCoords21 = vTextureCoord + vec2(0, stepsizeY);\n    vTexCoords22 = vTextureCoord + vec2(stepsizeX, stepsizeY);\n}\t\n"

    .line 185
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->d:I

    .line 186
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->d:I

    if-nez v0, :cond_2

    .line 187
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :pswitch_0
    const-string p2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES    uSampler2d;\nuniform lowp float            opacity;\nvarying vec2 vTextureCoord;\nvarying mediump vec2        vTexCoords00;\nvarying mediump vec2        vTexCoords01;\nvarying mediump vec2        vTexCoords02;\nvarying mediump vec2        vTexCoords10;\nvarying mediump vec2        vTexCoords12;\nvarying mediump vec2        vTexCoords20;\nvarying mediump vec2        vTexCoords21;\nvarying mediump vec2        vTexCoords22;\nvoid main (void)\n{\n    lowp vec4 sum = vec4(0.0);\n    lowp vec4 color = texture2D(uSampler2d, vTextureCoord);\n    sum = color + \n    \ttexture2D(uSampler2d, vTexCoords00) +\n        texture2D(uSampler2d, vTexCoords01) + \n        texture2D(uSampler2d, vTexCoords02) +\n        texture2D(uSampler2d, vTexCoords10) +\n        texture2D(uSampler2d, vTexCoords12) +\n        texture2D(uSampler2d, vTexCoords20) +\n        texture2D(uSampler2d, vTexCoords21) +\n        texture2D(uSampler2d, vTexCoords22);\n    gl_FragColor = sum / 9.0;\n}\n"

    goto :goto_0

    .line 178
    :pswitch_1
    const-string/jumbo p2, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float\topacity;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    goto :goto_0

    .line 190
    :cond_2
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->d:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->g:I

    .line 191
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->g:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->checkLocation(ILjava/lang/String;)V

    .line 192
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->d:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->h:I

    .line 193
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->h:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->checkLocation(ILjava/lang/String;)V

    .line 195
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->d:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->e:I

    .line 196
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->e:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->checkLocation(ILjava/lang/String;)V

    .line 197
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->d:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->f:I

    .line 198
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->f:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->checkLocation(ILjava/lang/String;)V

    .line 216
    return-void

    .line 170
    nop

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

    .line 312
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->a:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 313
    invoke-virtual {p0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->changeTriangleVerticesData([F)V

    .line 316
    :cond_0
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->d:I

    if-gez v0, :cond_1

    .line 317
    invoke-virtual {p0, v1, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->surfaceCreated(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_1
    return-void
.end method
