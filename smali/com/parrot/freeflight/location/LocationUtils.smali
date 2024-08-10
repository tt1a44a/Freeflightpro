.class public Lcom/parrot/freeflight/location/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# static fields
.field private static final INVALID_LOCATION:D = 500.0

.field private static final LAT_MAX:D = 90.0

.field private static final LAT_MIN:D = -90.0

.field private static final LNG_MAX:D = 180.0

.field private static final LNG_MIN:D = -180.0

.field private static final LOCATION_EPSILON:D = 1.0E-7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAbsRotation(F)F
    .locals 1
    .param p0, "rotation"    # F

    .prologue
    .line 135
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 136
    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p0, v0

    .line 138
    .end local p0    # "rotation":F
    :cond_0
    return p0
.end method

.method public static getAngle(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 4
    .param p0, "from"    # Landroid/graphics/Point;
    .param p1, "to"    # Landroid/graphics/Point;

    .prologue
    .line 148
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getBetterLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .locals 16
    .param p0, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "currentBestLocation"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 25
    if-nez p0, :cond_1

    .line 59
    .end local p1    # "currentBestLocation":Landroid/location/Location;
    :cond_0
    :goto_0
    return-object p1

    .line 27
    .restart local p1    # "currentBestLocation":Landroid/location/Location;
    :cond_1
    if-nez p1, :cond_2

    move-object/from16 p1, p0

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    const v0, 0x1d4c0

    .line 32
    .local v0, "TWO_MINUTES":I
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v14

    sub-long v10, v12, v14

    .line 33
    .local v10, "timeDelta":J
    int-to-long v12, v0

    cmp-long v9, v10, v12

    if-lez v9, :cond_3

    const/4 v7, 0x1

    .line 34
    .local v7, "isSignificantlyNewer":Z
    :goto_1
    neg-int v9, v0

    int-to-long v12, v9

    cmp-long v9, v10, v12

    if-gez v9, :cond_4

    const/4 v8, 0x1

    .line 35
    .local v8, "isSignificantlyOlder":Z
    :goto_2
    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_5

    const/4 v5, 0x1

    .line 39
    .local v5, "isNewer":Z
    :goto_3
    if-eqz v7, :cond_6

    move-object/from16 p1, p0

    .line 40
    goto :goto_0

    .line 33
    .end local v5    # "isNewer":Z
    .end local v7    # "isSignificantlyNewer":Z
    .end local v8    # "isSignificantlyOlder":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 34
    .restart local v7    # "isSignificantlyNewer":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 35
    .restart local v8    # "isSignificantlyOlder":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 41
    .restart local v5    # "isNewer":Z
    :cond_6
    if-nez v8, :cond_0

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAccuracy()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v12

    sub-float/2addr v9, v12

    float-to-int v1, v9

    .line 48
    .local v1, "accuracyDelta":I
    if-lez v1, :cond_9

    const/4 v3, 0x1

    .line 49
    .local v3, "isLessAccurate":Z
    :goto_4
    if-gez v1, :cond_a

    const/4 v4, 0x1

    .line 50
    .local v4, "isMoreAccurate":Z
    :goto_5
    const/16 v9, 0xc8

    if-le v1, v9, :cond_b

    const/4 v6, 0x1

    .line 53
    .local v6, "isSignificantlyLessAccurate":Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/parrot/freeflight/location/LocationUtils;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 56
    .local v2, "isFromSameProvider":Z
    if-nez v4, :cond_8

    if-eqz v5, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    if-eqz v5, :cond_0

    if-nez v6, :cond_0

    if-eqz v2, :cond_0

    :cond_8
    move-object/from16 p1, p0

    .line 57
    goto :goto_0

    .line 48
    .end local v2    # "isFromSameProvider":Z
    .end local v3    # "isLessAccurate":Z
    .end local v4    # "isMoreAccurate":Z
    .end local v6    # "isSignificantlyLessAccurate":Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    .line 49
    .restart local v3    # "isLessAccurate":Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_5

    .line 50
    .restart local v4    # "isMoreAccurate":Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_6
.end method

.method public static getDeltaAngle(FF)F
    .locals 4
    .param p0, "from"    # F
    .param p1, "to"    # F

    .prologue
    const/high16 v3, 0x43340000    # 180.0f

    .line 142
    sub-float v0, p1, p0

    .line 143
    .local v0, "angle":F
    add-float v1, v0, v3

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    sub-float v0, v1, v3

    .line 144
    return v0
.end method

.method public static getDistance(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 4
    .param p0, "from"    # Landroid/graphics/Point;
    .param p1, "to"    # Landroid/graphics/Point;

    .prologue
    .line 152
    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/graphics/Point;->x:I

    sub-int v0, v2, v3

    .line 153
    .local v0, "x":I
    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    sub-int v1, v2, v3

    .line 154
    .local v1, "y":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public static isLocationEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 114
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_1

    .line 115
    const/4 v2, 0x0

    .line 117
    .local v2, "locationMode":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 123
    :goto_0
    if-eqz v2, :cond_0

    .line 126
    .end local v2    # "locationMode":I
    :goto_1
    return v3

    .line 119
    .restart local v2    # "locationMode":I
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v3, v4

    .line 123
    goto :goto_1

    .line 125
    .end local v2    # "locationMode":I
    :cond_1
    const-string v5, "location"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 126
    .local v1, "locationManager":Landroid/location/LocationManager;
    const-string v5, "gps"

    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "network"

    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public static isSamePosition(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 8
    .param p0, "first"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "second"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 73
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 74
    :cond_0
    if-ne p0, p1, :cond_2

    move v0, v6

    :goto_0
    move v6, v0

    .line 76
    :cond_1
    :goto_1
    return v6

    :cond_2
    move v0, v7

    .line 74
    goto :goto_0

    .line 76
    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/DoubleUtils;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/util/DoubleUtils;->equals(DDD)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_4
    move v6, v7

    goto :goto_1
.end method

.method private static isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "provider1"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "provider2"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    if-nez p0, :cond_1

    .line 67
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isValidLocation(Landroid/location/Location;)Z
    .locals 4
    .param p0, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const-wide v2, 0x407f400000000000L    # 500.0

    .line 81
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static latLngFromValues(DD)Lcom/google/android/gms/maps/model/LatLng;
    .locals 2
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 105
    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_0

    .line 107
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 109
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static latlngToLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/location/Location;
    .locals 4
    .param p0, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 94
    if-eqz p0, :cond_0

    .line 95
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "location":Landroid/location/Location;
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 97
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 100
    .end local v0    # "location":Landroid/location/Location;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static locationToLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 6
    .param p0, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 86
    invoke-static {p0}, Lcom/parrot/freeflight/location/LocationUtils;->isValidLocation(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needLocationForBleScan()Z
    .locals 2

    .prologue
    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
