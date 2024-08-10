.class Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;
.super Ljava/lang/Object;
.source "FetchMomentsPreviewsTask.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CodecOutputSurface"
.end annotation


# instance fields
.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mFrameAvailable:Z

.field private mFrameSyncObject:Ljava/lang/Object;

.field mHeight:I

.field private mPixelBuf:Ljava/nio/ByteBuffer;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureRender:Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;

.field mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 259
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 260
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 264
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 275
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 278
    :cond_1
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mWidth:I

    .line 279
    iput p2, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mHeight:I

    .line 281
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->eglSetup()V

    .line 282
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->makeCurrent()V

    .line 283
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->setup()V

    .line 284
    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 516
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 517
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 519
    :cond_0
    return-void
.end method

.method private eglSetup()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 319
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 320
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v4, :cond_0

    .line 321
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to get EGL14 display"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    new-array v10, v12, [I

    .line 324
    .local v10, "version":[I
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v10, v2, v10, v11}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 326
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to initialize EGL14"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_1
    const/16 v0, 0xd

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 339
    .local v1, "attribList":[I
    new-array v3, v11, [Landroid/opengl/EGLConfig;

    .line 340
    .local v3, "configs":[Landroid/opengl/EGLConfig;
    new-array v6, v11, [I

    .line 341
    .local v6, "numConfigs":[I
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 343
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_2
    new-array v8, v13, [I

    fill-array-data v8, :array_1

    .line 351
    .local v8, "attrib_list":[I
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v4, v5, v8, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 353
    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_3

    .line 355
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "null context"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_3
    const/4 v0, 0x5

    new-array v9, v0, [I

    const/16 v0, 0x3057

    aput v0, v9, v2

    iget v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mWidth:I

    aput v0, v9, v11

    const/16 v0, 0x3056

    aput v0, v9, v12

    iget v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mHeight:I

    aput v0, v9, v13

    const/4 v0, 0x4

    const/16 v4, 0x3038

    aput v4, v9, v0

    .line 364
    .local v9, "surfaceAttribs":[I
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    invoke-static {v0, v4, v9, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 365
    const-string v0, "eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_4

    .line 367
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "surface was null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_4
    return-void

    .line 330
    nop

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

    .line 347
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private setup()V
    .locals 2

    .prologue
    .line 290
    new-instance v0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mTextureRender:Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;

    .line 291
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mTextureRender:Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->surfaceCreated()V

    .line 294
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mTextureRender:Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 307
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 309
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mSurface:Landroid/view/Surface;

    .line 311
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mWidth:I

    iget v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    .line 312
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 313
    return-void
.end method


# virtual methods
.method public awaitNewImage()V
    .locals 6

    .prologue
    .line 418
    const/16 v0, 0x61a8

    .line 420
    .local v0, "TIMEOUT_MS":I
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v3

    .line 421
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 425
    :try_start_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    const-wide/16 v4, 0x61a8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 426
    iget-boolean v2, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mFrameAvailable:Z

    if-nez v2, :cond_0

    .line 428
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "frame wait timed out"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    :catch_0
    move-exception v1

    .line 432
    .local v1, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 436
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 435
    :cond_1
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mFrameAvailable:Z

    .line 436
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 439
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mTextureRender:Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;

    const-string v3, "before updateTexImage"

    invoke-static {v2, v3}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->access$000(Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;Ljava/lang/String;)V

    .line 440
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 441
    return-void
.end method

.method public drawImage(Z)V
    .locals 2
    .param p1, "invert"    # Z

    .prologue
    .line 449
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mTextureRender:Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, p1}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->drawFrame(Landroid/graphics/SurfaceTexture;Z)V

    .line 450
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 4

    .prologue
    .line 400
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 456
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 457
    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mFrameAvailable:Z

    if-eqz v0, :cond_0

    .line 458
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 460
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mFrameAvailable:Z

    .line 461
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 462
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 375
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 377
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 378
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 379
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 381
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 382
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 383
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 385
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 391
    iput-object v2, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mTextureRender:Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;

    .line 392
    iput-object v2, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mSurface:Landroid/view/Surface;

    .line 393
    iput-object v2, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 394
    return-void
.end method

.method public saveFrame()Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 500
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 501
    iget v2, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mWidth:I

    iget v3, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mHeight:I

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    iget-object v6, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 503
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mWidth:I

    iget v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 504
    .local v8, "bmp":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 505
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 506
    const/16 v0, 0x140

    const/16 v1, 0xb4

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 507
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 508
    return-object v7
.end method
