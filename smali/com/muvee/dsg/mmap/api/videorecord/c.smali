.class Lcom/muvee/dsg/mmap/api/videorecord/c;
.super Ljava/lang/Object;
.source "TextureRenderEx.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videorecord/MatrixConstants;
.implements Lcom/muvee/dsg/mmap/api/videorecord/ShaderConstants;


# instance fields
.field private a:Ljava/nio/FloatBuffer;

.field private b:[F

.field private c:[F

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:[F

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v1, 0x10

    const/16 v3, 0xd

    const/4 v2, 0x5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->b:[F

    .line 61
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->c:[F

    .line 83
    sget-object v0, Lcom/muvee/dsg/mmap/api/videorecord/c;->TRIANGLE_VERTICES_DATA_DEFAULT:[F

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videorecord/c;->a([F)V

    .line 85
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->c:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 86
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->c:[F

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->c:[F

    aget v1, v1, v2

    neg-float v1, v1

    aput v1, v0, v2

    .line 87
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->c:[F

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->c:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v3

    .line 88
    return-void

    .line 61
    nop

    :array_0
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

.method public static a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 329
    if-gez p0, :cond_0

    .line 330
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

    .line 332
    :cond_0
    return-void
.end method

.method private b(ILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 270
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 272
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 273
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 274
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 275
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 276
    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 277
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

    .line 278
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

    .line 279
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 282
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 286
    const v1, 0x8b31

    invoke-direct {p0, v1, p1}, Lcom/muvee/dsg/mmap/api/videorecord/c;->b(ILjava/lang/String;)I

    move-result v2

    .line 287
    if-nez v2, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v0

    .line 290
    :cond_1
    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lcom/muvee/dsg/mmap/api/videorecord/c;->b(ILjava/lang/String;)I

    move-result v3

    .line 291
    if-eqz v3, :cond_0

    .line 295
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 296
    if-nez v1, :cond_2

    .line 297
    const-string v4, "com.example.realtimeslowmotexture.STextureRender"

    const-string v5, "Could not create program"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_2
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 301
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 303
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 304
    new-array v2, v6, [I

    .line 305
    const v3, 0x8b82

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 306
    aget v2, v2, v0

    if-eq v2, v6, :cond_3

    .line 307
    const-string v2, "com.example.realtimeslowmotexture.STextureRender"

    const-string v3, "Could not link program: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v2, "com.example.realtimeslowmotexture.STextureRender"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const v3, 0x812f

    const v2, 0x8d65

    .line 208
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->d:I

    .line 209
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->d:I

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->d:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->g:I

    .line 214
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->g:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/c;->a(ILjava/lang/String;)V

    .line 215
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->d:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->h:I

    .line 216
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->h:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/c;->a(ILjava/lang/String;)V

    .line 218
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->d:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->e:I

    .line 219
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->e:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/c;->a(ILjava/lang/String;)V

    .line 220
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->d:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->f:I

    .line 221
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->f:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/c;->a(ILjava/lang/String;)V

    .line 230
    const/16 v0, 0x2801

    const/high16 v1, 0x46180000    # 9728.0f

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 232
    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 234
    const/16 v0, 0x2802

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 236
    const/16 v0, 0x2803

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 239
    return-void
.end method

.method public a(I)V
    .locals 7

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x14

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 170
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 173
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 174
    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 176
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->g:I

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->a:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 180
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 183
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 184
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->h:I

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->a:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 187
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->h:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 190
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->b:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 192
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->e:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->b:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 193
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->f:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->c:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 195
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 196
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 198
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->i:[F

    array-length v1, v1

    div-int/lit8 v1, v1, 0x5

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 201
    const v0, 0x8d65

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 202
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 249
    if-nez p2, :cond_0

    .line 250
    const-string p2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 253
    :cond_0
    if-nez p1, :cond_1

    .line 254
    const-string/jumbo p1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->j:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    :cond_2
    return-void

    .line 262
    :cond_3
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/videorecord/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->d:I

    .line 264
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->d:I

    if-nez v0, :cond_2

    .line 265
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([F)V
    .locals 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->i:[F

    .line 93
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 95
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->a:Ljava/nio/FloatBuffer;

    .line 96
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/c;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    return-void
.end method
