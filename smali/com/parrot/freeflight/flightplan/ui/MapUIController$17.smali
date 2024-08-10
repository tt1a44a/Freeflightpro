.class Lcom/parrot/freeflight/flightplan/ui/MapUIController$17;
.super Ljava/lang/Object;
.source "MapUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/location/SmartLocationManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/ui/MapUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .prologue
    .line 957
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$17;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControllerLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 960
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$17;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2302(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Landroid/location/Location;)Landroid/location/Location;

    .line 961
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$17;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/MapController;->setUserLocation(Landroid/location/Location;)V

    .line 962
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$17;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2400(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/widget/CenterOnImageButton;->setUserLocationKnown(Z)V

    .line 963
    return-void

    .line 962
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHomeLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 967
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$17;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/MapController;->setHomeLocation(Landroid/location/Location;)V

    .line 969
    return-void
.end method

.method public onRotationChanged(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 973
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$17;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/MapController;->setUserRotation(F)V

    .line 974
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$17;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2500(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/map/RadarMapView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/map/RadarMapView;->compassHeading(F)V

    .line 975
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 980
    return-void
.end method
