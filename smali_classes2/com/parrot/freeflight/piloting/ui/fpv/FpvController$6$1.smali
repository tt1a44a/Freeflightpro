.class Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6$1;
.super Ljava/lang/Object;
.source "FpvController.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;->onSurfaceTextureReady(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6$1;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6$1;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1100(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6$1;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1100(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;->requestRender()V

    .line 388
    :cond_0
    return-void
.end method
