.class public Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
.super Ljava/lang/Object;
.source "SavedPlanMapInfo.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/model/IJsonAble;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPERTY_LATITUDE:Ljava/lang/String; = "latitude"

.field private static final PROPERTY_LATITUDE_DELTA:Ljava/lang/String; = "latitudeDelta"

.field private static final PROPERTY_LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final PROPERTY_LONGITUDE_DELTA:Ljava/lang/String; = "longitudeDelta"

.field private static final PROPERTY_MAP_TYPE:Ljava/lang/String; = "mapType"

.field private static final PROPERTY_ROTATION:Ljava/lang/String; = "rotation"

.field private static final PROPERTY_TILT:Ljava/lang/String; = "tilt"

.field private static final PROPERTY_ZOOM_LEVEL:Ljava/lang/String; = "zoomLevel"


# instance fields
.field private mCenterLat:D

.field private mCenterLng:D

.field private mLatitudeDelta:D

.field private mLongitudeDelta:D

.field private mMapType:I

.field private mRotation:F

.field private mTilt:F

.field private mZoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo$1;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo$1;-><init>()V

    sput-object v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mMapType:I

    .line 39
    return-void
.end method

.method public constructor <init>(DDDDFFFI)V
    .locals 1
    .param p1, "centerLat"    # D
    .param p3, "centerLng"    # D
    .param p5, "deltaLat"    # D
    .param p7, "deltaLng"    # D
    .param p9, "zoom"    # F
    .param p10, "tilt"    # F
    .param p11, "rotation"    # F
    .param p12, "mapType"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mMapType:I

    .line 42
    iput-wide p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLat:D

    .line 43
    iput-wide p3, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLng:D

    .line 44
    iput-wide p5, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLatitudeDelta:D

    .line 45
    iput-wide p7, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLongitudeDelta:D

    .line 46
    iput p9, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mZoom:F

    .line 47
    iput p10, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mTilt:F

    .line 48
    iput p11, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mRotation:F

    .line 49
    iput p12, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mMapType:I

    .line 50
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mMapType:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLat:D

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLng:D

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLatitudeDelta:D

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLongitudeDelta:D

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mZoom:F

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mTilt:F

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mRotation:F

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mMapType:I

    .line 62
    return-void
.end method

.method public static buildFromMap(Lcom/parrot/freeflight/map/IMap;)Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
    .locals 15
    .param p0, "map"    # Lcom/parrot/freeflight/map/IMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 221
    invoke-interface {p0}, Lcom/parrot/freeflight/map/IMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 222
    .local v0, "cameraPosition":Lcom/google/android/gms/maps/model/CameraPosition;
    invoke-interface {p0}, Lcom/parrot/freeflight/map/IMap;->getBound()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v14

    .line 224
    .local v14, "latLngBounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    new-instance v1, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;

    iget-object v2, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v4, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object v6, v14, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v8, v14, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    iget-object v8, v14, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object v10, v14, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v10, v10, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v8, v10

    iget v10, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    iget v11, v0, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    iget v12, v0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    .line 226
    invoke-interface {p0}, Lcom/parrot/freeflight/map/IMap;->getMapType()I

    move-result v13

    invoke-direct/range {v1 .. v13}, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;-><init>(DDDDFFFI)V

    .line 224
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 132
    :cond_0
    :goto_0
    return v2

    .line 121
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 123
    check-cast v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;

    .line 125
    .local v0, "that":Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;
    iget-wide v4, v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLat:D

    iget-wide v6, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLat:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_0

    .line 126
    iget-wide v4, v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLng:D

    iget-wide v6, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLng:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_0

    .line 127
    iget-wide v4, v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLatitudeDelta:D

    iget-wide v6, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLatitudeDelta:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_0

    .line 128
    iget-wide v4, v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLongitudeDelta:D

    iget-wide v6, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLongitudeDelta:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_0

    .line 129
    iget v3, v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mZoom:F

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mZoom:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 130
    iget v3, v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mTilt:F

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mTilt:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 131
    iget v3, v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mRotation:F

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mRotation:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 132
    iget v3, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mMapType:I

    iget v4, v0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mMapType:I

    if-ne v3, v4, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public getCenterLat()D
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLat:D

    return-wide v0
.end method

.method public getCenterLng()D
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLng:D

    return-wide v0
.end method

.method public getLatitudeDelta()D
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLatitudeDelta:D

    return-wide v0
.end method

.method public getLongitudeDelta()D
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLongitudeDelta:D

    return-wide v0
.end method

.method public getMapType()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mMapType:I

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mRotation:F

    return v0
.end method

