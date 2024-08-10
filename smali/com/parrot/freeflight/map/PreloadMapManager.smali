.class public Lcom/parrot/freeflight/map/PreloadMapManager;
.super Lcom/parrot/freeflight/map/MapManager;
.source "PreloadMapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;,
        Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;,
        Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;,
        Lcom/parrot/freeflight/map/PreloadMapManager$PreloadZone;
    }
.end annotation


# static fields
.field private static final BOTTOM_LEFT_ZONE:I = 0x2

.field private static final BOTTOM_RIGHT_ZONE:I = 0x3

.field private static final MAX_DISTANCE_METERS:I = 0xbb8

.field private static final NORTH_EAST_HEADING:I = 0x2d

.field private static final NORTH_WEST_HEADING:I = 0x13b

.field private static final NUMBER_OF_WANTED_SEARCH_RESULTS:I = 0x1

.field private static final NUMBER_OF_ZONE_PER_ZOOM:I = 0x4

.field private static final SOUTH_EAST_HEADING:I = 0x87

.field private static final SOUTH_WEST_HEADING:I = 0xe1

.field private static final TOP_LEFT_ZONE:I = 0x0

.field private static final TOP_RIGHT_ZONE:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentProgress:I

.field private mCurrentTotalProgress:I

.field private final mOnCameraChangeListener:Lcom/parrot/freeflight/map/ICameraChangeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOnMapLoadedListener:Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPreloadCenterLocation:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPreloadListener:Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPreloading:Z

