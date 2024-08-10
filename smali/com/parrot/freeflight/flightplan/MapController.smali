.class public Lcom/parrot/freeflight/flightplan/MapController;
.super Ljava/lang/Object;
.source "MapController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/MapController$MapType;,
        Lcom/parrot/freeflight/flightplan/MapController$CenterOn;,
        Lcom/parrot/freeflight/flightplan/MapController$OnCameraLoadedListener;
    }
.end annotation


# static fields
.field public static final CENTER_ON_DRONE:I = 0x1

.field public static final CENTER_ON_NOTHING:I = 0x0

.field public static final CENTER_ON_USER:I = 0x2

.field public static final GEOFENCE_DRONE_ALERT:I = -0x1

.field private static final INVALID_LNG_BOUNDS:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private static final MAP_DELAYED_LOAD:I = 0x1388

.field private static final MAP_MINIFIED_ZOOM:F = 16.0f

.field private static final TAG:Ljava/lang/String; = "MapController"


# instance fields
.field private mCameraLoadedListener:Lcom/parrot/freeflight/flightplan/MapController$OnCameraLoadedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCenterOn:I

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneGpsFixed:Z

.field private mDroneLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

.field private mDroneTooFar:Z

.field private final mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlightPlanBoundsPadding:I

.field private final mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGLMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGeofence:Lcom/parrot/freeflight/map/Geofence;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGeofenceAlertList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGeofenceRadius:D

.field private final mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHomeLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field mIMapView:Lcom/parrot/freeflight/map/IMapView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mIsMapLoaded:Z

.field private mIsMinified:Z

.field private mMap:Lcom/parrot/freeflight/map/IMap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMapAutoZoomPadding:I

.field private mMapLoadHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mShouldLoadWayPoints:Z

.field private final mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUserLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUserRotation:F

.field private mWayPoints:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 64
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, v4, v5, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, v4, v5, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/MapController;->INVALID_LNG_BOUNDS:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/map/GLMapLayout;Lcom/parrot/freeflight/map/MapGLRenderingView;Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "glMapLayout"    # Lcom/parrot/freeflight/map/GLMapLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "glRenderingView"    # Lcom/parrot/freeflight/map/MapGLRenderingView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "uiLayerUpdater"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "isMinified"    # Z

    .prologue
    const/4 v5, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_UNKNOWN:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 125
    iput-boolean v5, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneGpsFixed:Z

    .line 138
    iput-boolean v5, p0, Lcom/parrot/freeflight/flightplan/MapController;->mShouldLoadWayPoints:Z

    .line 139
    iput-boolean v5, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneTooFar:Z

    .line 157
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mResources:Landroid/content/res/Resources;

    .line 159
    iput-object p4, p0, Lcom/parrot/freeflight/flightplan/MapController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    .line 161
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGLMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    .line 162
    iput-object p3, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0, v5}, Lcom/parrot/freeflight/map/MapGLRenderingView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0, v5}, Lcom/parrot/freeflight/map/MapGLRenderingView;->setRenderMode(I)V

    .line 166
    new-instance v0, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/MapController;->mResources:Landroid/content/res/Resources;

    invoke-static {v3}, Lcom/parrot/freeflight/util/Screen;->getDensityFactor(Landroid/content/res/Resources;)F

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v4}, Lcom/parrot/freeflight/map/MapGLRenderingView;->getGLExtensionsSupport()Lcom/parrot/engine3d/GLExtensionsSupport;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;-><init>(Landroid/content/Context;Lcom/parrot/engine3d/GLThreadInterface;FLcom/parrot/engine3d/GLExtensionsSupport;Z)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    .line 167
    new-instance v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/MapController;->mResources:Landroid/content/res/Resources;

    invoke-static {v3}, Lcom/parrot/freeflight/util/Screen;->getDensityFactor(Landroid/content/res/Resources;)F

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v4}, Lcom/parrot/freeflight/map/MapGLRenderingView;->getGLExtensionsSupport()Lcom/parrot/engine3d/GLExtensionsSupport;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;-><init>(Landroid/content/Context;Lcom/parrot/engine3d/GLThreadInterface;FLcom/parrot/engine3d/GLExtensionsSupport;Z)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    .line 168
    new-instance v0, Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/MapController;->mResources:Landroid/content/res/Resources;

    invoke-static {v3}, Lcom/parrot/freeflight/util/Screen;->getDensityFactor(Landroid/content/res/Resources;)F

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v4}, Lcom/parrot/freeflight/map/MapGLRenderingView;->getGLExtensionsSupport()Lcom/parrot/engine3d/GLExtensionsSupport;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;-><init>(Landroid/content/Context;Lcom/parrot/engine3d/GLThreadInterface;FLcom/parrot/engine3d/GLExtensionsSupport;Z)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/MapController;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/map/MapGLRenderingView;->setScene(Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;Lcom/parrot/freeflight/tapmode/TapModeGlScene;)V

    .line 171
    new-instance v0, Lcom/parrot/freeflight/map/Geofence;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/map/Geofence;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGeofence:Lcom/parrot/freeflight/map/Geofence;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGeofenceAlertList:Ljava/util/List;

    .line 174
    invoke-virtual {p0, p5}, Lcom/parrot/freeflight/flightplan/MapController;->setMinified(Z)V

    .line 176
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f06024c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMapAutoZoomPadding:I

    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f060150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mFlightPlanBoundsPadding:I

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightplan/MapController;)Lcom/parrot/freeflight/map/IMap;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/MapController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightplan/MapController;)Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/MapController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/flightplan/MapController;)Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/MapController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/flightplan/MapController;)Lcom/parrot/freeflight/tapmode/TapModeGlScene;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/MapController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/flightplan/MapController;)Lcom/parrot/freeflight/map/MapGLRenderingView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/MapController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/flightplan/MapController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/MapController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMapLoadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/flightplan/MapController;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/MapController;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMapLoadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/flightplan/MapController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/MapController;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/MapController;->doActionsOnMapLoaded()V

    return-void
