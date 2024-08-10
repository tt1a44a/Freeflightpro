.class Lcom/muvee/studio/view/MmsaGLSurfaceView$e;
.super Ljava/lang/Object;
.source "MmsaGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/studio/view/MmsaGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field a:Ljavax/microedition/khronos/egl/EGL10;

.field b:Ljavax/microedition/khronos/egl/EGLDisplay;

.field c:Ljavax/microedition/khronos/egl/EGLSurface;

.field d:Ljavax/microedition/khronos/egl/EGLConfig;

.field e:Ljavax/microedition/khronos/egl/EGLContext;

.field final synthetic f:Lcom/muvee/studio/view/MmsaGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/muvee/studio/view/MmsaGLSurfaceView;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a(Ljava/lang/String;I)V

    .line 749
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 753
    invoke-static {}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::throwEglException:message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljavax/microedition/khronos/opengles/GL;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 500
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_1

    .line 504
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_2

    .line 507
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v2, :cond_3

    .line 517
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 519
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->d(Lcom/muvee/studio/view/MmsaGLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3, v4}, Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 527
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->d(Lcom/muvee/studio/view/MmsaGLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v2, v3, v4, p1}, Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_0
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v2, :cond_6

    .line 536
    :cond_4
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 537
    const/16 v2, 0x300b

    if-ne v0, v2, :cond_5

    .line 538
    const-string v0, "EglHelper"

    const-string v1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    .line 539
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v0, 0x0

    .line 644
    :goto_1
    return-object v0

    .line 529
    :catch_0
    move-exception v0

    .line 531
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 543
    :cond_5
    const-string v2, "createWindowSurface"

    invoke-direct {p0, v2, v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a(Ljava/lang/String;I)V

    .line 551
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 553
    const-string v0, "eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 560
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    .line 562
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-virtual {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getViewWidth()I

    move-result v0

    iget-object v3, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-virtual {v3}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getViewHeight()I

    move-result v3

    invoke-static {v1, v1, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 579
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->b()I

    move-result v3

    new-array v3, v3, [Landroid/graphics/SurfaceTexture;

    invoke-static {v0, v3}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a(Lcom/muvee/studio/view/MmsaGLSurfaceView;[Landroid/graphics/SurfaceTexture;)[Landroid/graphics/SurfaceTexture;

    .line 580
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->b()I

    move-result v3

    new-array v3, v3, [J

    iput-object v3, v0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->mSurfaceFrameCount:[J

    .line 581
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->b()I

    move-result v3

    new-array v3, v3, [Landroid/view/Surface;

    invoke-static {v0, v3}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a(Lcom/muvee/studio/view/MmsaGLSurfaceView;[Landroid/view/Surface;)[Landroid/view/Surface;

    .line 582
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->b()I

    move-result v3

    new-array v3, v3, [I

    invoke-static {v0, v3}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a(Lcom/muvee/studio/view/MmsaGLSurfaceView;[I)[I

    .line 583
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->e(Lcom/muvee/studio/view/MmsaGLSurfaceView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v1

    .line 584
    :goto_3
    invoke-static {}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->b()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 585
    iget-object v3, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v3}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->e(Lcom/muvee/studio/view/MmsaGLSurfaceView;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    new-array v3, v7, [I

    .line 587
    invoke-static {v7, v3, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 589
    iget-object v4, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v4}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->f(Lcom/muvee/studio/view/MmsaGLSurfaceView;)[I

    move-result-object v4

    aget v3, v3, v1

    aput v3, v4, v0

    .line 591
    iget-object v3, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v3}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->g(Lcom/muvee/studio/view/MmsaGLSurfaceView;)[Landroid/graphics/SurfaceTexture;

    move-result-object v3

    new-instance v4, Landroid/graphics/SurfaceTexture;

    iget-object v5, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v5}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->f(Lcom/muvee/studio/view/MmsaGLSurfaceView;)[I

    move-result-object v5

    aget v5, v5, v0

    invoke-direct {v4, v5}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    aput-object v4, v3, v0

    .line 593
    invoke-static {}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "::createSurface: %s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v6}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->g(Lcom/muvee/studio/view/MmsaGLSurfaceView;)[Landroid/graphics/SurfaceTexture;

    move-result-object v6

    aget-object v6, v6, v0

    aput-object v6, v5, v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_8

    .line 596
    iget-object v3, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v3}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->g(Lcom/muvee/studio/view/MmsaGLSurfaceView;)[Landroid/graphics/SurfaceTexture;

    move-result-object v3

    aget-object v3, v3, v0

    new-instance v4, Lcom/muvee/studio/view/MmsaGLSurfaceView$e$1;

    invoke-direct {v4, p0, v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView$e$1;-><init>(Lcom/muvee/studio/view/MmsaGLSurfaceView$e;I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ON_FRAME_AVAIABLE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    .line 608
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v5

    .line 596
    invoke-virtual {v3, v4, v5}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 625
    :goto_4
    iget-object v3, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v3}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->h(Lcom/muvee/studio/view/MmsaGLSurfaceView;)[Landroid/view/Surface;

    move-result-object v3

    new-instance v4, Landroid/view/Surface;

    iget-object v5, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v5}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->g(Lcom/muvee/studio/view/MmsaGLSurfaceView;)[Landroid/graphics/SurfaceTexture;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-direct {v4, v5}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    aput-object v4, v3, v0

    .line 627
    invoke-static {}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::createSurface:mTextureId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v5}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->f(Lcom/muvee/studio/view/MmsaGLSurfaceView;)[I

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v3, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a(Lcom/muvee/studio/view/MmsaGLSurfaceView;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 555
    :catch_1
    move-exception v0

    .line 557
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_2

    .line 610
    :cond_8
    iget-object v3, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v3}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->g(Lcom/muvee/studio/view/MmsaGLSurfaceView;)[Landroid/graphics/SurfaceTexture;

    move-result-object v3

    aget-object v3, v3, v0

    new-instance v4, Lcom/muvee/studio/view/MmsaGLSurfaceView$e$2;

    invoke-direct {v4, p0, v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView$e$2;-><init>(Lcom/muvee/studio/view/MmsaGLSurfaceView$e;I)V

    invoke-virtual {v3, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    goto :goto_4

    .line 634
    :cond_9
    new-array v0, v7, [I

    .line 635
    invoke-static {v7, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 636
    iget-object v3, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    aget v0, v0, v1

    invoke-static {v3, v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->b(Lcom/muvee/studio/view/MmsaGLSurfaceView;I)I

    .line 637
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v3}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->i(Lcom/muvee/studio/view/MmsaGLSurfaceView;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a(Lcom/muvee/studio/view/MmsaGLSurfaceView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 638
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    new-instance v1, Landroid/view/Surface;

    iget-object v3, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v3}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->j(Lcom/muvee/studio/view/MmsaGLSurfaceView;)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a(Lcom/muvee/studio/view/MmsaGLSurfaceView;Landroid/view/Surface;)Landroid/view/Surface;

    move-object v0, v2

    .line 644
    goto/16 :goto_1
.end method

.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 453
    invoke-static {}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::start:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 463
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 465
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 466
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 473
    iget-object v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 474
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->b(Lcom/muvee/studio/view/MmsaGLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v2}, Landroid/opengl/GLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 482
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->c(Lcom/muvee/studio/view/MmsaGLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 484
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->e:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_3

    .line 485
    :cond_2
    iput-object v4, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 486
    const-string v0, "createContext"

    invoke-direct {p0, v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a(Ljava/lang/String;)V

    .line 489
    :cond_3
    iput-object v4, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 490
    return-void
.end method

.method public b()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 656
    iget-object v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-virtual {v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getViewWidth()I

    move-result v1

    iget-object v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-virtual {v2}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getViewHeight()I

    move-result v2

    invoke-static {v0, v0, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 679
    iget-object v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 686
    iget-object v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 687
    invoke-static {}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::swap:error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    sparse-switch v1, :sswitch_data_0

    .line 703
    const-string v0, "eglSwapBuffers"

    invoke-direct {p0, v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a(Ljava/lang/String;I)V

    .line 709
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :sswitch_0
    return v0

    .line 698
    :sswitch_1
    const-string v0, "EglHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglSwapBuffers returned EGL_BAD_NATIVE_WINDOW. tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 700
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 688
    nop

    :sswitch_data_0
    .sparse-switch
        0x3003 -> :sswitch_0
        0x300b -> :sswitch_1
        0x300e -> :sswitch_0
    .end sparse-switch
.end method

.method public c()V
    .locals 5

    .prologue
    .line 714
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->h(Lcom/muvee/studio/view/MmsaGLSurfaceView;)[Landroid/view/Surface;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 716
    iget-object v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->g(Lcom/muvee/studio/view/MmsaGLSurfaceView;)[Landroid/graphics/SurfaceTexture;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 714
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->k(Lcom/muvee/studio/view/MmsaGLSurfaceView;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 720
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->j(Lcom/muvee/studio/view/MmsaGLSurfaceView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 724
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 726
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->d(Lcom/muvee/studio/view/MmsaGLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 728
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :cond_1
    :goto_1
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 736
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->f:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->c(Lcom/muvee/studio/view/MmsaGLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 739
    iput-object v4, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 743
    iput-object v4, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 745
    :cond_1
    return-void
.end method
