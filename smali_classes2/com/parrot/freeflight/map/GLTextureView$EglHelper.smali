.class Lcom/parrot/freeflight/map/GLTextureView$EglHelper;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/map/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/map/GLTextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/map/GLTextureView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 745
    .local p1, "glTextureViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/parrot/freeflight/map/GLTextureView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    iput-object p1, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 747
    return-void
.end method

.method private destroySurfaceImp()V
    .locals 6

    .prologue
    .line 913
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_1

    .line 914
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 917
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/map/GLTextureView;

    .line 918
    .local v0, "view":Lcom/parrot/freeflight/map/GLTextureView;
    if-eqz v0, :cond_0

    .line 919
    invoke-static {v0}, Lcom/parrot/freeflight/map/GLTextureView;->access$500(Lcom/parrot/freeflight/map/GLTextureView;)Lcom/parrot/freeflight/map/GLTextureView$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3, v4}, Lcom/parrot/freeflight/map/GLTextureView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 921
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 923
    .end local v0    # "view":Lcom/parrot/freeflight/map/GLTextureView;
    :cond_1
    return-void
.end method

.method public static formatEglError(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "function"    # Ljava/lang/String;
    .param p1, "error"    # I

    .prologue
    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "error"    # I

    .prologue
    .line 956
    invoke-static {p1, p2}, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 1
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 943
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 944
    return-void
.end method

.method public static throwEglException(Ljava/lang/String;I)V
    .locals 2
    .param p0, "function"    # Ljava/lang/String;
    .param p1, "error"    # I

    .prologue
    .line 947
    invoke-static {p0, p1}, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method createGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 5

    .prologue
    .line 872
    iget-object v4, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v4}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 873
    .local v1, "gl":Ljavax/microedition/khronos/opengles/GL;
    iget-object v4, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/map/GLTextureView;

    .line 874
    .local v3, "view":Lcom/parrot/freeflight/map/GLTextureView;
    if-eqz v3, :cond_3

    .line 875
    invoke-static {v3}, Lcom/parrot/freeflight/map/GLTextureView;->access$600(Lcom/parrot/freeflight/map/GLTextureView;)Lcom/parrot/freeflight/map/GLTextureView$GLWrapper;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 876
    invoke-static {v3}, Lcom/parrot/freeflight/map/GLTextureView;->access$600(Lcom/parrot/freeflight/map/GLTextureView;)Lcom/parrot/freeflight/map/GLTextureView$GLWrapper;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/parrot/freeflight/map/GLTextureView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 879
    :cond_0
    invoke-static {v3}, Lcom/parrot/freeflight/map/GLTextureView;->access$700(Lcom/parrot/freeflight/map/GLTextureView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_3

    .line 880
    const/4 v0, 0x0

    .line 881
    .local v0, "configFlags":I
    const/4 v2, 0x0

    .line 882
    .local v2, "log":Ljava/io/Writer;
    invoke-static {v3}, Lcom/parrot/freeflight/map/GLTextureView;->access$700(Lcom/parrot/freeflight/map/GLTextureView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 883
    or-int/lit8 v0, v0, 0x1

    .line 885
    :cond_1
    invoke-static {v3}, Lcom/parrot/freeflight/map/GLTextureView;->access$700(Lcom/parrot/freeflight/map/GLTextureView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 886
    new-instance v2, Lcom/parrot/freeflight/map/GLTextureView$LogWriter;

    .end local v2    # "log":Ljava/io/Writer;
    invoke-direct {v2}, Lcom/parrot/freeflight/map/GLTextureView$LogWriter;-><init>()V

    .line 888
    .restart local v2    # "log":Ljava/io/Writer;
    :cond_2
    invoke-static {v1, v0, v2}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 891
    .end local v0    # "configFlags":I
    .end local v2    # "log":Ljava/io/Writer;
    :cond_3
    return-object v1
.end method

.method public createSurface()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 815
    iget-object v3, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v3, :cond_0

    .line 816
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "egl not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 818
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v3, :cond_1

    .line 819
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglDisplay not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 821
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v3, :cond_2

    .line 822
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mEglConfig not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 829
    :cond_2
    invoke-direct {p0}, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->destroySurfaceImp()V

    .line 834
    iget-object v3, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/map/GLTextureView;

    .line 835
    .local v1, "view":Lcom/parrot/freeflight/map/GLTextureView;
    if-eqz v1, :cond_5

    .line 836
    invoke-static {v1}, Lcom/parrot/freeflight/map/GLTextureView;->access$500(Lcom/parrot/freeflight/map/GLTextureView;)Lcom/parrot/freeflight/map/GLTextureView$EGLWindowSurfaceFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 837
    invoke-virtual {v1}, Lcom/parrot/freeflight/map/GLTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v7

    .line 836
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/parrot/freeflight/map/GLTextureView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 842
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v3, v4, :cond_6

    .line 843
    :cond_3
    iget-object v3, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 844
    .local v0, "error":I
    const/16 v3, 0x300b

    if-ne v0, v3, :cond_4

    .line 845
    const-string v3, "EglHelper"

    const-string v4, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    .end local v0    # "error":I
    :cond_4
    :goto_1
    return v2

    .line 839
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    .line 854
    :cond_6
    iget-object v3, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v7, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 859
    const-string v3, "EGLHelper"

    const-string v4, "eglMakeCurrent"

    iget-object v5, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 863
    :cond_7
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public destroySurface()V
    .locals 0

    .prologue
    .line 909
    invoke-direct {p0}, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->destroySurfaceImp()V

    .line 910
    return-void
.end method

.method public finish()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 929
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_1

    .line 930
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/map/GLTextureView;

    .line 931
    .local v0, "view":Lcom/parrot/freeflight/map/GLTextureView;
    if-eqz v0, :cond_0

    .line 932
    invoke-static {v0}, Lcom/parrot/freeflight/map/GLTextureView;->access$400(Lcom/parrot/freeflight/map/GLTextureView;)Lcom/parrot/freeflight/map/GLTextureView$EGLContextFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4}, Lcom/parrot/freeflight/map/GLTextureView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 934
    :cond_0
    iput-object v5, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 936
    .end local v0    # "view":Lcom/parrot/freeflight/map/GLTextureView;
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_2

    .line 937
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 938
    iput-object v5, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 940
    :cond_2
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 760
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 765
    iget-object v2, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 767
    iget-object v2, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_0

    .line 768
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglGetDisplay failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 774
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 775
    .local v0, "version":[I
    iget-object v2, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 776
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglInitialize failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 778
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/map/GLTextureView;

    .line 779
    .local v1, "view":Lcom/parrot/freeflight/map/GLTextureView;
    if-nez v1, :cond_4

    .line 780
    iput-object v6, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 781
    iput-object v6, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 791
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_3

    .line 792
    :cond_2
    iput-object v6, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 793
    const-string v2, "createContext"

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 799
    :cond_3
    iput-object v6, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 800
    return-void

    .line 783
    :cond_4
    invoke-static {v1}, Lcom/parrot/freeflight/map/GLTextureView;->access$300(Lcom/parrot/freeflight/map/GLTextureView;)Lcom/parrot/freeflight/map/GLTextureView$EGLConfigChooser;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v4}, Lcom/parrot/freeflight/map/GLTextureView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 789
    invoke-static {v1}, Lcom/parrot/freeflight/map/GLTextureView;->access$400(Lcom/parrot/freeflight/map/GLTextureView;)Lcom/parrot/freeflight/map/GLTextureView$EGLContextFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4, v5}, Lcom/parrot/freeflight/map/GLTextureView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0
.end method

.method public swap()I
    .locals 3

    .prologue
    .line 899
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 902
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3000

    goto :goto_0
.end method
