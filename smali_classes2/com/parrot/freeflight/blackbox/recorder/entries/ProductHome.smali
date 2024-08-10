.class public Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;
.super Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
.source "ProductHome.java"


# static fields
.field private static final ALTITUDE_KEY:Ljava/lang/String; = "altitude"

.field private static final LATITUDE_KEY:Ljava/lang/String; = "latitude"

.field private static final LONGITUDE_KEY:Ljava/lang/String; = "longitude"

.field private static final MINIMUM_NOTIFY_COUNT:I = 0x1

.field private static final PRODUCT_HOME_KEY:Ljava/lang/String; = "product_home"


# instance fields
.field private mAltitude:D

.field private mLatitude:D

.field private mLongitude:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 26
    const/16 v0, 0x8

    invoke-direct {p0, v1, v0, v1}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;-><init>(III)V

    .line 27
    invoke-virtual {p0}, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;->clear()V

    .line 28
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const-wide v0, 0x407f400000000000L    # 500.0

    .line 32
    invoke-super {p0}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;->clear()V

    .line 33
    iput-wide v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;->mLatitude:D

    .line 34
    iput-wide v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;->mLongitude:D

    .line 35
    iput-wide v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;->mAltitude:D

    .line 36
    return-void
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 59
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "type"

    const-string v4, "product_home"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v3, "timestamp"

    iget-wide v4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;->mTimestamp:D

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 63
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 64
    .local v1, "homeLocation":Lorg/json/JSONObject;
    const-string v3, "latitude"

    iget-wide v4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;->mLatitude:D

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 65
    const-string v3, "longitude"

    iget-wide v4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;->mLongitude:D

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 66
    const-string v3, "altitude"

    iget-wide v4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;->mAltitude:D

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 67
    const-string v3, "datas"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v1    # "homeLocation":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public update(DLcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 11
    .param p1, "timestamp"    # D
    .param p3, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-virtual {p3}, Lcom/parrot/freeflight/core/model/DroneModel;->getHomePosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v4

    .line 41
    .local v4, "location":Landroid/location/Location;
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 42
    .local v2, "latitude":D
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 43
    .local v6, "longitude":D
    invoke-virtual {v4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    .line 45
    .local v0, "altitude":D
    iget-wide v8, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;->mLatitude:D

    cmpl-double v5, v8, v2

    if-nez v5, :cond_0

    iget-wide v8, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;->mLongitude:D

    cmpl-double v5, v8, v6

    if-nez v5, :cond_0

    iget-wide v8, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;->mAltitude:D

    cmpl-double v5, v8, v0

    if-eqz v5, :cond_1

    .line 48
    :cond_0
    iput-wide p1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;->mTimestamp:D

    .line 49
    iput-wide v2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;->mLatitude:D

    .line 50
    iput-wide v6, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;->mLongitude:D

    .line 51
    iput-wide v0, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;->mAltitude:D

    .line 52
    iget v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;->mVariableUpdatedCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/ProductHome;->mVariableUpdatedCount:I

    .line 54
    :cond_1
    return-void
.end method
