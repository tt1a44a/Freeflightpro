.class public abstract Lcom/parrot/controller/video/decoder/VideoDecoder;
.super Ljava/lang/Object;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;
    }
.end annotation


# instance fields
.field protected final mListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mSurface:Landroid/view/Surface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;)V
    .locals 0
    .param p1, "videoListener"    # Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/parrot/controller/video/decoder/VideoDecoder;->mListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;

    .line 26
    invoke-virtual {p0}, Lcom/parrot/controller/video/decoder/VideoDecoder;->createSurfaceTexture()V

    .line 27
    return-void
.end method


# virtual methods
.method protected createSurfaceTexture()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/VideoDecoder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 34
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/parrot/controller/video/decoder/VideoDecoder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/VideoDecoder;->mSurface:Landroid/view/Surface;

    .line 35
    return-void
.end method

.method public abstract destroy()V
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/VideoDecoder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method protected releaseSurfaceTexture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/VideoDecoder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/VideoDecoder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 40
    iput-object v1, p0, Lcom/parrot/controller/video/decoder/VideoDecoder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/VideoDecoder;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 43
    iput-object v1, p0, Lcom/parrot/controller/video/decoder/VideoDecoder;->mSurface:Landroid/view/Surface;

    .line 45
    :cond_1
    return-void
.end method
