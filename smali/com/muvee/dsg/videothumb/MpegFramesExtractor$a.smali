.class Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;
.super Ljava/lang/Object;
.source "MpegFramesExtractor.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/videothumb/MpegFramesExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field private e:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;

.field private f:Landroid/graphics/SurfaceTexture;

.field private g:Landroid/view/Surface;

.field private h:Landroid/opengl/EGLDisplay;

.field private i:Landroid/opengl/EGLContext;

.field private j:Landroid/opengl/EGLSurface;

.field private k:Ljava/lang/Object;

.field private l:Z

.field private m:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->h:Landroid/opengl/EGLDisplay;

    .line 262
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->i:Landroid/opengl/EGLContext;

    .line 263
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->j:Landroid/opengl/EGLSurface;

    .line 271
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->k:Ljava/lang/Object;

    .line 282
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 285
    :cond_1
    iput p1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->a:I

    .line 286
    iput p2, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->b:I

    .line 288
    iput p3, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->c:I

    .line 289
    iput p4, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->d:I

    .line 291
    invoke-direct {p0}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->f()V

    .line 292
    invoke-virtual {p0}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->b()V

    .line 293
    invoke-direct {p0}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->e()V

    .line 294
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 556
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 557
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 559
    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 300
    new-instance v0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;

    invoke-direct {v0}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->e:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;

    .line 301
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->e:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;

    invoke-virtual {v0}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->b()V

    .line 303
    const-string v0, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "textureID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->e:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;

    invoke-virtual {v2}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->e:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;

    invoke-virtual {v1}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->f:Landroid/graphics/SurfaceTexture;

    .line 317
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 319
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->f:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->g:Landroid/view/Surface;

    .line 321
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->a:I

    iget v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->b:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->m:Ljava/nio/ByteBuffer;

    .line 322
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->m:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 323
    return-void
.end method

.method private f()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 329
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->h:Landroid/opengl/EGLDisplay;

    .line 330
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->h:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 331
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    new-array v0, v9, [I

    .line 334
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->h:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, v2, v0, v8}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->h:Landroid/opengl/EGLDisplay;

    .line 336
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_1
    const/16 v0, 0xd

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 349
    new-array v3, v8, [Landroid/opengl/EGLConfig;

    .line 350
    new-array v6, v8, [I

    .line 351
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->h:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 353
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_2
    new-array v0, v10, [I

    fill-array-data v0, :array_1

    .line 361
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->h:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v4, v5, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->i:Landroid/opengl/EGLContext;

    .line 363
    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->a(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->i:Landroid/opengl/EGLContext;

    if-nez v0, :cond_3

    .line 365
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_3
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->c:I

    iget v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->d:I

    if-le v0, v1, :cond_4

    .line 375
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->b:I

    .line 376
    iget v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->c:I

    iget v4, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->b:I

    mul-int/2addr v1, v4

    iget v4, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->d:I

    div-int/2addr v1, v4

    .line 382
    :goto_0
    const/4 v4, 0x5

    new-array v4, v4, [I

    const/16 v5, 0x3057

    aput v5, v4, v2

    aput v1, v4, v8

    const/16 v1, 0x3056

    aput v1, v4, v9

    aput v0, v4, v10

    const/4 v0, 0x4

    const/16 v1, 0x3038

    aput v1, v4, v0

    .line 387
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->h:Landroid/opengl/EGLDisplay;

    aget-object v1, v3, v2

    invoke-static {v0, v1, v4, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->j:Landroid/opengl/EGLSurface;

    .line 388
    const-string v0, "eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->a(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->j:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_5

    .line 390
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_4
    iget v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->a:I

    .line 379
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->d:I

    iget v4, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->a:I

    mul-int/2addr v0, v4

    iget v4, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->c:I

    div-int/2addr v0, v4

    goto :goto_0

    .line 392
    :cond_5
    return-void

    .line 340
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    .line 357
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 398
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->h:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 399
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->h:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->j:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 400
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->h:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->i:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 402
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->h:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 404
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->h:Landroid/opengl/EGLDisplay;

    .line 405
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->i:Landroid/opengl/EGLContext;

    .line 406
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->j:Landroid/opengl/EGLSurface;

    .line 408
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->g:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 414
    iput-object v2, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->e:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;

    .line 415
    iput-object v2, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->g:Landroid/view/Surface;

    .line 416
    iput-object v2, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->f:Landroid/graphics/SurfaceTexture;

    .line 417
    return-void
.end method

.method public a(I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    const/4 v1, 0x0

    .line 523
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 528
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->c:I

    iget v2, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->d:I

    if-le v0, v2, :cond_0

    .line 529
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->b:I

    .line 530
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->c:I

    iget v2, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->b:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->d:I

    div-int/2addr v0, v2

    .line 532
    iget v2, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->a:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->a:I

    iget v3, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->b:I

    iget-object v6, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->m:Ljava/nio/ByteBuffer;

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 542
    :goto_0
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->a:I

    iget v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->b:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 544
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 546
    invoke-static {}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->a()[Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v0, v1, p1

    .line 549
    return-void

    .line 535
    :cond_0
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->a:I

    .line 536
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->d:I

    iget v2, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->a:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->c:I

    div-int/2addr v0, v2

    .line 538
    iget v2, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->b:I

    sub-int/2addr v0, v2

    div-int/lit8 v7, v0, 0x2

    iget v8, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->a:I

    iget v9, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->b:I

    iget-object v12, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->m:Ljava/nio/ByteBuffer;

    move v6, v1

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v12}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->e:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;

    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, p1}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a(Landroid/graphics/SurfaceTexture;Z)V

    .line 471
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 423
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->h:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->j:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->j:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->i:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_0
    return-void
.end method

.method public c()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->g:Landroid/view/Surface;

    return-object v0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 441
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 446
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->k:Ljava/lang/Object;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 447
    iget-boolean v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->l:Z

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "frame wait timed out"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    :catch_0
    move-exception v0

    .line 453
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 456
    :cond_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->l:Z

    .line 457
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 460
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->e:Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;

    const-string v1, "before updateTexImage"

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 462
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .prologue
    .line 476
    const-string v0, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    const-string v1, "new frame available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 478
    :try_start_0
    iget-boolean v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->l:Z

    if-eqz v0, :cond_0

    .line 479
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 481
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->l:Z

    .line 482
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$a;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 483
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    return-void
.end method