.method public getTilt()F
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mTilt:F

    return v0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mZoom:F

    return v0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/16 v8, 0x20

    .line 139
    iget-wide v6, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLat:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 140
    .local v2, "temp":J
    ushr-long v6, v2, v8

    xor-long/2addr v6, v2

    long-to-int v0, v6

    .line 141
    .local v0, "result":I
    iget-wide v6, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLng:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 142
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v6, v2, v8

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v0, v1, v5

    .line 143
    iget-wide v6, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLatitudeDelta:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 144
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v6, v2, v8

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v0, v1, v5

    .line 145
    iget-wide v6, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLongitudeDelta:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 146
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v6, v2, v8

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v0, v1, v5

    .line 147
    mul-int/lit8 v5, v0, 0x1f

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mZoom:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mZoom:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :goto_0
    add-int v0, v5, v1

    .line 148
    mul-int/lit8 v5, v0, 0x1f

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mTilt:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mTilt:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :goto_1
    add-int v0, v5, v1

    .line 149
    mul-int/lit8 v1, v0, 0x1f

    iget v5, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mRotation:F

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_0

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mRotation:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    :cond_0
    add-int v0, v1, v4

    .line 150
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mMapType:I

    add-int v0, v1, v4

    .line 151
    return v0

    :cond_1
    move v1, v4

    .line 147
    goto :goto_0

    :cond_2
    move v1, v4

    .line 148
    goto :goto_1
.end method

.method public initWithJsonObject(Lorg/json/JSONObject;)V
    .locals 5
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
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 107
    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLat:D

    .line 108
    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLng:D

    .line 109
    const-string/jumbo v0, "zoomLevel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "zoomLevel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_2
    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mZoom:F

    .line 110
    const-string v0, "latitudeDelta"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "latitudeDelta"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_3
    iput-wide v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLatitudeDelta:D

    .line 111
    const-string v0, "longitudeDelta"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "longitudeDelta"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    :cond_0
    iput-wide v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLongitudeDelta:D

    .line 112
    const-string/jumbo v0, "rotation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "rotation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_4
    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mRotation:F

    .line 113
    const-string/jumbo v0, "tilt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "tilt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v4, v0

    :cond_1
    iput v4, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mTilt:F

    .line 115
    const-string v0, "mapType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "mapType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_5
    iput v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mMapType:I

    .line 116
    return-void

    :cond_2
    move-wide v0, v2

    .line 107
    goto :goto_0

    :cond_3
    move-wide v0, v2

    .line 108
    goto :goto_1

    :cond_4
    move v0, v4

    .line 109
    goto :goto_2

    :cond_5
    move-wide v0, v2

    .line 110
    goto :goto_3

    :cond_6
    move v0, v4

    .line 112
    goto :goto_4

    .line 115
    :cond_7
    const/4 v0, 0x0

    goto :goto_5
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
    .line 95
    const-string v0, "longitude"

    iget-wide v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLng:D

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 96
    const-string v0, "latitude"

    iget-wide v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLat:D

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 97
    const-string v0, "longitudeDelta"

    iget-wide v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLongitudeDelta:D

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 98
    const-string v0, "latitudeDelta"

    iget-wide v2, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLatitudeDelta:D

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 99
    const-string/jumbo v0, "zoomLevel"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mZoom:F

    float-to-double v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v0, "rotation"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mRotation:F

    float-to-double v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v0, "tilt"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mTilt:F

    float-to-double v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 102
    const-string v0, "mapType"

    iget v1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mMapType:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    return-void
.end method

.method public setCenterLat(D)V
    .locals 1
    .param p1, "centerLat"    # D

    .prologue
    .line 159
    iput-wide p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLat:D

    .line 160
    return-void
.end method

.method public setCenterLng(D)V
    .locals 1
    .param p1, "centerLng"    # D

    .prologue
    .line 167
    iput-wide p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLng:D

    .line 168
    return-void
.end method

.method public setLatitudeDelta(D)V
    .locals 1
    .param p1, "latitudeDelta"    # D

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLatitudeDelta:D

    .line 176
    return-void
.end method

.method public setLongitudeDelta(D)V
    .locals 1
    .param p1, "longitudeDelta"    # D

    .prologue
    .line 183
    iput-wide p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLongitudeDelta:D

    .line 184
    return-void
.end method

.method public setMapType(I)V
    .locals 0
    .param p1, "mapType"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mMapType:I

    .line 217
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 207
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mRotation:F

    .line 208
    return-void
.end method

.method public setTilt(F)V
    .locals 0
    .param p1, "tilt"    # F

    .prologue
    .line 199
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mTilt:F

    .line 200
    return-void
.end method

.method public setZoom(F)V
    .locals 0
    .param p1, "zoom"    # F

    .prologue
    .line 191
    iput p1, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mZoom:F

    .line 192
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 67
    iget-wide v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mCenterLng:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 68
    iget-wide v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLatitudeDelta:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 69
    iget-wide v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mLongitudeDelta:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 70
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mZoom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 71
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mTilt:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 72
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mRotation:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 73
    iget v0, p0, Lcom/parrot/freeflight/flightplan/model/plan/SavedPlanMapInfo;->mMapType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void
.end method
