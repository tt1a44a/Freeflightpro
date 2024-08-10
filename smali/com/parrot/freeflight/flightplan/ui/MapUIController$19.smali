.class Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;
.super Ljava/lang/Object;
.source "MapUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;


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
    .line 1002
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkGeofenceAlert(ILcom/google/android/gms/maps/model/LatLng;)Z
    .locals 6
    .param p1, "index"    # I
    .param p2, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1134
    const/4 v3, 0x0

    .line 1136
    .local v3, "onAlert":Z
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$4400(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/location/Location;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    .line 1137
    new-instance v2, Landroid/location/Location;

    const-string v4, "Geofence Test Location"

    invoke-direct {v2, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1138
    .local v2, "location":Landroid/location/Location;
    iget-wide v4, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 1139
    iget-wide v4, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 1141
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DroneModel;->getMaxDistanceState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v0

    .line 1142
    .local v0, "distanceMax":D
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v4}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$4400(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    float-to-double v4, v4

    cmpl-double v4, v4, v0

    if-ltz v4, :cond_1

    const/4 v3, 0x1

    .line 1145
    .end local v0    # "distanceMax":D
    .end local v2    # "location":Landroid/location/Location;
    :cond_0
    :goto_0
    return v3

    .line 1142
    .restart local v0    # "distanceMax":D
    .restart local v2    # "location":Landroid/location/Location;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hideButtons()V
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$3900(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2600(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$4200(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$4100(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Landroid/view/animation/Animation;)V

    .line 1123
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$3902(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)Z

    .line 1125
    :cond_0
    return-void
.end method

.method public isEditionEnabled()Z
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$4300(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z

    move-result v0

    return v0
.end method

.method public isRedoButtonEnabled()Z
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$3700(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z

    move-result v0

    return v0
.end method

.method public isUndoButtonEnabled()Z
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$3500(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z

    move-result v0

    return v0
.end method

.method public setAltitudeProgressBarValue(III)V
    .locals 1
    .param p1, "pointType"    # I
    .param p2, "pointIndex"    # I
    .param p3, "altitude"    # I

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$1102(Lcom/parrot/freeflight/flightplan/ui/MapUIController;I)I

    .line 1050
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0, p2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$1202(Lcom/parrot/freeflight/flightplan/ui/MapUIController;I)I

    .line 1052
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0, p3}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$900(Lcom/parrot/freeflight/flightplan/ui/MapUIController;I)V

    .line 1053
    return-void
.end method

.method public setAltitudeSeekBarEnabled(Z)V
    .locals 3
    .param p1, "seekBarUiEnabled"    # Z

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$3000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1033
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$3100(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/view/VerticalSlider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/view/VerticalSlider;->setEnabled(Z)V

    .line 1034
    if-eqz p1, :cond_2

    .line 1035
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$3000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1036
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$3100(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/view/VerticalSlider;

    move-result-object v2

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$600(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .line 1039
    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getMaxAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMaxBound()D

    move-result-wide v0

    .line 1040
    :goto_0
    double-to-int v0, v0

    .line 1038
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/VerticalSlider;->setMax(I)V

    .line 1045
    :cond_0
    :goto_1
    return-void

    .line 1039
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    .line 1040
    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getMaxAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v0

    goto :goto_0

    .line 1043
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$3000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public setRedoButtonEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$3702(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)Z

    .line 1108
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$3800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->isEditionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1109
    return-void

    .line 1108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSeekBarEnabled(ZZ)V
    .locals 0
    .param p1, "altitudeSeekBar"    # Z
    .param p2, "speedSeekBar"    # Z

    .prologue
    .line 1025
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->setAltitudeSeekBarEnabled(Z)V

    .line 1026
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->setSpeedSeekBarEnabled(Z)V

    .line 1027
    return-void
.end method

.method public setSpeedProgressBarValue(II)V
    .locals 2
    .param p1, "pointIndex"    # I
    .param p2, "speed"    # I

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$1102(Lcom/parrot/freeflight/flightplan/ui/MapUIController;I)I

    .line 1071
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$1202(Lcom/parrot/freeflight/flightplan/ui/MapUIController;I)I

    .line 1073
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    add-int/lit8 v1, p2, -0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$3300(Lcom/parrot/freeflight/flightplan/ui/MapUIController;I)V

    .line 1074
    return-void
.end method

.method public setSpeedSeekBarEnabled(Z)V
    .locals 3
    .param p1, "seekBarUiEnabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1058
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->isEditionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1059
    .local v0, "enabled":Z
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2700(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1060
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$3200(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1061
    if-eqz p1, :cond_1

    .line 1062
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2700(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1066
    :goto_1
    return-void

    .end local v0    # "enabled":Z
    :cond_0
    move v0, v1

    .line 1058
    goto :goto_0

    .line 1064
    .restart local v0    # "enabled":Z
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2700(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public setUndoButtonEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$3502(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)Z

    .line 1097
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$3600(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->isEditionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1098
    return-void

    .line 1097
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showButtons()V
    .locals 2

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$3900(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2600(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$4000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$4100(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Landroid/view/animation/Animation;)V

    .line 1115
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$3902(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)Z

    .line 1117
    :cond_0
    return-void
.end method

.method public showPoiEditionEnded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1015
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2602(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)Z

    .line 1016
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->setAltitudeSeekBarEnabled(Z)V

    .line 1017
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->setSpeedSeekBarEnabled(Z)V

    .line 1018
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1019
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2900(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1020
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2700(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1021
    return-void
.end method

.method public showPoiEditionStarted(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)V
    .locals 3
    .param p1, "poi"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 1006
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2602(Lcom/parrot/freeflight/flightplan/ui/MapUIController;Z)Z

    .line 1007
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->setAltitudeSeekBarEnabled(Z)V

    .line 1008
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->setSpeedSeekBarEnabled(Z)V

    .line 1009
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;->getAltitude()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->setAltitudeProgressBarValue(III)V

    .line 1010
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2700(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1011
    return-void
.end method

.method public updateGeofenceAlert(IZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "onAlert"    # Z

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/MapController;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/parrot/freeflight/flightplan/MapController;->updateGeofenceAlert(Ljava/lang/Integer;Z)V

    .line 1151
    return-void
.end method

.method public updateLayerButtons(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1083
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$3400(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNbWayPoints()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1085
    .local v0, "buttonsEnabled":Z
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2900(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1086
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2800(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1087
    return-void

    .line 1083
    .end local v0    # "buttonsEnabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updatePlayButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2900(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$3400(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$19;->this$0:Lcom/parrot/freeflight/flightplan/ui/MapUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController;->access$2000(Lcom/parrot/freeflight/flightplan/ui/MapUIController;)Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/model/FlightPlanDataCenter;->getNbWayPoints()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1079
    return-void

    .line 1078
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
