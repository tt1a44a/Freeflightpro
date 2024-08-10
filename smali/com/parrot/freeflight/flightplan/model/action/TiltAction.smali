.class public Lcom/parrot/freeflight/flightplan/model/action/TiltAction;
.super Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
.source "TiltAction.java"


# static fields
.field private static final ANGLE:Ljava/lang/String; = "angle"

.field private static final SPEED:Ljava/lang/String; = "speed"

.field public static final TYPE:Ljava/lang/String; = "Tilt"


# instance fields
.field private mVerticalAngle:F

.field private mVerticalSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "angle"    # F
    .param p2, "speed"    # F

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;-><init>()V

    .line 23
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalAngle:F

    .line 24
    iput p2, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalSpeed:F

    .line 25
    return-void
.end method


# virtual methods
.method public createMissionItem()Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 43
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalAngle:F

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalSpeed:F

    invoke-static {v2, v0, v2, v1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->CreateMavlinkCreatePanoramaMissionItem(FFFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    if-ne p0, p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 57
    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;

    .line 59
    .local v0, "that":Lcom/parrot/freeflight/flightplan/model/action/TiltAction;
    iget v3, v0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalAngle:F

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalAngle:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 60
    :cond_4
    iget v3, v0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalSpeed:F

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalSpeed:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getVerticalAngle()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalAngle:F

    return v0
.end method

.method public getVerticalSpeed()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalSpeed:F

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 66
    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalAngle:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalAngle:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 67
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalSpeed:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalSpeed:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 68
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 66
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
    .line 36
    const-string v0, "angle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalAngle:F

    .line 37
    const-string/jumbo v0, "speed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalSpeed:F

    .line 38
    return-void
.end method

.method public initWithMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)V
    .locals 1
    .param p1, "missionItem"    # Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getParam2()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalAngle:F

    .line 49
    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getParam4()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalSpeed:F

    .line 50
    return-void
.end method

.method public onActionFound(Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    invoke-interface {p1, p0}, Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;->onTiltActionFound(Lcom/parrot/freeflight/flightplan/model/action/TiltAction;)V

    .line 95
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
    .line 29
    const-string/jumbo v0, "type"

    const-string v1, "Tilt"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string v0, "angle"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalAngle:F

    float-to-double v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 31
    const-string/jumbo v0, "speed"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalSpeed:F

    float-to-double v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 32
    return-void
.end method

.method public setVerticalAngle(F)V
    .locals 0
    .param p1, "verticalAngle"    # F

    .prologue
    .line 81
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalAngle:F

    .line 82
    return-void
.end method

.method public setVerticalSpeed(F)V
    .locals 0
    .param p1, "verticalSpeed"    # F

    .prologue
    .line 89
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalSpeed:F

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tilt{VerticalAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", VerticalSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/action/TiltAction;->mVerticalSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
