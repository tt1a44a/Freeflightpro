.class Lcom/muvee/dsg/mmap/api/videorecord/e;
.super Ljava/lang/Object;
.source "TextureRenderNormalFliped.java"


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

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-array v0, v5, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->a:[F

    .line 32
    new-array v0, v5, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->b:[F

    .line 70
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->d:[F

    .line 73
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->e:[F

    .line 95
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->a:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->c:Ljava/nio/FloatBuffer;

    .line 98
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->c:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->a:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 100
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->e:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 101
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->e:[F

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->e:[F

    aget v1, v1, v3

    neg-float v1, v1

    aput v1, v0, v3

    .line 102
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->e:[F

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->e:[F

    aget v2, v2, v4

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 103
    return-void

    .line 25
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
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

    .line 73
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

    .line 308
    const v1, 0x8b31

    invoke-direct {p0, v1, p1}, Lcom/muvee/dsg/mmap/api/videorecord/e;->b(ILjava/lang/String;)I

    move-result v2

    .line 309
    if-nez v2, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v0

    .line 312
    :cond_1
    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lcom/muvee/dsg/mmap/api/videorecord/e;->b(ILjava/lang/String;)I

    move-result v3

    .line 313
    if-eqz v3, :cond_0

    .line 317
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 318
    if-nez v1, :cond_2

    .line 319
    const-string v4, "com.example.realtimeslowmotexture.STextureRender"

    const-string v5, "Could not create program"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_2
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 323
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 325
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 326
    new-array v2, v6, [I

    .line 327
    const v3, 0x8b82

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 328
    aget v2, v2, v0

    if-eq v2, v6, :cond_3

    .line 329
    const-string v2, "com.example.realtimeslowmotexture.STextureRender"

    const-string v3, "Could not link program: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v2, "com.example.realtimeslowmotexture.STextureRender"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 351
    if-gez p0, :cond_0

    .line 352
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

    .line 354
    :cond_0
    return-void
.end method

.method private b(ILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 292
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 294
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 295
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 296
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 297
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 298
    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 299
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

    .line 300
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

    .line 301
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 304
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 242
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string/jumbo v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->f:I

    .line 243
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->f:I

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->f:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->i:I

    .line 248
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->i:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/e;->a(ILjava/lang/String;)V

    .line 249
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->f:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->j:I

    .line 250
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->j:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/e;->a(ILjava/lang/String;)V

    .line 252
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->f:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->g:I

    .line 253
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->g:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/e;->a(ILjava/lang/String;)V

    .line 254
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->f:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->h:I

    .line 255
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->h:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/e;->a(ILjava/lang/String;)V

    .line 275
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

    .line 124
    if-eqz p4, :cond_2

    .line 128
    if-eqz p5, :cond_1

    .line 129
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->b:[F

    iget v2, p5, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    .line 130
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->b:[F

    iget v2, p5, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v5, v2

    aput v2, v0, v7

    .line 132
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->b:[F

    const/16 v2, 0x8

    iget v4, p5, Landroid/graphics/RectF;->right:F

    aput v4, v0, v2

    .line 133
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->b:[F

    const/16 v2, 0x9

    iget v4, p5, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v5, v4

    aput v4, v0, v2

    .line 135
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->b:[F

    const/16 v2, 0xd

    iget v4, p5, Landroid/graphics/RectF;->left:F

    aput v4, v0, v2

    .line 136
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->b:[F

    const/16 v2, 0xe

    iget v4, p5, Landroid/graphics/RectF;->top:F

    sub-float v4, v5, v4

    aput v4, v0, v2

    .line 138
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->b:[F

    const/16 v2, 0x12

    iget v4, p5, Landroid/graphics/RectF;->right:F

    aput v4, v0, v2

    .line 139
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->b:[F

    const/16 v2, 0x13

    iget v4, p5, Landroid/graphics/RectF;->top:F

    sub-float v4, v5, v4

    aput v4, v0, v2

    .line 142
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->c:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->b:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 144
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->b:[F

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->k:[F

    .line 170
    :cond_0
    :goto_0
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 173
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 175
    const/16 v0, 0xde1

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 177
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 178
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->i:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->c:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 181
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->i:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 184
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 185
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->j:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->c:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 188
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->j:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 191
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->d:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 192
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->g:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->d:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 193
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->h:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->e:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 195
    const/4 v0, 0x5

    invoke-static {v0, v3, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 199
    const/16 v0, 0xde1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 200
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->k:[F

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->a:[F

    if-eq v0, v2, :cond_0

    .line 148
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 149
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->c:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->a:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 150
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->a:[F

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->k:[F

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->k:[F

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->a:[F

    if-eq v0, v2, :cond_0

    .line 158
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->c:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/e;->a:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    goto/16 :goto_0
.end method
