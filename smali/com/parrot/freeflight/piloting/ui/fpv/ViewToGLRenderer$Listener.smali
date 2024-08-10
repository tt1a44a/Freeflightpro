.class public interface abstract Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;
.super Ljava/lang/Object;
.source "ViewToGLRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onGlTextureReady(Lcom/parrot/engine3d/buffer/textures/GLTexture;)V
    .param p1    # Lcom/parrot/engine3d/buffer/textures/GLTexture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract onSurfaceChanged(II)V
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract onSurfaceTextureReady(Landroid/graphics/SurfaceTexture;)V
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method
