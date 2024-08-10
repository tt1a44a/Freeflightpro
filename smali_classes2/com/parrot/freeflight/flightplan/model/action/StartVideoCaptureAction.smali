.class public Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;
.super Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
.source "StartVideoCaptureAction.java"


# static fields
.field private static final CAMERAID:Ljava/lang/String; = "cameraId"

.field private static final FPS:Ljava/lang/String; = "fps"

.field private static final RESOLUTION:Ljava/lang/String; = "resolution"

.field public static final TYPE:Ljava/lang/String; = "VideoStartCapture"


# instance fields
.field private mCameraId:I

.field private mFps:I

.field private mResolution:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mCameraId:I

    .line 25
    const/16 v0, 0x1e

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mFps:I

    .line 27
    const v0, 0x49fd2000    # 2073600.0f

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mResolution:F

    .line 28
    return-void
.end method


# virtual methods
.method public createMissionItem()Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 48
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mCameraId:I

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mFps:I

    int-to-float v1, v1

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mResolution:F

    invoke-static {v0, v1, v2}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->CreateMavlinkVideoStartCaptureMissionItem(IFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 67
    :cond_0
    :goto_0
    return v2

    .line 61
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 63
    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;

    .line 65
    .local v0, "that":Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;
    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mCameraId:I

    iget v4, v0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mCameraId:I

    if-ne v3, v4, :cond_0

    .line 66
    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mFps:I

    iget v4, v0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mFps:I

    if-ne v3, v4, :cond_0

    .line 67
    iget v3, v0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mResolution:F

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mResolution:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mCameraId:I

    return v0
.end method

.method public getFps()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mFps:I

    return v0
.end method

.method public getResolution()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mResolution:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 73
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mCameraId:I

    .line 74
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mFps:I

    add-int v0, v1, v2

    .line 75
    mul-int/lit8 v2, v0, 0x1f

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mResolution:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mResolution:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 76
    return v0

    .line 75
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initWithJsonObject(Lorg/json/JSONObject;)V
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
    .line 40
    const-string v0, "cameraId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mCameraId:I

    .line 41
    const-string v0, "resolution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mResolution:F

    .line 42
    const-string v0, "fps"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mFps:I

    .line 43
    return-void
.end method

.method public initWithMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)V
    .locals 1
    .param p1, "missionItem"    # Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getParam1()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mCameraId:I

    .line 54
    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getParam2()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mFps:I

    .line 55
    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getParam3()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mResolution:F

    .line 56
    return-void
.end method

.method public onActionFound(Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 110
    invoke-interface {p1, p0}, Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;->onStartVideoActionFound(Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;)V

    .line 111
    return-void
.end method

.method public saveToJsonObject(Lorg/json/JSONObject;)V
    .locals 4
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
    .line 32
    const-string v0, "type"

    const-string v1, "VideoStartCapture"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v0, "cameraId"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mCameraId:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    const-string v0, "resolution"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mResolution:F

    float-to-double v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 35
    const-string v0, "fps"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mFps:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    return-void
.end method

.method public setCameraId(I)V
    .locals 0
    .param p1, "cameraId"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mCameraId:I

    .line 90
    return-void
.end method

.method public setFps(I)V
    .locals 0
    .param p1, "fps"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mFps:I

    .line 98
    return-void
.end method

.method public setResolution(F)V
    .locals 0
    .param p1, "resolution"    # F

    .prologue
    .line 105
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;->mResolution:F

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "VideoStartCapture"

    return-object v0
.end method
