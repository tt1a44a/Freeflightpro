.class Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$c;
.super Ljava/lang/Object;
.source "EGLHelplerUtil.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)V
    .locals 1

    .prologue
    .line 166
    iput-object p1, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$c;->a:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/16 v0, 0x3098

    iput v0, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$c;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$1;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$c;-><init>(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    .prologue
    .line 171
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$c;->b:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$c;->a:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    .line 172
    invoke-static {v2}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->a(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 174
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil$c;->a:Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    .line 175
    invoke-static {v2}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->a(Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    :goto_0
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 3

    .prologue
    .line 180
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
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

    .line 184
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDestroyContext failed: "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    return-void
.end method
