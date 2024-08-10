.class public Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;
.super Ljava/lang/Object;
.source "ExternalTextureRender.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoframegenerator/ShaderConstants;
.implements Lcom/muvee/dsg/mmap/api/videoframegenerator/VerticesDataConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender$DrawFrameHandler;
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


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v1, 0x10

    const/16 v3, 0xd

    const/4 v2, 0x5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->b:[F

    .line 30
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->c:[F

    .line 47
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->c:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 49
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->c:[F

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->c:[F

    aget v1, v1, v2

    neg-float v1, v1

    aput v1, v0, v2

    .line 50
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->c:[F

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->c:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v3

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->d:I

    .line 53
    return-void
.end method

.method private a(ILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glCreateShader type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 197
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 198
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 199
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 200
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 201
    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 202
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

    .line 203
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

    .line 204
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 207
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

    .line 211
    const v1, 0x8b31

    invoke-direct {p0, v1, p1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->a(ILjava/lang/String;)I

    move-result v2

    .line 212
    if-nez v2, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->a(ILjava/lang/String;)I

    move-result v3

    .line 216
    if-eqz v3, :cond_0

    .line 220
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 221
    if-nez v1, :cond_2

    .line 222
    const-string v4, "com.muvee.dsg.videoframegenerator.STextureRender"

    const-string v5, "Could not create program"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_2
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 225
    const-string v2, "glAttachShader"

    invoke-virtual {p0, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 226
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 227
    const-string v2, "glAttachShader"

    invoke-virtual {p0, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 228
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 229
    new-array v2, v6, [I

    .line 230
    const v3, 0x8b82

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 231
    aget v2, v2, v0

    if-eq v2, v6, :cond_3

    .line 232
    const-string v2, "com.muvee.dsg.videoframegenerator.STextureRender"

    const-string v3, "Could not link program: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v2, "com.muvee.dsg.videoframegenerator.STextureRender"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static checkLocation(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 249
    if-gez p0, :cond_0

    .line 250
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

    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method public changeFragmentShader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 181
    if-nez p2, :cond_0

    .line 182
    const-string p2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 184
    :cond_0
    if-nez p1, :cond_1

    .line 185
    const-string/jumbo p1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 187
    :cond_1
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->d:I

    .line 189
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->d:I

    if-nez v0, :cond_2

    .line 190
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_2
    return-void
.end method

.method public changeTriangleVerticesData([F)V
    .locals 2

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    sget-object p1, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->TRIANGLE_VERTICES_DATA:[F

    .line 61
    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 63
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->a:Ljava/nio/FloatBuffer;

    .line 64
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    return-void
.end method

.method public checkGlError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 242
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 243
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

    .line 244
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

    .line 246
    :cond_0
    return-void
.end method

.method public drawFrame(Landroid/graphics/SurfaceTexture;ILcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender$DrawFrameHandler;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 78
    const-string/jumbo v0, "onDrawFrame start"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 85
    invoke-static {v1, v6, v1, v6}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 86
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 88
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 89
    const-string v0, "glUseProgram"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 91
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 92
    const v0, 0x8d65

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 94
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->g:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->a:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 97
    const-string v0, "glVertexAttribPointer maPosition"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 98
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 99
    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->a:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->h:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->a:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 104
    const-string v0, "glVertexAttribPointer maTextureHandle"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->h:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 106
    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 108
    if-eqz p3, :cond_0

    .line 115
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->b:[F

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->c:[F

    invoke-interface {p3, v0, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender$DrawFrameHandler;->onBeforeSetVPMatrix([F[F)V

    .line 125
    :goto_0
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->e:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->b:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 126
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->f:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->c:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 128
    const/4 v0, 0x4

    invoke-static {v7, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 129
    const-string v0, "glDrawArrays"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->checkGlError(Ljava/lang/String;)V

    .line 131
    const v0, 0x8d65

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 132
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->b:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 118
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->c:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 121
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->c:[F

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->c:[F

    aget v1, v1, v7

    neg-float v1, v1

    aput v1, v0, v7

    .line 122
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->c:[F

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->c:[F

    const/16 v4, 0xd

    aget v2, v2, v4

    sub-float v2, v6, v2

    aput v2, v0, v1

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 256
    return-void
.end method

.method public surfaceCreated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 138
    if-nez p2, :cond_0

    .line 139
    const-string p2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 141
    :cond_0
    if-nez p1, :cond_1

    .line 142
    const-string/jumbo p1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 144
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->d:I

    .line 145
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->d:I

    if-nez v0, :cond_2

    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_2
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->d:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->g:I

    .line 150
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->g:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->checkLocation(ILjava/lang/String;)V

    .line 151
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->d:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->h:I

    .line 152
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->h:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->checkLocation(ILjava/lang/String;)V

    .line 154
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->d:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->e:I

    .line 155
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->e:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->checkLocation(ILjava/lang/String;)V

    .line 156
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->d:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->f:I

    .line 157
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->f:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->checkLocation(ILjava/lang/String;)V

    .line 175
    return-void
.end method

.method public validate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->a:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->changeTriangleVerticesData([F)V

    .line 263
    :cond_0
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->d:I

    if-gez v0, :cond_1

    .line 264
    invoke-virtual {p0, v1, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender;->surfaceCreated(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_1
    return-void
.end method