.end method

.method private centerMapOnWayPoints()V
    .locals 5

    .prologue
    .line 502
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/MapController;->isMapSizeNotZero()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mWayPoints:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mWayPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 506
    .local v0, "latLngBoundsBuilder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mWayPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 507
    .local v1, "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_1

    .line 509
    .end local v1    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGLMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v3

    iget v4, p0, Lcom/parrot/freeflight/flightplan/MapController;->mFlightPlanBoundsPadding:I

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/map/GLMapLayout;->animateCameraBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)V

    goto :goto_0
.end method

.method private degreesToYaw(F)D
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 279
    const v0, 0x3c8efa35

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method private doActionsOnMapLoaded()V
    .locals 3

    .prologue
    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mIsMapLoaded:Z

    .line 449
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mShouldLoadWayPoints:Z

    if-eqz v0, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/MapController;->centerMapOnWayPoints()V

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mShouldLoadWayPoints:Z

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v1}, Lcom/parrot/freeflight/map/IMap;->getProjection()Lcom/parrot/freeflight/map/IProjection;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v2}, Lcom/parrot/freeflight/map/IMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->onMapCameraChanged(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;)V

    .line 456
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v1}, Lcom/parrot/freeflight/map/IMap;->getProjection()Lcom/parrot/freeflight/map/IProjection;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v2}, Lcom/parrot/freeflight/map/IMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->onMapCameraChanged(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;)V

    .line 458
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mCameraLoadedListener:Lcom/parrot/freeflight/flightplan/MapController$OnCameraLoadedListener;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mCameraLoadedListener:Lcom/parrot/freeflight/flightplan/MapController$OnCameraLoadedListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/flightplan/MapController$OnCameraLoadedListener;->onLoad()V

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mCameraLoadedListener:Lcom/parrot/freeflight/flightplan/MapController$OnCameraLoadedListener;

    .line 464
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    goto :goto_0
.end method

