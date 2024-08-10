.class Lcom/parrot/freeflight/map/PreloadMapManager$1;
.super Ljava/lang/Object;
.source "PreloadMapManager.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/map/PreloadMapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/map/PreloadMapManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/map/PreloadMapManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/map/PreloadMapManager;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/parrot/freeflight/map/PreloadMapManager$1;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePosition(FFF)V
    .locals 2
    .param p1, "distanceToDrone"    # F
    .param p2, "distanceToHome"    # F
    .param p3, "bearing"    # F

    .prologue
    .line 70
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$1;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    iget-object v0, v0, Lcom/parrot/freeflight/map/PreloadMapManager;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$1;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    iget-object v1, p0, Lcom/parrot/freeflight/map/PreloadMapManager$1;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    iget-object v1, v1, Lcom/parrot/freeflight/map/PreloadMapManager;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->getControllerLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, v0, Lcom/parrot/freeflight/map/PreloadMapManager;->mControllerLocation:Landroid/location/Location;

    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$1;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$000(Lcom/parrot/freeflight/map/PreloadMapManager;Z)V

    .line 74
    :cond_0
    return-void
.end method

.method public updateRotation(F)V
    .locals 2
    .param p1, "rotation"    # F

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$1;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    iput p1, v0, Lcom/parrot/freeflight/map/PreloadMapManager;->mControllerRotation:F

    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$1;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$000(Lcom/parrot/freeflight/map/PreloadMapManager;Z)V

    .line 80
    return-void
.end method
