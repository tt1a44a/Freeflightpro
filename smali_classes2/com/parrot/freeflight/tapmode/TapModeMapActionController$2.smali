.class Lcom/parrot/freeflight/tapmode/TapModeMapActionController$2;
.super Ljava/lang/Object;
.source "TapModeMapActionController.java"

# interfaces
.implements Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;


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
    .line 121
    iput-object p1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$2;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 2
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$2;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v0}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$100(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$2;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$2;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v1}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$200(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/map/IMap;

    move-result-object v1

    invoke-interface {v1}, Lcom/parrot/freeflight/map/IMap;->getProjection()Lcom/parrot/freeflight/map/IProjection;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/parrot/freeflight/map/IProjection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$300(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Point;)Z

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
