.class abstract Lcom/muvee/studio/view/MmsaGLSurfaceView$a;
.super Ljava/lang/Object;
.source "MmsaGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/studio/view/MmsaGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field protected a:[I

.field final synthetic b:Lcom/muvee/studio/view/MmsaGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/muvee/studio/view/MmsaGLSurfaceView;[I)V
    .locals 1

    .prologue
    .line 284
    iput-object p1, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$a;->b:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a(Lcom/muvee/studio/view/MmsaGLSurfaceView;I)I

    .line 287
    invoke-direct {p0, p2}, Lcom/muvee/studio/view/MmsaGLSurfaceView$a;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$a;->a:[I

    .line 288
    return-void
.end method

.method private a([I)[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 321
    iget-object v0, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$a;->b:Lcom/muvee/studio/view/MmsaGLSurfaceView;

    invoke-static {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->a(Lcom/muvee/studio/view/MmsaGLSurfaceView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 334
    :goto_0
    return-object p1

    .line 328
    :cond_0
    array-length v1, p1

    .line 329
    add-int/lit8 v0, v1, 0x2

    new-array v0, v0, [I

    .line 330
    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    add-int/lit8 v2, v1, -0x1

    const/16 v3, 0x3040

    aput v3, v0, v2

    .line 332
    const/4 v2, 0x4

    aput v2, v0, v1

    .line 333
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3038

    aput v2, v0, v1

    move-object p1, v0

    .line 334
    goto :goto_0
.end method


# virtual methods
.method abstract a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 291
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 292
    iget-object v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$a;->a:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    aget v4, v5, v4

    .line 298
    if-gtz v4, :cond_1

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 304
    iget-object v2, p0, Lcom/muvee/studio/view/MmsaGLSurfaceView$a;->a:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 306
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Lcom/muvee/studio/view/MmsaGLSurfaceView$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 309
    if-nez v0, :cond_3

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_3
    return-object v0
.end method