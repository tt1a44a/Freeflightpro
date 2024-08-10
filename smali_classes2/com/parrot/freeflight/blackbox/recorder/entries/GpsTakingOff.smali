.class public Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;
.super Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
.source "GpsTakingOff.java"


# static fields
.field private static final MINIMUM_NOTIFY_COUNT:I = 0x1

.field private static final PRODUCT_GPS_ALTITUDE:Ljava/lang/String; = "altitude"

.field private static final PRODUCT_GPS_INVALID_POSITION:D = 500.0

.field private static final PRODUCT_GPS_LATITUDE:Ljava/lang/String; = "latitude"

.field private static final PRODUCT_GPS_LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final PRODUCT_GPS_TAKING_OFF_KEY:Ljava/lang/String; = "product_gps_takingoff"


# instance fields
.field private mAltitude:D

.field private mFlyingState:I

.field private mLatitude:D

.field private mLongitude:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 30
    const/16 v0, 0xd

    invoke-direct {p0, v1, v0, v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;-><init>(III)V

    .line 31
    invoke-virtual {p0}, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;->clear()V

    .line 32
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const-wide v2, 0x407f400000000000L    # 500.0

    .line 36
    invoke-super {p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->clear()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;->mFlyingState:I

    .line 38
    iput-wide v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;->mLatitude:D

    .line 39
    iput-wide v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;->mLongitude:D

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;->mAltitude:D

    .line 41
    return-void
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 63
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 65
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "type"

    const-string v4, "product_gps_takingoff"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v3, "timestamp"

    iget-wide v4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;->mTimestamp:D

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 68
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .local v1, "jsonGpsData":Lorg/json/JSONObject;
    const-string v3, "latitude"

    iget-wide v4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;->mLatitude:D

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 70
    const-string v3, "longitude"

    iget-wide v4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;->mLongitude:D

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 71
    const-string v3, "altitude"

    iget-wide v4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;->mAltitude:D

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 72
    const-string v3, "datas"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1    # "jsonGpsData":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public update(DLcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 5
    .param p1, "timestamp"    # D
    .param p3, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-virtual {p3}, Lcom/parrot/freeflight/core/model/DroneModel;->getFlyingState()I

    move-result v0

    .line 47
    .local v0, "flyingState":I
    iget v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;->mFlyingState:I

    if-eq v2, v0, :cond_0

    .line 48
    iput v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;->mFlyingState:I

    .line 49
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 50
    iput-wide p1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;->mTimestamp:D

    .line 51
    invoke-virtual {p3}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v1

    .line 52
    .local v1, "position":Lcom/parrot/freeflight/core/model/DroneModel$Position;
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;->mLatitude:D

    .line 53
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;->mLongitude:D

    .line 54
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getAltitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;->mAltitude:D

    .line 55
    iget v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;->mVariableUpdatedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/GpsTakingOff;->mVariableUpdatedCount:I

    .line 58
    .end local v1    # "position":Lcom/parrot/freeflight/core/model/DroneModel$Position;
    :cond_0
    return-void
.end method
