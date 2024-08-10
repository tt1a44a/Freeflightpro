.class public Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$DefaultListener;
.super Ljava/lang/Object;
.source "ViewToGLRenderer.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlTextureReady(Lcom/parrot/engine3d/buffer/textures/GLTexture;)V
    .locals 0
    .param p1, "glTexture"    # Lcom/parrot/engine3d/buffer/textures/GLTexture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 211
    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 206
    return-void
.end method

.method public onSurfaceTextureReady(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 216
    return-void
.end method
