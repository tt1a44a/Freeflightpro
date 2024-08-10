.class Lcom/muvee/dsg/mmap/api/videorecord/b;
.super Ljava/lang/Object;
.source "STextureRender.java"


# instance fields
.field private final a:[F

.field private final b:[F

.field private c:Ljava/nio/FloatBuffer;

.field private d:[F

.field private e:[F

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:[F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x14

    const/16 v1, 0x10

    const/16 v4, 0xd

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-array v0, v5, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->a:[F

    .line 32
    new-array v0, v5, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->b:[F

    .line 61
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->d:[F

    .line 64
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->e:[F

    .line 86
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->a:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 88
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->c:Ljava/nio/FloatBuffer;

    .line 89
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->c:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->a:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->e:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 92
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->e:[F

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->e:[F

    aget v1, v1, v3

    neg-float v1, v1

    aput v1, v0, v3

    .line 93
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->e:[F

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->e:[F

    aget v2, v2, v4

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 94
    return-void

    .line 25
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 32
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f4ccccd    # 0.8f
        0x3e4ccccd    # 0.2f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3e4ccccd    # 0.2f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f4ccccd    # 0.8f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 64
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 259
    const v1, 0x8b31

    invoke-direct {p0, v1, p1}, Lcom/muvee/dsg/mmap/api/videorecord/b;->b(ILjava/lang/String;)I

    move-result v2

    .line 260
    if-nez v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v0

    .line 263
    :cond_1
    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lcom/muvee/dsg/mmap/api/videorecord/b;->b(ILjava/lang/String;)I

    move-result v3

    .line 264
    if-eqz v3, :cond_0

    .line 268
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 269
    if-nez v1, :cond_2

    .line 270
    const-string v4, "com.example.realtimeslowmotexture.STextureRender"

    const-string v5, "Could not create program"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_2
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 274
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 276
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 277
    new-array v2, v6, [I

    .line 278
    const v3, 0x8b82

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 279
    aget v2, v2, v0

    if-eq v2, v6, :cond_3

    .line 280
    const-string v2, "com.example.realtimeslowmotexture.STextureRender"

    const-string v3, "Could not link program: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v2, "com.example.realtimeslowmotexture.STextureRender"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;)V
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

.method private b(ILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 243
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 245
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 246
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 247
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 248
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 249
    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 250
    const-string v2, "com.example.realtimeslowmotexture.STextureRender"

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

    .line 251
    const-string v2, "com.example.realtimeslowmotexture.STextureRender"

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

    .line 252
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 255
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const v3, 0x812f

    const v2, 0x8d65

    .line 195
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->f:I

    .line 196
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->f:I

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->f:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->i:I

    .line 201
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->i:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/b;->a(ILjava/lang/String;)V

    .line 202
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->f:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->j:I

    .line 203
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->j:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/b;->a(ILjava/lang/String;)V

    .line 205
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->f:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->g:I

    .line 206
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->g:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/b;->a(ILjava/lang/String;)V

    .line 207
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->f:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->h:I

    .line 208
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->h:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/b;->a(ILjava/lang/String;)V

    .line 217
    const/16 v0, 0x2801

    const/high16 v1, 0x46180000    # 9728.0f

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 219
    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 221
    const/16 v0, 0x2802

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 223
    const/16 v0, 0x2803

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 226
    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;ZIZLandroid/graphics/RectF;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v1, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 115
    if-eqz p4, :cond_2

    .line 119
    if-eqz p5, :cond_1

    .line 120
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->b:[F

    iget v2, p5, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    .line 121
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->b:[F

    iget v2, p5, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v5, v2

    aput v2, v0, v7

    .line 123
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->b:[F

    const/16 v2, 0x8

    iget v4, p5, Landroid/graphics/RectF;->right:F

    aput v4, v0, v2

    .line 124
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->b:[F

    const/16 v2, 0x9

    iget v4, p5, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v5, v4

    aput v4, v0, v2

    .line 126
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->b:[F

    const/16 v2, 0xd

    iget v4, p5, Landroid/graphics/RectF;->left:F

    aput v4, v0, v2

    .line 127
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->b:[F

    const/16 v2, 0xe

    iget v4, p5, Landroid/graphics/RectF;->top:F

    sub-float v4, v5, v4

    aput v4, v0, v2

    .line 129
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->b:[F

    const/16 v2, 0x12

    iget v4, p5, Landroid/graphics/RectF;->right:F

    aput v4, v0, v2

    .line 130
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->b:[F

    const/16 v2, 0x13

    iget v4, p5, Landroid/graphics/RectF;->top:F

    sub-float v4, v5, v4

    aput v4, v0, v2

    .line 133
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->c:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->b:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 135
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->b:[F

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->k:[F

    .line 161
    :cond_0
    :goto_0
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 164
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 165
    const v0, 0x8d65

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 167
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 168
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->i:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->c:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 171
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->i:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 174
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 175
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->j:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->c:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 178
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->j:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 181
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->d:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 182
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->g:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->d:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 183
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->h:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->e:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 185
    const/4 v0, 0x5

    invoke-static {v0, v3, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 188
    const v0, 0x8d65

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 189
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->k:[F

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->a:[F

    if-eq v0, v2, :cond_0

    .line 139
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->c:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->a:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 141
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->a:[F

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->k:[F

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->k:[F

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->a:[F

    if-eq v0, v2, :cond_0

    .line 149
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 150
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->c:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/b;->a:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    goto/16 :goto_0
.end method
