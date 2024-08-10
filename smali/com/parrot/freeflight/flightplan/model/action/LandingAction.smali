.class public Lcom/parrot/freeflight/flightplan/model/action/LandingAction;
.super Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
.source "LandingAction.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "Landing"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;-><init>()V

    return-void
.end method


# virtual methods
.method public createMissionItem()Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please use createMissionItem(TapModeWayPoint previousWayPoint) function"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createMissionItem(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 6
    .param p1, "previousWayPoint"    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 21
    if-nez p1, :cond_0

    .line 23
    invoke-static {v0, v0, v0, v0}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->CreateMavlinkLandMissionItem(FFFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    move-result-object v2

    .line 27
    :goto_0
    return-object v2

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLandingMode()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getAltitude()F

    move-result v0

    .line 26
    .local v0, "altitude":F
    :cond_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLandingLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 27
    .local v1, "landingLatLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    double-to-float v2, v2

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    double-to-float v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getYaw()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v2, v3, v0, v4}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->CreateMavlinkLandMissionItem(FFFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    move-result-object v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 52
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initWithJsonObject(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jsonData"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    return-void
.end method

.method public initWithMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)V
    .locals 0
    .param p1, "missionItem"    # Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    return-void
.end method

.method public onActionFound(Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-interface {p1, p0}, Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;->onLandingActionFound(Lcom/parrot/freeflight/flightplan/model/action/LandingAction;)V

    .line 63
    return-void
.end method

.method public saveToJsonObject(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsonData"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 33
    const-string/jumbo v0, "type"

    const-string v1, "Landing"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "Landing"

    return-object v0
.end method
