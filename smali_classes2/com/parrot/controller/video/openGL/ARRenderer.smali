.class public Lcom/parrot/controller/video/openGL/ARRenderer;
.super Ljava/lang/Object;
.source "ARRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;,
        Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;,
        Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;,
        Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;
    }
.end annotation


# static fields
.field public static final DEFAULT_VIDEO_HEIGHT:I = 0x170

.field public static final DEFAULT_VIDEO_WIDTH:I = 0x280

.field private static GLRENDERER_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ARRenderer"

.field private static final vertexShaderString:Ljava/lang/String; = "attribute vec4 position;\nattribute vec2 texcoord;\nuniform mat4 modelViewProjectionMatrix;\nvarying vec2 v_texcoord;\n\nvoid main()\n{\n    gl_Position = modelViewProjectionMatrix * position;\n    v_texcoord = texcoord.xy;\n}\n"


# instance fields
.field protected backingHeight:I

.field protected backingWidth:I

.field private flipHorizontal:Z

.field private flipVertival:Z

.field protected glTexture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

.field protected hasNewTexture:Z

.field private height:I

.field protected isInitialized:Z

.field private final modelviewProj:[F

.field private nativeTexCoords:Ljava/nio/FloatBuffer;

.field private nativeVertices:Ljava/nio/FloatBuffer;

.field protected program:I

.field private scaleMode:Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

.field protected final shaderRenderer:Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;

.field private texCoords:[F

.field private texCoordsLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected uniformMatrix:I

.field private verticesLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parrot/controller/video/openGL/ARRenderer;->GLRENDERER_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;)V
    .locals 8
    .param p1, "shaderRenderer"    # Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->modelviewProj:[F

    .line 67
    iput-object p1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->shaderRenderer:Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;

    .line 68
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoordsLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 69
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->verticesLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->hasNewTexture:Z

    .line 73
    const/16 v0, 0x280

    iput v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->width:I

    .line 74
    const/16 v0, 0x170

    iput v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->height:I

    .line 77
    invoke-direct {p0}, Lcom/parrot/controller/video/openGL/ARRenderer;->initTexCoods()V

    .line 79
    invoke-direct {p0}, Lcom/parrot/controller/video/openGL/ARRenderer;->initVertices()V

    .line 80
    iget-object v7, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->modelviewProj:[F

    move-object v0, p0

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/parrot/controller/video/openGL/ARRenderer;->mat4fLoadOrtho(FFFFFF[F)V

    .line 81
    return-void
.end method

.method private static compileShader(ILjava/lang/String;)I
    .locals 10
    .param p0, "type"    # I
    .param p1, "shaderString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "error":Z
    new-array v4, v9, [I

    .line 256
    .local v4, "status":[I
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v3

    .line 257
    .local v3, "shader":I
    if-eqz v3, :cond_0

    const/16 v5, 0x500

    if-ne v3, v5, :cond_1

    .line 259
    :cond_0
    const-string v5, "ARRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create shader "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x1

    .line 263
    :cond_1
    if-nez v0, :cond_3

    .line 265
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 266
    invoke-static {v3}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 268
    sget-boolean v5, Lcom/parrot/controller/video/openGL/ARRenderer;->GLRENDERER_DEBUG:Z

    if-eqz v5, :cond_2

    .line 270
    new-array v2, v9, [I

    .line 271
    .local v2, "logLength":[I
    const v5, 0x8b84

    invoke-static {v3, v5, v2, v8}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 272
    aget v5, v2, v8

    if-lez v5, :cond_2

    .line 274
    invoke-static {v3}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "log":Ljava/lang/String;
    const-string v5, "ARRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shader compile log: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .end local v1    # "log":Ljava/lang/String;
    .end local v2    # "logLength":[I
    :cond_2
    const v5, 0x8b81

    invoke-static {v3, v5, v4, v8}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 280
    aget v5, v4, v8

    if-nez v5, :cond_3

    .line 282
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 283
    const-string v5, "ARRenderer"

    const-string v6, "Failed to compile shader: "

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x1

    .line 289
    :cond_3
    if-ne v0, v9, :cond_4

    .line 291
    const/4 v3, 0x0

    .line 294
    :cond_4
    return v3
.end method

.method private initTexCoods()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoords:[F

    .line 174
    const/16 v1, 0x100

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 175
    .local v0, "texCoordsByteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 176
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeTexCoords:Ljava/nio/FloatBuffer;

    .line 178
    iput-boolean v2, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->flipHorizontal:Z

    .line 179
    iput-boolean v2, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->flipVertival:Z

    .line 181
    invoke-virtual {p0}, Lcom/parrot/controller/video/openGL/ARRenderer;->updateTexCoods()V

    .line 182
    return-void

    .line 167
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initVertices()V
    .locals 2

    .prologue
    .line 94
    sget-object v1, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;->SCALE_MODE_CENTER:Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    iput-object v1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->scaleMode:Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    .line 96
    const/16 v1, 0x100

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    .local v0, "verticesByteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeVertices:Ljava/nio/FloatBuffer;

    .line 100
    invoke-virtual {p0}, Lcom/parrot/controller/video/openGL/ARRenderer;->updateVertices()V

    .line 101
    return-void
.end method

.method private mat4fLoadOrtho(FFFFFF[F)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F
    .param p7, "mout"    # [F

    .prologue
    .line 299
    sub-float v1, p2, p1

    .line 300
    .local v1, "r_l":F
    sub-float v2, p4, p3

    .line 301
    .local v2, "t_b":F
    sub-float v0, p6, p5

    .line 302
    .local v0, "f_n":F
    add-float v6, p2, p1

    div-float v3, v6, v1

    .line 303
    .local v3, "tx":F
    add-float v6, p4, p3

    div-float v4, v6, v2

    .line 304
    .local v4, "ty":F
    add-float v6, p6, p5

    div-float v5, v6, v0

    .line 306
    .local v5, "tz":F
    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v7, v1

    aput v7, p7, v6

    .line 307
    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, p7, v6

    .line 308
    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, p7, v6

    .line 309
    const/4 v6, 0x3

    const/4 v7, 0x0

    aput v7, p7, v6

    .line 311
    const/4 v6, 0x4

    const/4 v7, 0x0

    aput v7, p7, v6

    .line 312
    const/4 v6, 0x5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v7, v2

    aput v7, p7, v6

    .line 313
    const/4 v6, 0x6

    const/4 v7, 0x0

    aput v7, p7, v6

    .line 314
    const/4 v6, 0x7

    const/4 v7, 0x0

    aput v7, p7, v6

    .line 316
    const/16 v6, 0x8

    const/4 v7, 0x0

    aput v7, p7, v6

    .line 317
    const/16 v6, 0x9

    const/4 v7, 0x0

    aput v7, p7, v6

    .line 318
    const/16 v6, 0xa

    const/high16 v7, -0x40000000    # -2.0f

    div-float/2addr v7, v0

    aput v7, p7, v6

    .line 319
    const/16 v6, 0xb

    const/4 v7, 0x0

    aput v7, p7, v6

    .line 321
    const/16 v6, 0xc

    aput v3, p7, v6

    .line 322
    const/16 v6, 0xd

    aput v4, p7, v6

    .line 323
    const/16 v6, 0xe

    aput v5, p7, v6

    .line 324
    const/16 v6, 0xf

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, p7, v6

    .line 325
    return-void
.end method

.method private static validateProgram(I)Z
    .locals 8
    .param p0, "prog"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 225
    const/4 v2, 0x1

    .line 226
    .local v2, "ret":Z
    new-array v3, v5, [I

    .line 228
    .local v3, "status":[I
    invoke-static {p0}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    .line 230
    sget-boolean v4, Lcom/parrot/controller/video/openGL/ARRenderer;->GLRENDERER_DEBUG:Z

    if-eqz v4, :cond_0

    .line 232
    new-array v1, v5, [I

    .line 233
    .local v1, "logLength":[I
    const v4, 0x8b84

    invoke-static {p0, v4, v1, v7}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 234
    aget v4, v1, v7

    if-lez v4, :cond_0

    .line 236
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "log":Ljava/lang/String;
    const-string v4, "ARRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Program validate log: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v0    # "log":Ljava/lang/String;
    .end local v1    # "logLength":[I
    :cond_0
    const v4, 0x8b83

    invoke-static {p0, v4, v3, v7}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 242
    aget v4, v3, v7

    if-nez v4, :cond_1

    .line 244
    const-string v4, "ARRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to validate program "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v2, 0x0

    .line 248
    :cond_1
    return v2
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 85
    iget v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->program:I

    if-eqz v0, :cond_0

    .line 87
    iget v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->program:I

    .line 90
    :cond_0
    return-void
.end method

.method public flipHorizontal()V
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->flipHorizontal:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->flipHorizontal:Z

    .line 479
    invoke-virtual {p0}, Lcom/parrot/controller/video/openGL/ARRenderer;->updateTexCoods()V

    .line 480
    return-void

    .line 478
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flipVertival()V
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->flipVertival:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->flipVertival:Z

    .line 485
    invoke-virtual {p0}, Lcom/parrot/controller/video/openGL/ARRenderer;->updateTexCoods()V

    .line 486
    return-void

    .line 484
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTexCoords()[F
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoords:[F

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->isInitialized:Z

    return v0
.end method

.method protected loadShaders()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "exit":Z
    const/4 v2, 0x0

    .line 332
    .local v2, "result":Z
    const/4 v4, 0x0

    .line 333
    .local v4, "vertShader":I
    const/4 v1, 0x0

    .line 335
    .local v1, "fragShader":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v5

    iput v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->program:I

    .line 337
    const v5, 0x8b31

    const-string v6, "attribute vec4 position;\nattribute vec2 texcoord;\nuniform mat4 modelViewProjectionMatrix;\nvarying vec2 v_texcoord;\n\nvoid main()\n{\n    gl_Position = modelViewProjectionMatrix * position;\n    v_texcoord = texcoord.xy;\n}\n"

    invoke-static {v5, v6}, Lcom/parrot/controller/video/openGL/ARRenderer;->compileShader(ILjava/lang/String;)I

    move-result v4

    .line 338
    if-nez v4, :cond_0

    .line 340
    const-string v5, "ARRenderer"

    const-string v6, "Failed to compile vertShader"

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x1

    .line 344
    :cond_0
    if-nez v0, :cond_1

    iget-object v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->shaderRenderer:Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;

    if-eqz v5, :cond_1

    .line 346
    const v5, 0x8b30

    iget-object v6, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->shaderRenderer:Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;

    invoke-interface {v6}, Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;->fragmentShader()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/parrot/controller/video/openGL/ARRenderer;->compileShader(ILjava/lang/String;)I

    move-result v1

    .line 347
    if-nez v1, :cond_1

    .line 349
    const-string v5, "ARRenderer"

    const-string v6, "Failed to compile fragShader"

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 v0, 0x1

    .line 354
    :cond_1
    if-nez v0, :cond_2

    .line 356
    iget v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->program:I

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 357
    iget v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->program:I

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 358
    iget v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->program:I

    sget-object v6, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->GLRENDERER_ATTRIBUTE_VERTEX:Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

    invoke-virtual {v6}, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->getValue()I

    move-result v6

    const-string v7, "position"

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 359
    iget v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->program:I

    sget-object v6, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->GLRENDERER_ATTRIBUTE_TEXCOORD:Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

    invoke-virtual {v6}, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->getValue()I

    move-result v6

    const-string v7, "texcoord"

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 361
    iget v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->program:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 363
    const/4 v5, 0x1

    new-array v3, v5, [I

    .line 364
    .local v3, "status":[I
    iget v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->program:I

    const v6, 0x8b82

    invoke-static {v5, v6, v3, v8}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 365
    aget v5, v3, v8

    if-nez v5, :cond_2

    .line 367
    const-string v5, "ARRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to link program "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->program:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x1

    .line 372
    .end local v3    # "status":[I
    :cond_2
    if-nez v0, :cond_3

    iget-object v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->shaderRenderer:Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;

    if-eqz v5, :cond_3

    .line 374
    iget v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->program:I

    invoke-static {v5}, Lcom/parrot/controller/video/openGL/ARRenderer;->validateProgram(I)Z

    move-result v2

    .line 376
    iget v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->program:I

    const-string v6, "modelViewProjectionMatrix"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->uniformMatrix:I

    .line 377
    iget-object v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->shaderRenderer:Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;

    iget v6, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->program:I

    invoke-interface {v5, v6}, Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;->resolveUniforms(I)V

    .line 382
    :cond_3
    if-eqz v4, :cond_4

    .line 384
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 387
    :cond_4
    if-eqz v1, :cond_5

    .line 389
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 392
    :cond_5
    if-eqz v2, :cond_6

    .line 394
    const-string v5, "ARRenderer"

    const-string v6, "OK setup GL programm"

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :goto_0
    return v2

    .line 398
    :cond_6
    const-string v5, "ARRenderer"

    const-string v6, "shader loading error"

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->program:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 401
    iput v8, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->program:I

    goto :goto_0
.end method

.method protected render()V
    .locals 6

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 203
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->shaderRenderer:Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->shaderRenderer:Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;

    invoke-interface {v0}, Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;->prepareRender()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoordsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 206
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->verticesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 208
    iget v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->uniformMatrix:I

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->modelviewProj:[F

    invoke-static {v0, v4, v3, v5, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 210
    sget-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->GLRENDERER_ATTRIBUTE_VERTEX:Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

    invoke-virtual {v0}, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->getValue()I

    move-result v0

    iget-object v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeVertices:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 211
    sget-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->GLRENDERER_ATTRIBUTE_VERTEX:Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

    invoke-virtual {v0}, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->getValue()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 213
    sget-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->GLRENDERER_ATTRIBUTE_TEXCOORD:Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

    invoke-virtual {v0}, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->getValue()I

    move-result v0

    iget-object v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeTexCoords:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 214
    sget-object v0, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->GLRENDERER_ATTRIBUTE_TEXCOORD:Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;

    invoke-virtual {v0}, Lcom/parrot/controller/video/openGL/ARRenderer$GLRENDERER_ATTRIBUTE_ENUM;->getValue()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 216
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 218
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->verticesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 219
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoordsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 221
    :cond_0
    return-void
.end method

.method public setFlipHorizontal(Z)V
    .locals 0
    .param p1, "flipHorizontal"    # Z

    .prologue
    .line 466
    iput-boolean p1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->flipHorizontal:Z

    .line 467
    invoke-virtual {p0}, Lcom/parrot/controller/video/openGL/ARRenderer;->updateTexCoods()V

    .line 468
    return-void
.end method

.method public setFlipVertival(Z)V
    .locals 0
    .param p1, "flipVertival"    # Z

    .prologue
    .line 472
    iput-boolean p1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->flipVertival:Z

    .line 473
    invoke-virtual {p0}, Lcom/parrot/controller/video/openGL/ARRenderer;->updateTexCoods()V

    .line 474
    return-void
.end method

.method public setGLTexture(Lcom/parrot/controller/video/openGL/AROpenGLTexture;)Z
    .locals 3
    .param p1, "glTexture"    # Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    .prologue
    const/4 v2, 0x1

    .line 438
    const/4 v0, 0x0

    .line 440
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->isInitialized:Z

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getComponentArray()[Lcom/parrot/arsdk/lynx/ARCodecsComponent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 442
    iget-boolean v1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->hasNewTexture:Z

    if-nez v1, :cond_1

    .line 444
    iput-object p1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->glTexture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    .line 446
    iput-boolean v2, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->hasNewTexture:Z

    .line 448
    const/4 v0, 0x1

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 452
    :cond_1
    const/4 v0, 0x0

    .line 453
    const-string v1, "ARRenderer"

    const-string v2, "NewTexture: skiped"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setTexCoords([F)V
    .locals 0
    .param p1, "texCoords"    # [F

    .prologue
    .line 414
    iput-object p1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoords:[F

    .line 416
    invoke-virtual {p0}, Lcom/parrot/controller/video/openGL/ARRenderer;->updateTexCoods()V

    .line 417
    return-void
.end method

.method public setTextureScaleMode(Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;)V
    .locals 0
    .param p1, "scaleMode"    # Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->scaleMode:Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    .line 491
    invoke-virtual {p0}, Lcom/parrot/controller/video/openGL/ARRenderer;->updateVertices()V

    .line 492
    return-void
.end method

.method protected updateImageSize()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->glTexture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    if-eqz v0, :cond_1

    .line 426
    iget v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->height:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->glTexture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-virtual {v1}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getImageSize()Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->getHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->width:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->glTexture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-virtual {v1}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getImageSize()Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->getWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->glTexture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-virtual {v0}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getImageSize()Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->getHeight()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->height:I

    .line 429
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->glTexture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-virtual {v0}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getImageSize()Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->getWidth()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->width:I

    .line 431
    invoke-virtual {p0}, Lcom/parrot/controller/video/openGL/ARRenderer;->updateVertices()V

    .line 434
    :cond_1
    return-void
.end method

.method protected updateTexCoods()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 186
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoordsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 188
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeTexCoords:Ljava/nio/FloatBuffer;

    iget-boolean v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->flipHorizontal:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoords:[F

    sget-object v2, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_X1:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    invoke-virtual {v2}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->getValue()I

    move-result v2

    aget v0, v0, v2

    :goto_0
    invoke-virtual {v1, v4, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 189
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeTexCoords:Ljava/nio/FloatBuffer;

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->flipVertival:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoords:[F

    sget-object v3, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_Y2:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    invoke-virtual {v3}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->getValue()I

    move-result v3

    aget v0, v0, v3

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 190
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeTexCoords:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    iget-boolean v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->flipHorizontal:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoords:[F

    sget-object v3, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_X0:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    invoke-virtual {v3}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->getValue()I

    move-result v3

    aget v0, v0, v3

    :goto_2
    invoke-virtual {v1, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 191
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeTexCoords:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    iget-boolean v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->flipVertival:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoords:[F

    sget-object v3, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_Y3:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    invoke-virtual {v3}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->getValue()I

    move-result v3

    aget v0, v0, v3

    :goto_3
    invoke-virtual {v1, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 192
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeTexCoords:Ljava/nio/FloatBuffer;

    const/4 v2, 0x4

    iget-boolean v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->flipHorizontal:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoords:[F

    sget-object v3, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_X3:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    invoke-virtual {v3}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->getValue()I

    move-result v3

    aget v0, v0, v3

    :goto_4
    invoke-virtual {v1, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 193
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeTexCoords:Ljava/nio/FloatBuffer;

    const/4 v2, 0x5

    iget-boolean v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->flipVertival:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoords:[F

    sget-object v3, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_Y1:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    invoke-virtual {v3}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->getValue()I

    move-result v3

    aget v0, v0, v3

    :goto_5
    invoke-virtual {v1, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 194
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeTexCoords:Ljava/nio/FloatBuffer;

    const/4 v2, 0x6

    iget-boolean v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->flipHorizontal:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoords:[F

    sget-object v3, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_X2:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    invoke-virtual {v3}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->getValue()I

    move-result v3

    aget v0, v0, v3

    :goto_6
    invoke-virtual {v1, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 195
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeTexCoords:Ljava/nio/FloatBuffer;

    const/4 v2, 0x7

    iget-boolean v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->flipVertival:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoords:[F

    sget-object v3, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_Y1:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    invoke-virtual {v3}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->getValue()I

    move-result v3

    aget v0, v0, v3

    :goto_7
    invoke-virtual {v1, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 196
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 198
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoordsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 199
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoords:[F

    sget-object v2, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_X0:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    invoke-virtual {v2}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->getValue()I

    move-result v2

    aget v0, v0, v2

    goto/16 :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoords:[F

    sget-object v3, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_Y0:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    invoke-virtual {v3}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->getValue()I

    move-result v3

    aget v0, v0, v3

    goto/16 :goto_1

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoords:[F

    sget-object v3, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_X1:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    invoke-virtual {v3}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->getValue()I

    move-result v3

    aget v0, v0, v3

    goto/16 :goto_2

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoords:[F

    sget-object v3, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_Y1:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    invoke-virtual {v3}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->getValue()I

    move-result v3

    aget v0, v0, v3

    goto/16 :goto_3

    .line 192
    :cond_4
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoords:[F

    sget-object v3, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_X2:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    invoke-virtual {v3}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->getValue()I

    move-result v3

    aget v0, v0, v3

    goto/16 :goto_4

    .line 193
    :cond_5
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoords:[F

    sget-object v3, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_Y2:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    invoke-virtual {v3}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->getValue()I

    move-result v3

    aget v0, v0, v3

    goto :goto_5

    .line 194
    :cond_6
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoords:[F

    sget-object v3, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_X3:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    invoke-virtual {v3}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->getValue()I

    move-result v3

    aget v0, v0, v3

    goto :goto_6

    .line 195
    :cond_7
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->texCoords:[F

    sget-object v3, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->TEXCOORDS_INDEX_Y3:Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;

    invoke-virtual {v3}, Lcom/parrot/controller/video/openGL/ARRenderer$TEXCOORDS_INDEX_ENUM;->getValue()I

    move-result v3

    aget v0, v0, v3

    goto :goto_7
.end method

.method protected updateVertices()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 105
    iget-object v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->verticesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 107
    iget v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->backingHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->height:I

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 108
    .local v0, "dH":F
    iget v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->backingWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->width:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 109
    .local v1, "dW":F
    const/4 v3, 0x0

    .line 110
    .local v3, "h":F
    const/4 v4, 0x0

    .line 111
    .local v4, "w":F
    const/4 v2, 0x0

    .line 113
    .local v2, "dd":F
    sget-object v5, Lcom/parrot/controller/video/openGL/ARRenderer$1;->$SwitchMap$com$parrot$controller$video$openGL$ARRenderer$SCALE_MODE_ENUM:[I

    iget-object v6, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->scaleMode:Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    invoke-virtual {v6}, Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 148
    const-string v5, "ARRenderer"

    const-string v6, "error scale mode not known"

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    iget-object v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeVertices:Ljava/nio/FloatBuffer;

    neg-float v6, v4

    invoke-virtual {v5, v8, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 153
    iget-object v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeVertices:Ljava/nio/FloatBuffer;

    const/4 v6, 0x1

    neg-float v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 154
    iget-object v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeVertices:Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 155
    iget-object v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeVertices:Ljava/nio/FloatBuffer;

    const/4 v6, 0x3

    neg-float v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 156
    iget-object v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeVertices:Ljava/nio/FloatBuffer;

    const/4 v6, 0x4

    neg-float v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 157
    iget-object v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeVertices:Ljava/nio/FloatBuffer;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 158
    iget-object v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeVertices:Ljava/nio/FloatBuffer;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 159
    iget-object v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeVertices:Ljava/nio/FloatBuffer;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 160
    iget-object v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->nativeVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 162
    iget-object v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->verticesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 163
    return-void

    .line 119
    :pswitch_0
    cmpg-float v5, v0, v1

    if-gez v5, :cond_0

    move v2, v0

    .line 121
    :goto_1
    iget v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    iget v6, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->backingHeight:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 122
    iget v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    iget v6, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->backingWidth:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 123
    goto :goto_0

    :cond_0
    move v2, v1

    .line 119
    goto :goto_1

    .line 129
    :pswitch_1
    cmpl-float v5, v0, v1

    if-lez v5, :cond_1

    move v2, v0

    .line 131
    :goto_2
    iget v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    iget v6, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->backingHeight:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 132
    iget v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    iget v6, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->backingWidth:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 133
    goto :goto_0

    :cond_1
    move v2, v1

    .line 129
    goto :goto_2

    .line 137
    :pswitch_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 138
    const/high16 v4, 0x3f800000    # 1.0f

    .line 139
    goto :goto_0

    .line 143
    :pswitch_3
    iget v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->height:I

    int-to-float v5, v5

    iget v6, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->backingHeight:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 144
    iget v5, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->width:I

    int-to-float v5, v5

    iget v6, p0, Lcom/parrot/controller/video/openGL/ARRenderer;->backingWidth:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 145
    goto/16 :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
