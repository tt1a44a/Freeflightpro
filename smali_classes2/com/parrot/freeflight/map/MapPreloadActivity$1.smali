.class Lcom/parrot/freeflight/map/MapPreloadActivity$1;
.super Ljava/lang/Object;
.source "MapPreloadActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/map/MapPreloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/map/MapPreloadActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$1;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePosition(FFF)V
    .locals 4
    .param p1, "distanceToDrone"    # F
    .param p2, "distanceToHome"    # F
    .param p3, "bearing"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    iget-object v3, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$1;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$1;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$100(Lcom/parrot/freeflight/map/MapPreloadActivity;)Lcom/parrot/freeflight/piloting/RelativePositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/RelativePositionController;->getControllerLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$002(Lcom/parrot/freeflight/map/MapPreloadActivity;Z)Z

    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$1;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$300(Lcom/parrot/freeflight/map/MapPreloadActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v3, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$1;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$000(Lcom/parrot/freeflight/map/MapPreloadActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$1;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$200(Lcom/parrot/freeflight/map/MapPreloadActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 74
    return-void

    :cond_0
    move v0, v2

    .line 72
    goto :goto_0

    :cond_1
    move v1, v2

    .line 73
    goto :goto_1
.end method

.method public updateRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 79
    return-void
.end method