.field private final mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSearchListener:Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSearching:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/map/IMapView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mapView"    # Lcom/parrot/freeflight/map/IMapView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/map/MapManager;-><init>(Lcom/parrot/freeflight/map/IMapView;)V

    .line 66
    new-instance v0, Lcom/parrot/freeflight/map/PreloadMapManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/map/PreloadMapManager$1;-><init>(Lcom/parrot/freeflight/map/PreloadMapManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    .line 83
    new-instance v0, Lcom/parrot/freeflight/map/PreloadMapManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/map/PreloadMapManager$2;-><init>(Lcom/parrot/freeflight/map/PreloadMapManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mOnMapLoadedListener:Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;

    .line 108
    new-instance v0, Lcom/parrot/freeflight/map/PreloadMapManager$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/map/PreloadMapManager$3;-><init>(Lcom/parrot/freeflight/map/PreloadMapManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mOnCameraChangeListener:Lcom/parrot/freeflight/map/ICameraChangeListener;

    .line 124
    iput-object p1, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mContext:Landroid/content/Context;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/map/PreloadMapManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/map/PreloadMapManager;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/map/PreloadMapManager;->updateMap(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/map/PreloadMapManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/PreloadMapManager;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloading:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/map/PreloadMapManager;)Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/PreloadMapManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mSearchListener:Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/map/PreloadMapManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/PreloadMapManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/map/PreloadMapManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/PreloadMapManager;

    .prologue
    .line 30
    iget v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mCurrentProgress:I

    return v0
.end method

.method static synthetic access$208(Lcom/parrot/freeflight/map/PreloadMapManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/map/PreloadMapManager;

    .prologue
    .line 30
    iget v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mCurrentProgress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mCurrentProgress:I

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/map/PreloadMapManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/PreloadMapManager;

    .prologue
    .line 30
    iget v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mCurrentTotalProgress:I

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/map/PreloadMapManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/map/PreloadMapManager;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/parrot/freeflight/map/PreloadMapManager;->stopPreload()V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/map/PreloadMapManager;)Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/PreloadMapManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadListener:Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/map/PreloadMapManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/map/PreloadMapManager;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/parrot/freeflight/map/PreloadMapManager;->processPreload()V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/map/PreloadMapManager;)Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/PreloadMapManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mOnMapLoadedListener:Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;

    return-object v0
.end method

.method static synthetic access$902(Lcom/parrot/freeflight/map/PreloadMapManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/map/PreloadMapManager;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mSearching:Z

    return p1
.end method

.method private processPreload()V
    .locals 14

    .prologue
    .line 260
    iget-object v8, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadCenterLocation:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v8, :cond_0

    .line 261
    const/4 v2, 0x0

    .line 262
    .local v2, "northEastLocation":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v6, 0x0

    .line 264
    .local v6, "southWestLocation":Lcom/google/android/gms/maps/model/LatLng;
    iget v8, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mCurrentProgress:I

    if-nez v8, :cond_1

    .line 266
    iget-object v8, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadCenterLocation:Lcom/google/android/gms/maps/model/LatLng;

    const-wide v10, 0x40a7700000000000L    # 3000.0

    const-wide v12, 0x406c200000000000L    # 225.0

    invoke-static {v8, v10, v11, v12, v13}, Lcom/google/maps/android/SphericalUtil;->computeOffset(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    .line 267
    iget-object v8, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadCenterLocation:Lcom/google/android/gms/maps/model/LatLng;

    const-wide v10, 0x40a7700000000000L    # 3000.0

    const-wide v12, 0x4046800000000000L    # 45.0

    invoke-static {v8, v10, v11, v12, v13}, Lcom/google/maps/android/SphericalUtil;->computeOffset(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 300
    :goto_0
    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 303
    iget-object v8, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    iget-object v9, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mOnCameraChangeListener:Lcom/parrot/freeflight/map/ICameraChangeListener;

    invoke-interface {v8, v9}, Lcom/parrot/freeflight/map/IMap;->setOnCameraIdleListener(Lcom/parrot/freeflight/map/ICameraChangeListener;)V

    .line 304
    iget-object v8, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/parrot/freeflight/map/IMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    .line 307
    iget-object v8, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    new-instance v9, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {v9, v6, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface {v8, v9, v10, v11}, Lcom/parrot/freeflight/map/IMap;->moveCamera(Lcom/google/android/gms/maps/model/LatLngBounds;IZ)V

    .line 310
    .end local v2    # "northEastLocation":Lcom/google/android/gms/maps/model/LatLng;
    .end local v6    # "southWestLocation":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    return-void

    .line 270
    .restart local v2    # "northEastLocation":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v6    # "southWestLocation":Lcom/google/android/gms/maps/model/LatLng;
    :cond_1
    iget v8, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mCurrentProgress:I

    add-int/lit8 v4, v8, -0x1

    .line 271
    .local v4, "progress":I
    div-int/lit8 v8, v4, 0x4

    add-int/lit8 v1, v8, 0x1

    .line 272
    .local v1, "currentZoomLevel":I
    const/16 v8, 0xbb8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    int-to-double v12, v1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v9, v10

    div-int v7, v8, v9

    .line 273
    .local v7, "zoneDistance":I
    rem-int/lit8 v0, v4, 0x4

    .line 277
    .local v0, "currentZone":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 280
    :pswitch_0
    iget-object v8, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadCenterLocation:Lcom/google/android/gms/maps/model/LatLng;

    int-to-double v10, v7

    const-wide v12, 0x4073b00000000000L    # 315.0

    invoke-static {v8, v10, v11, v12, v13}, Lcom/google/maps/android/SphericalUtil;->computeOffset(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    .line 281
    .local v3, "northWestLocation":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    .end local v6    # "southWestLocation":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v8, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadCenterLocation:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v10, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 282
    .restart local v6    # "southWestLocation":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    .end local v2    # "northEastLocation":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v8, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v10, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadCenterLocation:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v10, v10, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v2, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 283
    .restart local v2    # "northEastLocation":Lcom/google/android/gms/maps/model/LatLng;
    goto :goto_0

    .line 285
    .end local v3    # "northWestLocation":Lcom/google/android/gms/maps/model/LatLng;
    :pswitch_1
    iget-object v6, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadCenterLocation:Lcom/google/android/gms/maps/model/LatLng;

    .line 286
    iget-object v8, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadCenterLocation:Lcom/google/android/gms/maps/model/LatLng;

    int-to-double v10, v7

    const-wide v12, 0x4046800000000000L    # 45.0

    invoke-static {v8, v10, v11, v12, v13}, Lcom/google/maps/android/SphericalUtil;->computeOffset(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 287
    goto :goto_0

    .line 289
    :pswitch_2
    iget-object v8, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadCenterLocation:Lcom/google/android/gms/maps/model/LatLng;

    int-to-double v10, v7

    const-wide v12, 0x406c200000000000L    # 225.0

    invoke-static {v8, v10, v11, v12, v13}, Lcom/google/maps/android/SphericalUtil;->computeOffset(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    .line 290
    iget-object v2, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadCenterLocation:Lcom/google/android/gms/maps/model/LatLng;

    .line 291
    goto :goto_0

    .line 293
    :pswitch_3
    iget-object v8, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadCenterLocation:Lcom/google/android/gms/maps/model/LatLng;

    int-to-double v10, v7

    const-wide v12, 0x4060e00000000000L    # 135.0

    invoke-static {v8, v10, v11, v12, v13}, Lcom/google/maps/android/SphericalUtil;->computeOffset(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    .line 294
    .local v5, "southEastLocation":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    .end local v6    # "southWestLocation":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v8, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v10, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadCenterLocation:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v10, v10, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 295
    .restart local v6    # "southWestLocation":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    .end local v2    # "northEastLocation":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v8, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadCenterLocation:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v10, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v2, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .restart local v2    # "northEastLocation":Lcom/google/android/gms/maps/model/LatLng;
    goto/16 :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private stopPreload()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloading:Z

    .line 251
    iput-object v2, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadCenterLocation:Lcom/google/android/gms/maps/model/LatLng;

    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/map/IMap;->setAllGesturesEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/map/IMap;->setOnCameraIdleListener(Lcom/parrot/freeflight/map/ICameraChangeListener;)V

    .line 255
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/map/IMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    .line 257
    :cond_0
    return-void
.end method

.method private updateMap(Z)V
    .locals 7
    .param p1, "recomputeMapBounds"    # Z

    .prologue
    const/4 v6, 0x0

    .line 192
    iget-object v3, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-nez v3, :cond_0

    .line 214
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mControllerLocation:Landroid/location/Location;

    invoke-static {v3}, Lcom/parrot/freeflight/location/LocationUtils;->locationToLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 199
    .local v1, "homeLatLng":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz p1, :cond_2

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "centerLatLng":Lcom/google/android/gms/maps/model/LatLng;
    const/high16 v2, 0x41880000    # 17.0f

    .line 203
    .local v2, "mapZoom":F
    if-eqz v1, :cond_1

    .line 204
    move-object v0, v1

    .line 205
    iput v6, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMapAngle:F

    .line 208
    :cond_1
    if-eqz v0, :cond_2

    .line 209
    iget-object v3, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    new-instance v4, Lcom/google/android/gms/maps/model/CameraPosition;

    iget v5, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMapAngle:F

    invoke-direct {v4, v0, v2, v6, v5}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/parrot/freeflight/map/IMap;->moveCamera(Lcom/google/android/gms/maps/model/CameraPosition;Z)V

    .line 213
    .end local v0    # "centerLatLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v2    # "mapZoom":F
    :cond_2
    iget v3, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mControllerRotation:F

    invoke-virtual {p0, v1, v3}, Lcom/parrot/freeflight/map/PreloadMapManager;->updateControllerMarker(Lcom/google/android/gms/maps/model/LatLng;F)V

    goto :goto_0
.end method


# virtual methods
.method public cancelPreload()V
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloading:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/parrot/freeflight/map/PreloadMapManager;->stopPreload()V

    .line 243
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadListener:Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadListener:Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;->preloadCancelled()V

    .line 247
    :cond_0
    return-void
.end method

.method public centerOnHome()V
    .locals 0

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/PreloadMapManager;->initMap()V

    .line 180
    return-void
.end method

.method public centerOnLocation(Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "icon"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v0, :cond_1

    .line 184
    if-eqz p2, :cond_0

    .line 185
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v0, p1, p2, v3}, Lcom/parrot/freeflight/map/IMap;->addMarker(Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Bitmap;F)Lcom/parrot/freeflight/map/IMarker;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-direct {v1, p1, v2, v3, v3}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/map/IMap;->moveCamera(Lcom/google/android/gms/maps/model/CameraPosition;Z)V

    .line 189
    :cond_1
    return-void
.end method

.method public init(Lcom/parrot/freeflight/piloting/RelativePositionController;)V
    .locals 2
    .param p1, "relativePositionController"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    const/4 v1, 0x1

    invoke-super {p0, p1, v0, v1}, Lcom/parrot/freeflight/map/MapManager;->init(Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;Z)V

    .line 129
    return-void
.end method

.method protected initMap()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/RelativePositionController;->getControllerLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mControllerLocation:Landroid/location/Location;

    .line 167
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->updateMap(Z)V

    .line 169
    :cond_0
    return-void
.end method

.method protected initMapIcons()V
    .locals 2

    .prologue
    .line 159
    iget-object v1, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v1}, Lcom/parrot/freeflight/map/IMapView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 160
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0703f2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mControllerBitmap:Landroid/graphics/Bitmap;

    .line 161
    return-void
.end method

.method protected mapReady()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadListener:Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadListener:Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;->preloadAvailable(Z)V

    .line 176
    :cond_0
    return-void
.end method

.method public removePreloadListener()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadListener:Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;

    .line 142
    return-void
.end method

.method public removeSearchListener()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mSearchListener:Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;

    .line 153
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 4
    .param p1, "search"    # Ljava/lang/String;

    .prologue
    .line 315
    iget-boolean v1, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mSearching:Z

    if-nez v1, :cond_0

    .line 316
    new-instance v0, Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;-><init>(Lcom/parrot/freeflight/map/PreloadMapManager;Lcom/parrot/freeflight/map/PreloadMapManager$1;)V

    .line 317
    .local v0, "searchTask":Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;
    invoke-static {}, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->getDefaultExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 319
    .end local v0    # "searchTask":Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;
    :cond_0
    return-void
.end method

.method public setPreloadListener(Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    iput-object p1, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadListener:Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;

    .line 134
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;->preloadAvailable(Z)V

    .line 135
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloading:Z

    if-eqz v0, :cond_0

    .line 136
    iget v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mCurrentProgress:I

    iget v1, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mCurrentTotalProgress:I

    invoke-interface {p1, v0, v1}, Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;->preloadProgress(II)V

    .line 138
    :cond_0
    return-void

    .line 134
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSearchListener(Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 145
    iput-object p1, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mSearchListener:Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;

    .line 146
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mSearching:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {p1}, Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;->isSearching()V

    .line 149
    :cond_0
    return-void
.end method

.method public startPreload(I)V
    .locals 3
    .param p1, "numberOfZooms"    # I

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v0, :cond_1

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloading:Z

    .line 221
    iput v1, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mCurrentProgress:I

    .line 223
    mul-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mCurrentTotalProgress:I

    .line 226
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/map/IMap;->setAllGesturesEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadCenterLocation:Lcom/google/android/gms/maps/model/LatLng;

    .line 232
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadListener:Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mPreloadListener:Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;

    iget v1, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mCurrentProgress:I

    iget v2, p0, Lcom/parrot/freeflight/map/PreloadMapManager;->mCurrentTotalProgress:I

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;->preloadProgress(II)V

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/map/PreloadMapManager;->processPreload()V

    .line 238
    :cond_1
    return-void
.end method
