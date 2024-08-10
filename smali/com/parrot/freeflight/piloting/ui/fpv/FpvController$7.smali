.class Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;
.super Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$DefaultListener;
.source "FpvController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->createFpvGLRenderer(ILcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;
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
    .line 404
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$DefaultListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlTextureReady(Lcom/parrot/engine3d/buffer/textures/GLTexture;)V
    .locals 3
    .param p1, "glTexture"    # Lcom/parrot/engine3d/buffer/textures/GLTexture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 408
    const-string v0, "FF4.Fpv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGlTextureReady mGlVideoSurfaceView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1100(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1100(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1600(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/core/video/VideoStreamingController;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1100(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLSurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/video/VideoStreamingController;->registerView(Landroid/view/View;)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1000(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7$1;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$7;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 424
    return-void
.end method
