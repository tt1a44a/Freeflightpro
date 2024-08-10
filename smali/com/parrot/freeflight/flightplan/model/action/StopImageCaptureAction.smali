.class public Lcom/parrot/freeflight/flightplan/model/action/StopImageCaptureAction;
.super Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
.source "StopImageCaptureAction.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "ImageStopCapture"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;-><init>()V

    return-void
.end method


# virtual methods
.method public createMissionItem()Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->CreateMavlinkImageStopCaptureMissionItem()Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 35
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
    .line 21
    return-void
.end method

.method public initWithMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)V
    .locals 0
    .param p1, "missionItem"    # Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    return-void
.end method

.method public onActionFound(Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-interface {p1, p0}, Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;->onStopImageActionFound(Lcom/parrot/freeflight/flightplan/model/action/StopImageCaptureAction;)V

    .line 46
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
    .line 16
    const-string/jumbo v0, "type"

    const-string v1, "ImageStopCapture"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "ImageStopCapture"

    return-object v0
.end method
