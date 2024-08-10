.class public Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;
.super Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
.source "StartImageCaptureAction.java"


# static fields
.field private static final NB_OF_PICTURE:Ljava/lang/String; = "nbOfPictures"

.field private static final PERIOD:Ljava/lang/String; = "period"

.field private static final RESOLUTION:Ljava/lang/String; = "resolution"

.field public static final TYPE:Ljava/lang/String; = "ImageStartCapture"


# instance fields
.field private mNbOfPicture:I

.field private mPeriod:F

.field private mResolution:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mNbOfPicture:I

    .line 24
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "period"    # F
    .param p2, "resolution"    # F

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;-><init>()V

    .line 27
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mPeriod:F

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mNbOfPicture:I

    .line 29
    iput p2, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mResolution:F

    .line 30
    return-void
.end method


# virtual methods
.method public createMissionItem()Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 50
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mPeriod:F

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mNbOfPicture:I

    int-to-float v1, v1

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mResolution:F

    invoke-static {v0, v1, v2}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->CreateMavlinkImageStartCaptureMissionItem(FFF)Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 69
    :cond_0
    :goto_0
    return v2

    .line 63
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 65
    check-cast v0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;

    .line 67
    .local v0, "that":Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;
    iget v3, v0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mPeriod:F

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mPeriod:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 68
    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mNbOfPicture:I

    iget v4, v0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mNbOfPicture:I

    if-ne v3, v4, :cond_0

    .line 69
    iget v3, v0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mResolution:F

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mResolution:F

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

.method public getNbOfPicture()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mNbOfPicture:I

    return v0
.end method

.method public getPeriod()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mPeriod:F

    return v0
.end method

.method public getResolution()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mResolution:F

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 75
    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mPeriod:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mPeriod:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 76
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mNbOfPicture:I

    add-int v0, v2, v3

    .line 77
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mResolution:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mResolution:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 78
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 75
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
    .line 42
    const-string v0, "period"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mPeriod:F

    .line 43
    const-string v0, "resolution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mResolution:F

    .line 44
    const-string v0, "nbOfPictures"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mNbOfPicture:I

    .line 45
    return-void
.end method

.method public initWithMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)V
    .locals 1
    .param p1, "missionItem"    # Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getParam1()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mPeriod:F

    .line 56
    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getParam2()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mNbOfPicture:I

    .line 57
    invoke-virtual {p1}, Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;->getParam3()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mResolution:F

    .line 58
    return-void
.end method

.method public onActionFound(Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 112
    invoke-interface {p1, p0}, Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;->onStartImageActionFound(Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;)V

    .line 113
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
    .line 34
    const-string v0, "type"

    const-string v1, "ImageStartCapture"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v0, "period"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mPeriod:F

    float-to-double v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 36
    const-string v0, "resolution"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mResolution:F

    float-to-double v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 37
    const-string v0, "nbOfPictures"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mNbOfPicture:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    return-void
.end method

.method public setNbOfPicture(I)V
    .locals 0
    .param p1, "nbOfPicture"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mNbOfPicture:I

    .line 100
    return-void
.end method

.method public setPeriod(F)V
    .locals 0
    .param p1, "period"    # F

    .prologue
    .line 91
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mPeriod:F

    .line 92
    return-void
.end method

.method public setResolution(F)V
    .locals 0
    .param p1, "resolution"    # F

    .prologue
    .line 107
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mResolution:F

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageStartCapture{period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mPeriod:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;->mResolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
