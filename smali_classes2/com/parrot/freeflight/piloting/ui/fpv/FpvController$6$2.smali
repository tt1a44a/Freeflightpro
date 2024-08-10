.class Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6$2;
.super Ljava/lang/Object;
.source "FpvController.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6$2;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;

    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6$2;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 394
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6$2;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6$2;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;

    iget-object v1, v1, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1200(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6$2;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6$2;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;

    iget-object v3, v3, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1000(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6$2;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;

    iget-object v4, v4, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v4}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1300(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Landroid/graphics/Point;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->calcFpvViewSize(Landroid/view/View;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1400(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;Landroid/content/Context;Landroid/graphics/SurfaceTexture;Landroid/graphics/Point;)V

    .line 395
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6$2;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1500(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6$2;->this$1:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;->access$1500(Lcom/parrot/freeflight/piloting/ui/fpv/FpvController;)Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->setTargetDrone(Z)V

    .line 398
    :cond_0
    return-void
.end method