.method private getAutoZoomBounds()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 689
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/MapController;->mUserLocation:Landroid/location/Location;

    invoke-static {v4}, Lcom/parrot/freeflight/location/LocationUtils;->locationToLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    .line 690
    .local v3, "userLatLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/MapController;->mHomeLocation:Landroid/location/Location;

    invoke-static {v4}, Lcom/parrot/freeflight/location/LocationUtils;->locationToLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 691
    .local v2, "homeLatLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneLocation:Landroid/location/Location;

    invoke-static {v4}, Lcom/parrot/freeflight/location/LocationUtils;->locationToLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 692
    .local v1, "droneLatLng":Lcom/google/android/gms/maps/model/LatLng;
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    if-eqz v3, :cond_6

    .line 693
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 694
    .local v0, "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    if-eqz v2, :cond_1

    .line 695
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 697
    :cond_1
    if-eqz v1, :cond_3

    .line 698
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 699
    iget v4, p0, Lcom/parrot/freeflight/flightplan/MapController;->mCenterOn:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 700
    if-eqz v2, :cond_2

    .line 701
    invoke-direct {p0, v1, v2}, Lcom/parrot/freeflight/flightplan/MapController;->getOppositeLocationFromLocation(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 703
    :cond_2
    if-eqz v3, :cond_3

    .line 704
    invoke-direct {p0, v1, v3}, Lcom/parrot/freeflight/flightplan/MapController;->getOppositeLocationFromLocation(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 708
    :cond_3
    if-eqz v3, :cond_5

    .line 709
    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 710
    iget v4, p0, Lcom/parrot/freeflight/flightplan/MapController;->mCenterOn:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 711
    if-eqz v2, :cond_4

    .line 712
    invoke-direct {p0, v3, v2}, Lcom/parrot/freeflight/flightplan/MapController;->getOppositeLocationFromLocation(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 714
    :cond_4
    if-eqz v1, :cond_5

    .line 715
    invoke-direct {p0, v3, v1}, Lcom/parrot/freeflight/flightplan/MapController;->getOppositeLocationFromLocation(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 719
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v4

    .line 721
    .end local v0    # "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    :goto_0
    return-object v4

    :cond_6
    sget-object v4, Lcom/parrot/freeflight/flightplan/MapController;->INVALID_LNG_BOUNDS:Lcom/google/android/gms/maps/model/LatLngBounds;

    goto :goto_0
.end method

.method private getOppositeLocationFromLocation(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 10
    .param p1, "from"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 726
    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v8, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    add-double v0, v4, v6

    .line 727
    .local v0, "latitude":D
    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v8, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v6, v8

    add-double v2, v4, v6

    .line 728
    .local v2, "longitude":D
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v4
.end method

.method private hasCameraChanged(DDFI)Z
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "newZoom"    # F
    .param p6, "newBearing"    # I

    .prologue
    .line 533
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v3}, Lcom/parrot/freeflight/map/IMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 534
    .local v0, "cameraPosition":Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v1, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 535
    .local v1, "currentLatLng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {p1, p2, p3, p4}, Lcom/parrot/freeflight/location/LocationUtils;->latLngFromValues(DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 536
    .local v2, "newLatLng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {v1, v2}, Lcom/parrot/freeflight/location/LocationUtils;->isSamePosition(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    cmpl-float v3, p5, v3

    if-nez v3, :cond_0

    int-to-float v3, p6

    invoke-static {v3}, Lcom/parrot/freeflight/location/LocationUtils;->getAbsRotation(F)F

    move-result v3

    iget v4, v0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    float-to-int v4, v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isDroneInScopeOfUser()Z
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneLocation:Landroid/location/Location;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mUserLocation:Landroid/location/Location;

    iget v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mUserRotation:F

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/parrot/freeflight/flightplan/MapController;->isInScopeOfLocation(Landroid/location/Location;Landroid/location/Location;FF)Z

    move-result v0

    return v0
.end method

.method private isInScopeOfLocation(Landroid/location/Location;Landroid/location/Location;FF)Z
    .locals 8
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "originLocation"    # Landroid/location/Location;
    .param p3, "heading"    # F
    .param p4, "deltaAngle"    # F

    .prologue
    .line 253
    invoke-direct {p0, p2, p1}, Lcom/parrot/freeflight/flightplan/MapController;->yawForLocation(Landroid/location/Location;Landroid/location/Location;)F

    move-result v2

    .line 254
    .local v2, "idealYaw":F
    invoke-direct {p0, p3}, Lcom/parrot/freeflight/flightplan/MapController;->degreesToYaw(F)D

    move-result-wide v4

    float-to-double v6, v2

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 255
    .local v0, "currentDeltaYaw":D
    const v3, 0x3c8efa35

    mul-float/2addr v3, p4

    float-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    cmpg-double v3, v0, v4

    if-gez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isMapSizeNotZero()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 540
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mIMapView:Lcom/parrot/freeflight/map/IMapView;

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mIMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v1}, Lcom/parrot/freeflight/map/IMapView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mIMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v1}, Lcom/parrot/freeflight/map/IMapView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 543
    :cond_0
    return v0
.end method

.method private updateConnectionState(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 2
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 613
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 614
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    .line 615
    .local v0, "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-eq v1, v0, :cond_0

    .line 616
    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 617
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/MapController;->addDrone(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 619
    :cond_0
    return-void

    .line 614
    .end local v0    # "connectionState":Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    :cond_1
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_UNKNOWN:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    goto :goto_0
.end method

.method private updateDronePosition(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 18
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 622
    const/4 v13, 0x0

    .line 623
    .local v13, "needRefresh":Z
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->isGpsFixed()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v12, 0x1

    .line 625
    .local v12, "gpsFixed":Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneGpsFixed:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneGpsFixed:Z

    if-eq v12, v3, :cond_1

    .line 626
    :cond_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneGpsFixed:Z

    .line 627
    const/4 v13, 0x1

    .line 630
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneGpsFixed:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getRelativeAltitude()D

    move-result-wide v14

    invoke-virtual {v3, v8, v14, v15}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->updateDronePosition(Lcom/parrot/freeflight/core/model/DroneModel$Position;D)Z

    move-result v3

    or-int/2addr v13, v3

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getRelativeAltitude()D

    move-result-wide v14

    invoke-virtual {v3, v8, v14, v15}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->updateDronePosition(Lcom/parrot/freeflight/core/model/DroneModel$Position;D)Z

    move-result v3

    or-int/2addr v13, v3

    .line 633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getRelativeAltitude()D

    move-result-wide v14

    invoke-virtual {v3, v8, v14, v15}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->updateDronePosition(Lcom/parrot/freeflight/core/model/DroneModel$Position;D)Z

    move-result v3

    or-int/2addr v13, v3

    .line 636
    :cond_2
    if-eqz v13, :cond_4

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mCenterOn:I

    if-eqz v3, :cond_8

    if-eqz p1, :cond_8

    .line 638
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneLocation:Landroid/location/Location;

    .line 639
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mIsMinified:Z

    if-eqz v3, :cond_7

    .line 643
    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mCenterOn:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_6

    .line 644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 645
    .local v4, "latitude":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 646
    .local v6, "longitude":D
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getYaw()D

    move-result-wide v8

    double-to-float v2, v8

    .line 652
    .local v2, "bearing":F
    :goto_1
    const/high16 v8, 0x41800000    # 16.0f

    neg-float v9, v2

    const/4 v10, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/parrot/freeflight/flightplan/MapController;->moveCamera(DDFFZ)V

    .line 660
    .end local v2    # "bearing":F
    .end local v4    # "latitude":D
    .end local v6    # "longitude":D
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    if-eqz v3, :cond_4

    .line 661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    const/4 v8, -0x1

    new-instance v9, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneLocation:Landroid/location/Location;

    .line 663
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneLocation:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v9, v14, v15, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 661
    invoke-interface {v3, v8, v9}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->checkGeofenceAlert(ILcom/google/android/gms/maps/model/LatLng;)Z

    move-result v11

    .line 666
    .local v11, "droneToFar":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneTooFar:Z

    if-eq v3, v11, :cond_3

    .line 667
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneTooFar:Z

    .line 668
    :cond_3
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneTooFar:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/parrot/freeflight/flightplan/MapController;->updateGeofenceAlert(Ljava/lang/Integer;Z)V

    .line 671
    .end local v11    # "droneToFar":Z
    :cond_4
    return-void

    .line 623
    .end local v12    # "gpsFixed":Z
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 648
    .restart local v12    # "gpsFixed":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mUserLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 649
    .restart local v4    # "latitude":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mUserLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 650
    .restart local v6    # "longitude":D
    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mUserRotation:F

    neg-float v2, v3

    .restart local v2    # "bearing":F
    goto :goto_1

    .line 654
    .end local v2    # "bearing":F
    .end local v4    # "latitude":D
    .end local v6    # "longitude":D
    :cond_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/parrot/freeflight/flightplan/MapController;->zoomToBounds(Z)V

    goto :goto_2

    .line 657
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v3}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    goto :goto_2
.end method

.method private wrapToPi(D)F
    .locals 5
    .param p1, "angle"    # D

    .prologue
    .line 271
    const-wide v2, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double v0, v2, p1

    .line 272
    .local v0, "res":D
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 273
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    sub-double/2addr v0, v2

    .line 275
    :cond_0
    double-to-float v2, v0

    return v2
.end method

.method private yawForLocation(Landroid/location/Location;Landroid/location/Location;)F
    .locals 12
    .param p1, "origine"    # Landroid/location/Location;
    .param p2, "destination"    # Landroid/location/Location;

    .prologue
    .line 260
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-direct {p0, v6, v7}, Lcom/parrot/freeflight/flightplan/MapController;->wrapToPi(D)F

    move-result v5

    const v6, 0x4ac26d70    # 6371000.0f

    mul-float/2addr v5, v6

    float-to-double v0, v5

    .line 261
    .local v0, "dx":D
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-direct {p0, v6, v7}, Lcom/parrot/freeflight/flightplan/MapController;->wrapToPi(D)F

    move-result v5

    const v6, 0x4ac26d70    # 6371000.0f

    mul-float/2addr v5, v6

    float-to-double v6, v5

    const-wide v8, 0x3f91df46a0000000L    # 0.01745329238474369

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v2, v6, v8

    .line 263
    .local v2, "dy":D
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v4, v6

    .line 264
    .local v4, "yaw":F
    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    .line 265
    float-to-double v6, v4

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v6, v8

    double-to-float v4, v6

    .line 267
    :cond_0
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v8, v4

    sub-double/2addr v6, v8

    double-to-float v5, v6

    return v5
.end method

.method private zoomToBounds(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/MapController;->getAutoZoomBounds()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMapAutoZoomPadding:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/parrot/freeflight/flightplan/MapController;->moveCamera(Lcom/google/android/gms/maps/model/LatLngBounds;IZ)V

    .line 685
    return-void
.end method


# virtual methods
.method public addDrone(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 1
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 591
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->hasDrone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->removeDrone()V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->addDrone(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 595
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->addDrone(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 596
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->addDrone(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 597
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 598
    return-void
.end method

.method public addMoveToWayPoint(Lcom/parrot/freeflight/core/model/DroneModel$Position;)V
    .locals 6
    .param p1, "position"    # Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .prologue
    .line 373
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 374
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v1, Lcom/parrot/freeflight/tapmode/TapModePoint;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getAltitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-direct {v1, v0, v2}, Lcom/parrot/freeflight/tapmode/TapModePoint;-><init>(Lcom/google/android/gms/maps/model/LatLng;F)V

    .line 375
    .local v1, "tapModePoint":Lcom/parrot/freeflight/tapmode/TapModePoint;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->addWayPoint(Lcom/parrot/freeflight/tapmode/TapModePoint;)V

    .line 376
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v2}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 377
    return-void
.end method

.method public addPilotedPOI(Lcom/parrot/freeflight/core/model/DroneModel$Position;)V
    .locals 6
    .param p1, "position"    # Lcom/parrot/freeflight/core/model/DroneModel$Position;

    .prologue
    .line 385
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 386
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v1, Lcom/parrot/freeflight/tapmode/TapModePoint;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getAltitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-direct {v1, v0, v2}, Lcom/parrot/freeflight/tapmode/TapModePoint;-><init>(Lcom/google/android/gms/maps/model/LatLng;F)V

    .line 387
    .local v1, "poi":Lcom/parrot/freeflight/tapmode/TapModePoint;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v2}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->hasPoi()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v2}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->isPoiDragging()Z

    move-result v2

    if-nez v2, :cond_0

    .line 388
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v2}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->removePoi()V

    .line 390
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->addPoi(Lcom/parrot/freeflight/tapmode/TapModePoint;)V

    .line 391
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v2}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 392
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->clear()V

    .line 585
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->clear()V

    .line 586
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->clear()V

    .line 587
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 588
    return-void
.end method

.method public clearGeofenceAlerts()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGeofenceAlertList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 343
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGeofence:Lcom/parrot/freeflight/map/Geofence;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/Geofence;->setAlertState(Z)V

    .line 344
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/map/IMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    .line 191
    :cond_0
    return-void
.end method

.method public displayFlightPlan(Ljava/util/List;Ljava/util/List;Z)V
    .locals 11
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "planBuckled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "wayPoints":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;>;"
    .local p2, "pois":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;>;"
    const/4 v10, 0x0

    .line 553
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v6}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->clear()V

    .line 554
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/MapController;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->clear()V

    .line 556
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 557
    .local v3, "nbWayPoints":I
    if-eqz p3, :cond_0

    .line 558
    add-int/lit8 v3, v3, -0x1

    .line 561
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 562
    .local v5, "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/MapController;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v7, v5, v10}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->addWayPoint(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;Z)I

    .line 564
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/MapController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    if-eqz v7, :cond_1

    .line 565
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/MapController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v8

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->checkGeofenceAlert(ILcom/google/android/gms/maps/model/LatLng;)Z

    move-result v4

    .line 566
    .local v4, "onAlert":Z
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/MapController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v8

    invoke-interface {v7, v8, v4}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->updateGeofenceAlert(IZ)V

    goto :goto_0

    .line 570
    .end local v4    # "onAlert":Z
    .end local v5    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_2
    const/4 v1, 0x0

    .local v1, "it":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "nbPois":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 571
    iget-object v7, p0, Lcom/parrot/freeflight/flightplan/MapController;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;

    invoke-virtual {v7, v6, v10}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->addPoi(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;Z)I

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 573
    :cond_3
    if-eqz p3, :cond_4

    .line 574
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 575
    .local v0, "bucklingWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/MapController;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v6, v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->buckle(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)V

    .line 577
    .end local v0    # "bucklingWp":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_4
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v6}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->computeObjectsPosition()V

    .line 578
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/MapController;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v6}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->computeObjectsPosition()V

    .line 579
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/MapController;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v6}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->computeObjectsPosition()V

    .line 580
    iget-object v6, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v6}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 581
    return-void
