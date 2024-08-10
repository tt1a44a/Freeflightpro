.class Lcom/muvee/studio/view/MmsaGLSurfaceView$c;
.super Ljava/lang/Object;
.source "MmsaGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/studio/view/MmsaGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/studio/view/MmsaGLSurfaceView;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/muvee/studio/view/MmsaGLSurfaceView;)V
    .locals 1

    .prologue
    .line 260
    iput-object p1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$c;->a:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    const/16 v0, 0x3098

    iput v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$c;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/studio/view/MmsaGLSurfaceView$1;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/muvee/studio/view/MmsaGLSurfaceView$c;-><init>(Lcom/muvee/studio/view/MmsaGLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    .prologue
    .line 265
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$c;->b:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$c;->a:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    .line 266
    invoke-static {v2}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a(Lcom/muvee/studio/view/MmsaGLSurfaceView;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 268
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$c;->a:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    .line 269
    invoke-static {v2}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a(Lcom/muvee/studio/view/MmsaGLSurfaceView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    :goto_0
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

    .line 269
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 3

    .prologue
    .line 274
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const-string v0, "DefaultContextFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDestroyContext failed: "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    return-void
.end method
