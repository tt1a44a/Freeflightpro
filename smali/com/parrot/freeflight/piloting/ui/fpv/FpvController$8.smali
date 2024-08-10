.class Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;
.super Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$DefaultListener;
.source "FpvController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->initContentView(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$DefaultListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$700(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$700(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8$1;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8$1;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;I)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 460
    :cond_0
    return-void
.end method

.method public onSurfaceTextureReady(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 465
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8$2;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$8;)V

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 473
    return-void
.end method
