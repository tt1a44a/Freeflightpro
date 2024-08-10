.class Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;
.super Ljava/lang/Object;
.source "EGLHelplerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;
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

.field final synthetic f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;


# direct methods
.method public constructor <init>(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a(Ljava/lang/String;I)V

    .line 635
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    const-string v1, "com.muvee.dsg.mmapegl.EGLHelplerUtil"

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

    .line 641
    return-void
.end method


# virtual methods
.method public a(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    .locals 5

    .prologue
    .line 407
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_1

    .line 411
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_2

    .line 414
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_3

    .line 424
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 426
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->d(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 431
    :cond_3
    if-eqz p1, :cond_5

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->d(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3, p1}, Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_7

    .line 463
    :cond_4
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 464
    const/16 v1, 0x300b

    if-ne v0, v1, :cond_6

    .line 465
    const-string v0, "EglHelper"

    const-string v1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    .line 466
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v0, 0x0

    .line 508
    :goto_1
    return-object v0

    .line 439
    :catch_0
    move-exception v0

    .line 441
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 446
    :cond_5
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 451
    iget-object v1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    .line 470
    :cond_6
    const-string v1, "createWindowSurface"

    invoke-direct {p0, v1, v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a(Ljava/lang/String;I)V

    .line 478
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 480
    const-string v0, "eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 487
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    goto :goto_1

    .line 482
    :catch_1
    move-exception v0

    .line 484
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 446
    nop

    :array_0
    .array-data 4
        0x3057
        0x200
        0x3056
        0x200
        0x3038
    .end array-data
.end method

.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 360
    const-string v0, "com.muvee.dsg.mmapegl.EGLHelplerUtil"

    const-string v1, "::start:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 370
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 372
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 373
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 380
    iget-object v1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->b(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v2}, Landroid/opengl/GLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 389
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->c(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)Landroid/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 391
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->e:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_3

    .line 392
    :cond_2
    iput-object v4, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 393
    const-string v0, "createContext"

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a(Ljava/lang/String;)V

    .line 396
    :cond_3
    iput-object v4, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 397
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 512
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->a()I

    move-result v2

    new-array v2, v2, [Landroid/graphics/SurfaceTexture;

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->a(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;[Landroid/graphics/SurfaceTexture;)[Landroid/graphics/SurfaceTexture;

    .line 513
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->a()I

    move-result v2

    new-array v2, v2, [Landroid/view/Surface;

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->a(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;[Landroid/view/Surface;)[Landroid/view/Surface;

    .line 514
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->a()I

    move-result v2

    new-array v2, v2, [I

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->a(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;[I)[I

    .line 515
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->e(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v1

    .line 516
    :goto_0
    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->a()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 517
    iget-object v2, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {v2}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->e(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    new-array v2, v5, [I

    .line 519
    invoke-static {v5, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 525
    iget-object v3, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {v3}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->f(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)[I

    move-result-object v3

    aget v2, v2, v1

    aput v2, v3, v0

    .line 527
    iget-object v2, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {v2}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->g(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)[Landroid/graphics/SurfaceTexture;

    move-result-object v2

    new-instance v3, Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {v4}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->f(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)[I

    move-result-object v4

    aget v4, v4, v0

    invoke-direct {v3, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    aput-object v3, v2, v0

    .line 528
    iget-object v2, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {v2}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->h(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)[Landroid/view/Surface;

    move-result-object v2

    new-instance v3, Landroid/view/Surface;

    iget-object v4, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {v4}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->g(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)[Landroid/graphics/SurfaceTexture;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    aput-object v3, v2, v0

    .line 530
    const-string v2, "com.muvee.dsg.mmapegl.EGLHelplerUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::createSurface:mTextureId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {v4}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->f(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)[I

    move-result-object v4

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v2, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->a(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 534
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 568
    iget-object v1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 576
    const-string v2, "com.muvee.dsg.mmapegl.EGLHelplerUtil"

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

    .line 577
    sparse-switch v1, :sswitch_data_0

    .line 592
    const-string v0, "eglSwapBuffers"

    invoke-direct {p0, v0, v1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a(Ljava/lang/String;I)V

    .line 598
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :sswitch_0
    return v0

    .line 587
    :sswitch_1
    const-string v0, "EglHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglSwapBuffers returned EGL_BAD_NATIVE_WINDOW. tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 589
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 587
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 577
    :sswitch_data_0
    .sparse-switch
        0x3003 -> :sswitch_0
        0x300b -> :sswitch_1
        0x300e -> :sswitch_0
    .end sparse-switch
.end method

.method public d()V
    .locals 5

    .prologue
    .line 603
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {v1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->h(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)[Landroid/view/Surface;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 605
    iget-object v1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {v1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->g(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)[Landroid/graphics/SurfaceTexture;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 609
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 610
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 612
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->d(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->c:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :cond_1
    :goto_1
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 622
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->f:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-static {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->c(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)Landroid/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 625
    iput-object v4, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 629
    iput-object v4, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$e;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 631
    :cond_1
    return-void
.end method
