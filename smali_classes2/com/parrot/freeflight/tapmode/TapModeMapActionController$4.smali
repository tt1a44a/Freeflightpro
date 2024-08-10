.class Lcom/parrot/freeflight/tapmode/TapModeMapActionController$4;
.super Ljava/lang/Object;
.source "TapModeMapActionController.java"

# interfaces
.implements Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/tapmode/TapModeMapActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$4;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapTouchUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$4;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v0}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$100(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$4;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v0}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$100(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->setDragging(Z)V

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$4;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v0}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$100(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->isWayPoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$4;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v0}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$600(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$4;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$102(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;Lcom/parrot/freeflight/tapmode/GLTapModePoint;)Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$4;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$702(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 150
    :cond_1
    return-void
.end method