.end method

.method public enableGestures(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 467
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/map/IMap;->setAllGesturesEnabled(Z)V

    .line 470
    :cond_0
    return-void
.end method

.method public forceRefreshMap(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 3
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 674
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mShouldLoadWayPoints:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 675
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneLocation:Landroid/location/Location;

    .line 676
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/MapController;->getAutoZoomBounds()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    .line 677
    .local v0, "autoZoomBounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    sget-object v1, Lcom/parrot/freeflight/flightplan/MapController;->INVALID_LNG_BOUNDS:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 678
    iget v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMapAutoZoomPadding:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/flightplan/MapController;->moveCamera(Lcom/google/android/gms/maps/model/LatLngBounds;IZ)V

    .line 681
    .end local v0    # "autoZoomBounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    :cond_0
    return-void
.end method

.method public getCurrentCentering()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mCenterOn:I

    return v0
.end method

.method public getDronesInfosGlScene()Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    return-object v0
.end method

.method public getFlightPlanGlScene()Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    return-object v0
.end method

.method public getMap()Lcom/parrot/freeflight/map/IMap;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    return-object v0
.end method

.method public getTapModeGlScene()Lcom/parrot/freeflight/tapmode/TapModeGlScene;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    return-object v0
.end method

.method public initCameraFromMapInfo(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p1, "wayPoints":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mWayPoints:Ljava/util/List;

    .line 493
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mIsMapLoaded:Z

    if-eqz v0, :cond_1

    .line 494
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/MapController;->centerMapOnWayPoints()V

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mShouldLoadWayPoints:Z

    goto :goto_0
.end method

.method public initMapParams()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 400
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/map/IMap;->setMyLocationEnabled(Z)V

    .line 402
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/map/IMap;->setIndoorEnabled(Z)V

    .line 404
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGLMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    new-instance v1, Lcom/parrot/freeflight/flightplan/MapController$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/MapController$1;-><init>(Lcom/parrot/freeflight/flightplan/MapController;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/GLMapLayout;->addCameraChangedListener(Lcom/parrot/freeflight/map/GLMapLayout$CameraChangedListener;)V

    .line 414
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    new-instance v1, Lcom/parrot/freeflight/flightplan/MapController$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/MapController$2;-><init>(Lcom/parrot/freeflight/flightplan/MapController;)V

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/map/IMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    .line 426
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMap;->isMapLoadMayBeFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMapLoadHandler:Landroid/os/Handler;

    .line 431
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMapLoadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/flightplan/MapController$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/MapController$3;-><init>(Lcom/parrot/freeflight/flightplan/MapController;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 443
    :cond_0
    return-void
.end method

.method public moveCamera(DDFFZ)V
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "newZoom"    # F
    .param p6, "newBearing"    # F
    .param p7, "animate"    # Z

    .prologue
    .line 513
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/MapController;->isMapSizeNotZero()Z

    move-result v0

    if-eqz v0, :cond_0

    float-to-int v7, p6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/parrot/freeflight/flightplan/MapController;->hasCameraChanged(DDFI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    if-eqz p7, :cond_1

    .line 515
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGLMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    float-to-int v2, p6

    int-to-float v2, v2

    invoke-virtual {v0, v1, p5, v2}, Lcom/parrot/freeflight/map/GLMapLayout;->animateCamera(Lcom/google/android/gms/maps/model/LatLng;FF)V

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGLMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    float-to-int v2, p6

    int-to-float v2, v2

    invoke-virtual {v0, v1, p5, v2}, Lcom/parrot/freeflight/map/GLMapLayout;->moveCamera(Lcom/google/android/gms/maps/model/LatLng;FF)V

    goto :goto_0
.end method

.method public moveCamera(Lcom/google/android/gms/maps/model/LatLngBounds;IZ)V
    .locals 1
    .param p1, "bounds"    # Lcom/google/android/gms/maps/model/LatLngBounds;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "padding"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 523
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/MapController;->isMapSizeNotZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    if-eqz p3, :cond_1

    .line 525
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGLMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/map/GLMapLayout;->animateCameraBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)V

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGLMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/map/GLMapLayout;->moveCameraBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMapLoadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMapLoadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 183
    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMapLoadHandler:Landroid/os/Handler;

    .line 185
    :cond_0
    return-void
.end method

.method public removeDrone()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->removeDrone()V

    .line 602
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->removeDrone()V

    .line 603
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->removeDrone()V

    .line 604
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 605
    return-void
.end method

.method public removeMoveToWayPoint()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->removeWayPoint()V

    .line 381
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 382
    return-void
.end method

.method public removePilotedPOI()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->removePoi()V

    .line 396
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 397
    return-void
.end method

.method public setCenterOn(I)V
    .locals 1
    .param p1, "centerOn"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mCenterOn:I

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->setCenterOn(I)V

    .line 215
    return-void
.end method

.method public setGeofence(DZ)V
    .locals 9
    .param p1, "radius"    # D
    .param p3, "geofenceEnabled"    # Z

    .prologue
    .line 302
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mHomeLocation:Landroid/location/Location;

    if-eqz v1, :cond_2

    .line 304
    iget-wide v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGeofenceRadius:D

    cmpl-double v1, v2, p1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mWayPoints:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 305
    iput-wide p1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGeofenceRadius:D

    .line 306
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mWayPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;

    .line 307
    .local v8, "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-virtual {v8}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v3

    invoke-virtual {v8}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->checkGeofenceAlert(ILcom/google/android/gms/maps/model/LatLng;)Z

    move-result v0

    .line 309
    .local v0, "onAlert":Z
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mUiLayerUpdater:Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;

    invoke-virtual {v8}, Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;->getIndex()I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;->updateGeofenceAlert(IZ)V

    goto :goto_0

    .line 314
    .end local v0    # "onAlert":Z
    .end local v8    # "wayPoint":Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGeofence:Lcom/parrot/freeflight/map/Geofence;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mHomeLocation:Landroid/location/Location;

    .line 315
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/MapController;->mHomeLocation:Landroid/location/Location;

    .line 316
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-wide v6, p1

    .line 314
    invoke-virtual/range {v1 .. v7}, Lcom/parrot/freeflight/map/Geofence;->setGeofence(DDD)V

    .line 323
    :goto_1
    return-void

    .line 320
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGeofence:Lcom/parrot/freeflight/map/Geofence;

    invoke-virtual {v1}, Lcom/parrot/freeflight/map/Geofence;->reset()V

    goto :goto_1
.end method

.method public setHomeLocation(Landroid/location/Location;)V
    .locals 8
    .param p1, "homeLocation"    # Landroid/location/Location;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mHomeLocation:Landroid/location/Location;

    .line 284
    if-eqz p1, :cond_1

    .line 285
    new-instance v1, Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/parrot/freeflight/core/model/DroneModel$Position;-><init>(DDD)V

    .line 286
    .local v1, "position":Lcom/parrot/freeflight/core/model/DroneModel$Position;
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->hasHome()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->addHome(Lcom/parrot/freeflight/core/model/DroneModel$Position;)V

    .line 294
    .end local v1    # "position":Lcom/parrot/freeflight/core/model/DroneModel$Position;
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 295
    return-void

    .line 289
    .restart local v1    # "position":Lcom/parrot/freeflight/core/model/DroneModel$Position;
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->updateHomePosition(Lcom/parrot/freeflight/core/model/DroneModel$Position;)Z

    goto :goto_0

    .line 292
    .end local v1    # "position":Lcom/parrot/freeflight/core/model/DroneModel$Position;
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->removeHome()V

    goto :goto_0
.end method

.method public setMap(Lcom/parrot/freeflight/map/IMap;Lcom/parrot/freeflight/map/IMapView;)V
    .locals 1
    .param p1, "map"    # Lcom/parrot/freeflight/map/IMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "iMapView"    # Lcom/parrot/freeflight/map/IMapView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 347
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    .line 348
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mIMapView:Lcom/parrot/freeflight/map/IMapView;

    .line 349
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGeofence:Lcom/parrot/freeflight/map/Geofence;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/map/Geofence;->setMap(Lcom/parrot/freeflight/map/IMap;)V

    .line 350
    return-void
.end method

.method public setMapLogoPaddingVertical(I)V
    .locals 5
    .param p1, "mapPaddingVerticalRes"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 483
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mIMapView:Lcom/parrot/freeflight/map/IMapView;

    if-eqz v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/MapController;->mIMapView:Lcom/parrot/freeflight/map/IMapView;

    .line 485
    invoke-interface {v3}, Lcom/parrot/freeflight/map/IMapView;->getLogoVerticalOffset()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 486
    .local v0, "mapPaddingVertical":I
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v1, v4, v0, v4, v0}, Lcom/parrot/freeflight/map/IMap;->setPadding(IIII)V

    .line 488
    .end local v0    # "mapPaddingVertical":I
    :cond_0
    return-void
.end method

.method public setMapType(I)V
    .locals 1
    .param p1, "mapType"    # I

    .prologue
    .line 547
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mMap:Lcom/parrot/freeflight/map/IMap;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/map/IMap;->setMapType(I)V

    .line 550
    :cond_0
    return-void
.end method

.method public setMinified(Z)V
    .locals 1
    .param p1, "minified"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mIsMinified:Z

    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->setMinified(Z)V

    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->setMinified(Z)V

    .line 197
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->setMinified(Z)V

    .line 198
    return-void
.end method

.method public setMustRenderFlightPlan(Z)V
    .locals 1
    .param p1, "mustRenderFlightPlan"    # Z

    .prologue
    .line 201
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/map/MapGLRenderingView;->setMustRenderFlightPlan(Z)V

    .line 202
    return-void
.end method

.method public setMustRenderTapMode(Z)V
    .locals 1
    .param p1, "mustRenderTapMode"    # Z

    .prologue
    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/map/MapGLRenderingView;->setMustRenderTapMode(Z)V

    .line 206
    return-void
.end method

.method public setOnCameraLoadedListener(Lcom/parrot/freeflight/flightplan/MapController$OnCameraLoadedListener;)V
    .locals 0
    .param p1, "cameraLoadedListener"    # Lcom/parrot/freeflight/flightplan/MapController$OnCameraLoadedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 732
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mCameraLoadedListener:Lcom/parrot/freeflight/flightplan/MapController$OnCameraLoadedListener;

    .line 733
    return-void
.end method

.method public setPlanProductInfos(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V
    .locals 1
    .param p1, "planProduct"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "planProductCharacteristics"    # Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 209
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/MapController;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->setPlanProductInfos(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V

    .line 210
    return-void
.end method

.method public setUserLocation(Landroid/location/Location;)V
    .locals 8
    .param p1, "userLocation"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 218
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mUserLocation:Landroid/location/Location;

    .line 219
    if-eqz p1, :cond_2

    .line 220
    new-instance v1, Lcom/parrot/freeflight/core/model/DroneModel$Position;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/parrot/freeflight/core/model/DroneModel$Position;-><init>(DDD)V

    .line 221
    .local v1, "position":Lcom/parrot/freeflight/core/model/DroneModel$Position;
    iget v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mUserRotation:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->updateYaw(D)Z

    .line 222
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v2}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->hasUser()Z

    move-result v2

    if-nez v2, :cond_1

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "isDroneInScope":Z
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneLocation:Landroid/location/Location;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mUserLocation:Landroid/location/Location;

    if-eqz v2, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/MapController;->isDroneInScopeOfUser()Z

    move-result v0

    .line 227
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v2, v1, v0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->addUser(Lcom/parrot/freeflight/core/model/DroneModel$Position;Z)V

    .line 234
    .end local v0    # "isDroneInScope":Z
    .end local v1    # "position":Lcom/parrot/freeflight/core/model/DroneModel$Position;
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v2}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 235
    return-void

    .line 229
    .restart local v1    # "position":Lcom/parrot/freeflight/core/model/DroneModel$Position;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->updateUserPosition(Lcom/parrot/freeflight/core/model/DroneModel$Position;)Z

    goto :goto_0

    .line 232
    .end local v1    # "position":Lcom/parrot/freeflight/core/model/DroneModel$Position;
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v2}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->removeUser()V

    goto :goto_0
.end method

.method public setUserRotation(F)V
    .locals 2
    .param p1, "userRotation"    # F

    .prologue
    .line 238
    iput p1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mUserRotation:F

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "isDroneInScope":Z
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDroneLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mUserLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/MapController;->isDroneInScopeOfUser()Z

    move-result v0

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v1, p1, v0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->updateUserRotation(FZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 246
    :cond_1
    return-void
.end method

.method public updateGeofenceAlert(Ljava/lang/Integer;Z)V
    .locals 3
    .param p1, "index"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onAlert"    # Z

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "updated":Z
    if-eqz p2, :cond_2

    .line 328
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGeofenceAlertList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGeofenceAlertList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    const/4 v0, 0x1

    .line 336
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 337
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGeofence:Lcom/parrot/freeflight/map/Geofence;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGeofenceAlertList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/map/Geofence;->setAlertState(Z)V

    .line 339
    :cond_1
    return-void

    .line 332
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGeofenceAlertList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/MapController;->mGeofenceAlertList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 334
    const/4 v0, 0x1

    goto :goto_0

    .line 337
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateView(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 0
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/MapController;->updateConnectionState(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 609
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/MapController;->updateDronePosition(Lcom/parrot/freeflight/core/model/DroneModel;)V

    .line 610
    return-void
.end method
