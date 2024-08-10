.class public Lcom/parrot/freeflight/flightplan/utils/MathForGoogleMap;
.super Ljava/lang/Object;
.source "MathForGoogleMap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLng;F)F
    .locals 6
    .param p0, "latLng1"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "alt1"    # F
    .param p2, "latLng2"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "alt2"    # F

    .prologue
    .line 51
    invoke-static {p0, p2}, Lcom/parrot/freeflight/flightplan/utils/MathForGoogleMap;->computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    .line 52
    .local v0, "groundDistance":F
    sub-float v1, p3, p1

    .line 53
    .local v1, "height":F
    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F
    .locals 9
    .param p0, "latLng1"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "latLng2"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v8, v0, [F

    .line 38
    .local v8, "result":[F
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 39
    const/4 v0, 0x0

    aget v0, v8, v0

    return v0
.end method

.method public static createLatLng(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/LatLng;
    .locals 14
    .param p0, "start"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "bearing"    # F
    .param p2, "distance"    # F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 70
    const v6, 0x4ac26d70    # 6371000.0f

    div-float v0, p2, v6

    .line 71
    .local v0, "angularDist":F
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 72
    .local v1, "bearingRad":F
    iget-wide v6, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v2, v6

    .line 73
    .local v2, "latRad":F
    iget-wide v6, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 75
    .local v3, "lngRad":F
    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    float-to-double v8, v2

    .line 76
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 75
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 78
    .local v4, "newPointLat":F
    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v6, v6

    add-float v5, v3, v6

    .line 80
    .local v5, "newPointLng":F
    float-to-double v6, v5

    const-wide v8, 0x4022d97c7f3321d2L    # 9.42477796076938

    add-double/2addr v6, v8

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    rem-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr v6, v8

    double-to-float v5, v6

    .line 82
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v6
.end method

.method public static getCenter(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 10
    .param p0, "latLng1"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "latLng2"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 57
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    add-double/2addr v2, v4

    div-double/2addr v2, v8

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    add-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public static getZoomForMetersWide(DDD)D
    .locals 10
    .param p0, "distanceInMeters"    # D
    .param p2, "windowWidth"    # D
    .param p4, "latitude"    # D

    .prologue
    .line 23
    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 24
    .local v2, "latitudinalAdjustment":D
    const-wide v6, 0x415854a700000000L    # 6378140.0

    mul-double/2addr v6, p2

    mul-double/2addr v6, v2

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    mul-double/2addr v8, p0

    div-double v0, v6, v8

    .line 25
    .local v0, "arg":D
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double v4, v6, v8

    .line 27
    .local v4, "zoom":D
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x4035000000000000L    # 21.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    return-wide v6
.end method

.method public static metersToScreenDistance(Lcom/parrot/freeflight/map/IProjection;FLcom/google/android/gms/maps/model/LatLng;)F
    .locals 5
    .param p0, "mapProjection"    # Lcom/parrot/freeflight/map/IProjection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "distance"    # F
    .param p2, "refLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 86
    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p2, v3, v4}, Lcom/parrot/freeflight/flightplan/utils/MathForGoogleMap;->createLatLng(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 87
    .local v0, "dstLatLng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-interface {p0, p2}, Lcom/parrot/freeflight/map/IProjection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v2

    .line 88
    .local v2, "refScreenPoint":Landroid/graphics/Point;
    invoke-interface {p0, v0}, Lcom/parrot/freeflight/map/IProjection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v1

    .line 89
    .local v1, "dstScreenPoint":Landroid/graphics/Point;
    invoke-static {v2, v1}, Lcom/parrot/freeflight/util/Geometry;->dist(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v3

    return v3
.end method
