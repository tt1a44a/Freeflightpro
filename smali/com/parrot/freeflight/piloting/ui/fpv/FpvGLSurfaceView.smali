.class public Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;
.super Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;
.source "FpvGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/controller/video/renderer/VideoGlSurfaceView",
        "<",
        "Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLOR_BUFFER_BYTES_NUMBER:I = 0x8

.field private static final DEPTH_BUFFER_BYTES_NUMBER:I = 0x10

.field private static final STENCIL_BUFFER_BYTES_NUMBER:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v1, 0x8

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 24
    return-void
.end method


# virtual methods
.method public getGlRenderer()Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->mRenderer:Lcom/parrot/controller/video/renderer/VideoGlRenderer;

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;

    return-object v0
.end method

.method public releaseSurfaceTexture()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->mRenderer:Lcom/parrot/controller/video/renderer/VideoGlRenderer;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->mRenderer:Lcom/parrot/controller/video/renderer/VideoGlRenderer;

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->releaseSurfaceTexture()V

    .line 46
    :cond_0
    return-void
.end method

.method public setPixelFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 28
    return-void
.end method

.method public setSurfaceTextureSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->mRenderer:Lcom/parrot/controller/video/renderer/VideoGlRenderer;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->mRenderer:Lcom/parrot/controller/video/renderer/VideoGlRenderer;

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->setSurfaceTextureSize(II)V

    .line 39
    :cond_0
    return-void
.end method
