.class Lcom/parrot/freeflight/flightplan/MapController$1;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Lcom/parrot/freeflight/map/GLMapLayout$CameraChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/MapController;->initMapParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/MapController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/MapController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/MapController;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/MapController$1;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChanged()V
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController$1;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/MapController;->access$100(Lcom/parrot/freeflight/flightplan/MapController;)Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController$1;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/MapController;->access$000(Lcom/parrot/freeflight/flightplan/MapController;)Lcom/parrot/freeflight/map/IMap;

    move-result-object v1

    invoke-interface {v1}, Lcom/parrot/freeflight/map/IMap;->getProjection()Lcom/parrot/freeflight/map/IProjection;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController$1;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/MapController;->access$000(Lcom/parrot/freeflight/flightplan/MapController;)Lcom/parrot/freeflight/map/IMap;

    move-result-object v2

    invoke-interface {v2}, Lcom/parrot/freeflight/map/IMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->onMapCameraChanged(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;)V

    .line 408
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController$1;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/MapController;->access$200(Lcom/parrot/freeflight/flightplan/MapController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController$1;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/MapController;->access$000(Lcom/parrot/freeflight/flightplan/MapController;)Lcom/parrot/freeflight/map/IMap;

    move-result-object v1

    invoke-interface {v1}, Lcom/parrot/freeflight/map/IMap;->getProjection()Lcom/parrot/freeflight/map/IProjection;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController$1;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/MapController;->access$000(Lcom/parrot/freeflight/flightplan/MapController;)Lcom/parrot/freeflight/map/IMap;

    move-result-object v2

    invoke-interface {v2}, Lcom/parrot/freeflight/map/IMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->onMapCameraChanged(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;)V

    .line 409
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController$1;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/MapController;->access$300(Lcom/parrot/freeflight/flightplan/MapController;)Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController$1;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/MapController;->access$000(Lcom/parrot/freeflight/flightplan/MapController;)Lcom/parrot/freeflight/map/IMap;

    move-result-object v1

    invoke-interface {v1}, Lcom/parrot/freeflight/map/IMap;->getProjection()Lcom/parrot/freeflight/map/IProjection;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController$1;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/MapController;->access$000(Lcom/parrot/freeflight/flightplan/MapController;)Lcom/parrot/freeflight/map/IMap;

    move-result-object v2

    invoke-interface {v2}, Lcom/parrot/freeflight/map/IMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->onMapCameraChanged(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;)V

    .line 410
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController$1;->this$0:Lcom/parrot/freeflight/flightplan/MapController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/MapController;->access$400(Lcom/parrot/freeflight/flightplan/MapController;)Lcom/parrot/freeflight/map/MapGLRenderingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 411
    return-void
.end method
