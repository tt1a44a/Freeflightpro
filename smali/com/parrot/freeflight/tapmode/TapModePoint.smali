.class public Lcom/parrot/freeflight/tapmode/TapModePoint;
.super Ljava/lang/Object;
.source "TapModePoint.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/model/IJsonAble;


# static fields
.field private static final PROPERTY_ALTITUDE:Ljava/lang/String; = "altitude"

.field private static final PROPERTY_LATITUDE:Ljava/lang/String; = "latitude"

.field private static final PROPERTY_LONGITUDE:Ljava/lang/String; = "longitude"


# instance fields
.field private mAltitude:F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLatLng:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;F)V
    .locals 0
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "altitude"    # F

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/tapmode/TapModePoint;->setParams(Lcom/google/android/gms/maps/model/LatLng;F)V

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    if-ne p0, p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    .line 50
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

    .line 52
    check-cast v0, Lcom/parrot/freeflight/tapmode/TapModePoint;

    .line 54
    .local v0, "wayPoint":Lcom/parrot/freeflight/tapmode/TapModePoint;
    iget v3, v0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mAltitude:F

    iget v4, p0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mAltitude:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 55
    :cond_4
    iget-object v3, p0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, v0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAltitude()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mAltitude:F

    return v0
.end method

.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 61
    iget v1, p0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mAltitude:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mAltitude:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 62
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/LatLng;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 63
    return v0

    .line 61
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initWithJsonObject(Lorg/json/JSONObject;)V
    .locals 8
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
    const-wide/16 v6, 0x0

    .line 41
    const-string v4, "altitude"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "altitude"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    :goto_0
    iput v4, p0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mAltitude:F

    .line 42
    const-string v4, "latitude"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "latitude"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 43
    .local v0, "lat":D
    :goto_1
    const-string v4, "longitude"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "longitude"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 44
    .local v2, "lon":D
    :goto_2
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v4, p0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 45
    return-void

    .line 41
    .end local v0    # "lat":D
    .end local v2    # "lon":D
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move-wide v0, v6

    .line 42
    goto :goto_1

    .restart local v0    # "lat":D
    :cond_2
    move-wide v2, v6

    .line 43
    goto :goto_2
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
    const-string v0, "latitude"

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 35
    const-string v0, "longitude"

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 36
    const-string v0, "altitude"

    iget v1, p0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mAltitude:F

    float-to-double v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 37
    return-void
.end method

.method public setAltitude(F)V
    .locals 0
    .param p1, "altitude"    # F

    .prologue
    .line 79
    iput p1, p0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mAltitude:F

    .line 80
    return-void
.end method

.method public setLatLng(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    iput-object p1, p0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 89
    return-void
.end method

.method public setParams(Lcom/google/android/gms/maps/model/LatLng;F)V
    .locals 0
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "altitude"    # F

    .prologue
    .line 28
    iput-object p1, p0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 29
    iput p2, p0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mAltitude:F

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WayPoint{altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mAltitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModePoint;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
