.class public interface abstract Lcom/parrot/freeflight/map/IMap;
.super Ljava/lang/Object;
.source "IMap.java"


# static fields
.field public static final EARTH_RADIUS:I = 0x6136b8

.field public static final MAX_BOUND_LATITUDE:I = 0x5a

.field public static final MAX_BOUND_LONGITUDE:I = 0xb4


# virtual methods
.method public abstract addMarker(Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Bitmap;F)Lcom/parrot/freeflight/map/IMarker;
    .param p1    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract addPolygonWithHole(DDDI)V
.end method

.method public abstract addPolyline(ZFLjava/util/List;Ljava/util/List;)V
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZF",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract getBound()Lcom/google/android/gms/maps/model/LatLngBounds;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getMapType()I
.end method

.method public abstract getNormalizedZoom(F)F
.end method

.method public abstract getProjection()Lcom/parrot/freeflight/map/IProjection;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract isMapLoadMayBeFailed()Z
.end method

.method public abstract moveCamera(DDZ)V
.end method

.method public abstract moveCamera(Lcom/google/android/gms/maps/model/CameraPosition;Z)V
    .param p1    # Lcom/google/android/gms/maps/model/CameraPosition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract moveCamera(Lcom/google/android/gms/maps/model/LatLng;FFZ)V
    .param p1    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract moveCamera(Lcom/google/android/gms/maps/model/LatLngBounds;IIIZ)V
    .param p1    # Lcom/google/android/gms/maps/model/LatLngBounds;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract moveCamera(Lcom/google/android/gms/maps/model/LatLngBounds;IZ)V
    .param p1    # Lcom/google/android/gms/maps/model/LatLngBounds;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setAllGesturesEnabled(Z)V
.end method

.method public abstract setBuildingsEnabled(Z)V
.end method

.method public abstract setCompassEnabled(Z)V
.end method

.method public abstract setIndoorEnabled(Z)V
.end method

.method public abstract setMapType(I)V
.end method

.method public abstract setMyLocationEnabled(Z)V
.end method

.method public abstract setOnCameraIdleListener(Lcom/parrot/freeflight/map/ICameraChangeListener;)V
    .param p1    # Lcom/parrot/freeflight/map/ICameraChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setOnCameraMoveListener(Lcom/parrot/freeflight/map/ICameraChangeListener;)V
    .param p1    # Lcom/parrot/freeflight/map/ICameraChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V
    .param p1    # Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V
    .param p1    # Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V
    .param p1    # Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setPadding(IIII)V
.end method

.method public abstract setRotateGesturesEnabled(Z)V
.end method

.method public abstract setScrollGesturesEnabled(Z)V
.end method

.method public abstract setTiltGesturesEnabled(Z)V
.end method

.method public abstract setTrafficEnabled(Z)V
.end method

.method public abstract snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V
    .param p1    # Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract zoomTo(I)V
.end method
