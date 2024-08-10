.class Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;
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
    .line 378
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$DefaultListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureReady(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 382
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6$1;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;)V

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 391
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1000(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6$2;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6$2;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 400
    return-void
.end method
