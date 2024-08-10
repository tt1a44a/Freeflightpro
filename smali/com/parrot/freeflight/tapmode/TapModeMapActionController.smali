.class public Lcom/parrot/freeflight/tapmode/TapModeMapActionController;
.super Ljava/lang/Object;
.source "TapModeMapActionController.java"


# static fields
.field private static final MAP_TOUCH_PRIORITY:I = 0x2

.field private static final PERIOD_BETWEEN_TWO_PILOTED_POI:J = 0xc8L

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mClickedObjectFinder:Lcom/parrot/freeflight/tapmode/TapModeClickedObjectFinder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

.field private mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHoldObject:Lcom/parrot/freeflight/tapmode/GLTapModePoint;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIsEditionEnabled:Z

.field private mLastPilotedPOISentTime:J

.field private mMap:Lcom/parrot/freeflight/map/IMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMapHeight:I

.field private mMapInteractionBottomPadding:I

.field private mMapInteractionPadding:I

.field private mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMapWidth:I

.field private mNewPosition:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mOnMapClickListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;

.field private final mOnMapLongClickListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;

.field private final mOnMapScrollListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;

.field private final mOnMapSizeChangedListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;

.field private final mOnMapTouchDownListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchDownListener;

.field private final mOnMapTouchUpListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;

.field private final mWayPointRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/map/MapGLRenderingView;Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;Lcom/parrot/freeflight/map/GLMapLayout;Lcom/parrot/freeflight/map/IMap;Lcom/parrot/freeflight/tapmode/TapModeGlScene;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "glRenderingView"    # Lcom/parrot/freeflight/map/MapGLRenderingView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "droneModel"    # Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;
    .param p4, "mapLayout"    # Lcom/parrot/freeflight/map/GLMapLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "map"    # Lcom/parrot/freeflight/map/IMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "glScene"    # Lcom/parrot/freeflight/tapmode/TapModeGlScene;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mIsEditionEnabled:Z

    .line 114
    new-instance v1, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$1;-><init>(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mOnMapClickListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;

    .line 121
    new-instance v1, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$2;-><init>(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mOnMapLongClickListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;

    .line 131
    new-instance v1, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$3;-><init>(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mOnMapTouchDownListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchDownListener;

    .line 139
    new-instance v1, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$4;-><init>(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mOnMapTouchUpListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;

    .line 153
    new-instance v1, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$5;-><init>(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mOnMapScrollListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;

    .line 197
    new-instance v1, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$6;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$6;-><init>(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mOnMapSizeChangedListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;

    .line 76
    iput-object p1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    .line 78
    iput-object p3, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mDroneModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    .line 79
    iput-object p4, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    .line 80
    iput-object p5, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMap:Lcom/parrot/freeflight/map/IMap;

    .line 81
    iput-object p6, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    .line 83
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/util/Screen;->getDensityFactor(Landroid/content/res/Resources;)F

    move-result v0

    .line 84
    .local v0, "densityFactor":F
    const/high16 v1, 0x42340000    # 45.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mWayPointRadius:F

    .line 85
    new-instance v1, Lcom/parrot/freeflight/tapmode/TapModeClickedObjectFinder;

    invoke-direct {v1, p6, v0}, Lcom/parrot/freeflight/tapmode/TapModeClickedObjectFinder;-><init>(Lcom/parrot/freeflight/tapmode/TapModeGlScene;F)V

    iput-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mClickedObjectFinder:Lcom/parrot/freeflight/tapmode/TapModeClickedObjectFinder;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->onMapClicked(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/tapmode/GLTapModePoint;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mHoldObject:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->isTouchInteractionAllowed(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;Lcom/parrot/freeflight/tapmode/GLTapModePoint;)Lcom/parrot/freeflight/tapmode/GLTapModePoint;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;
    .param p1, "x1"    # Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mHoldObject:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/tapmode/TapModeClickedObjectFinder;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mClickedObjectFinder:Lcom/parrot/freeflight/tapmode/TapModeClickedObjectFinder;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    .prologue
    .line 32
    iget v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mWayPointRadius:F

    return v0
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->onPoiMoved(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->onWayPointMoved(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/map/MapGLRenderingView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapWidth:I

    return p1
.end method

.method static synthetic access$1702(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/map/IMap;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMap:Lcom/parrot/freeflight/map/IMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Point;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "x2"    # Landroid/graphics/Point;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->onMapLongClicked(Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    .prologue
    .line 32
    iget v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mInitialTouchX:F

    return v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;
    .param p1, "x1"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mInitialTouchX:F

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    .prologue
    .line 32
    iget v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mInitialTouchY:F

    return v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;
    .param p1, "x1"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mInitialTouchY:F

    return p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->onWayPointMoveStopped()V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mNewPosition:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method static synthetic access$702(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mNewPosition:Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mIsEditionEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)Lcom/parrot/freeflight/tapmode/TapModeGlScene;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    return-object v0
.end method

.method private calculatePOIAltitudeForDistance(Lcom/google/android/gms/maps/model/LatLng;)F
    .locals 10
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 289
    invoke-static {p1}, Lcom/parrot/freeflight/location/LocationUtils;->latlngToLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/location/Location;

    move-result-object v5

    .line 290
    .local v5, "poiLocation":Landroid/location/Location;
    iget-object v6, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mDroneModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v4

    .line 291
    .local v4, "droneLocation":Landroid/location/Location;
    invoke-virtual {v4, v5}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 292
    .local v0, "distance":F
    iget-object v6, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mDroneModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getDroneCamera()Lcom/parrot/freeflight/piloting/model/DroneCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/model/DroneCamera;->getTilt()I

    move-result v1

    .line 293
    .local v1, "droneCameraTilt":I
    iget-object v6, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mDroneModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getRelativeAltitude()D

    move-result-wide v2

    .line 294
    .local v2, "droneAltitude":D
    float-to-double v6, v0

    int-to-float v8, v1

    const v9, 0x3c8efa35

    mul-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v6, v2

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    const-wide v8, 0x4062c00000000000L    # 150.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-float v6, v6

    return v6
.end method

.method private isTouchInteractionAllowed(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 259
    iget v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapWidth:I

    iget v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapInteractionPadding:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapHeight:I

    iget v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapInteractionBottomPadding:I

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapInteractionPadding:I

    if-ge p2, v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapInteractionPadding:I

    mul-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapWidth:I

    iget v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapInteractionPadding:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onMapClicked(Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 4
    .param p1, "moveToLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 269
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->sendMoveToAction(DD)V

    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method private onMapLongClicked(Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Point;)Z
    .locals 8
    .param p1, "poiLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clickedPoint"    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 274
    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->isTouchInteractionAllowed(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mDroneModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->isPilotedPOIModeAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mDroneModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->isInMoveToMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mDroneModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->isRTHModeInProgress()Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->calculatePOIAltitudeForDistance(Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    .line 277
    .local v0, "altitude":F
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mDroneModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->isInPilotedPOIMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v1}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->hasPoi()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v1}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->isPoiDragging()Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v1}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->removePoi()V

    .line 279
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    new-instance v2, Lcom/parrot/freeflight/tapmode/TapModePoint;

    invoke-direct {v2, p1, v0}, Lcom/parrot/freeflight/tapmode/TapModePoint;-><init>(Lcom/google/android/gms/maps/model/LatLng;F)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->addPoi(Lcom/parrot/freeflight/tapmode/TapModePoint;)V

    .line 280
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mDroneModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    float-to-double v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->startPilotedPOI(DDD)V

    .line 283
    const/4 v1, 0x1

    .line 285
    .end local v0    # "altitude":F
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onPoiMoved(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2
    .param p1, "newPosition"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 231
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mHoldObject:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mHoldObject:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    invoke-virtual {v1}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getWayPoint()Lcom/parrot/freeflight/tapmode/TapModePoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/tapmode/TapModePoint;->setLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 234
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->calculatePOIAltitudeForDistance(Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    .line 235
    .local v0, "altitude":F
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->updatePoiAltitude(F)V

    .line 236
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v1}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->onPoiMoved()V

    .line 237
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 238
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->sendPilotedPOIAction(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 240
    .end local v0    # "altitude":F
    :cond_0
    return-void
.end method

.method private onWayPointMoveStopped()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mHoldObject:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mHoldObject:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    invoke-virtual {v0}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getWayPoint()Lcom/parrot/freeflight/tapmode/TapModePoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/tapmode/TapModePoint;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->onMapClicked(Lcom/google/android/gms/maps/model/LatLng;)Z

    .line 209
    :cond_0
    return-void
.end method

.method private onWayPointMoved(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "newPosition"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 243
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mHoldObject:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mHoldObject:Lcom/parrot/freeflight/tapmode/GLTapModePoint;

    invoke-virtual {v0}, Lcom/parrot/freeflight/tapmode/GLTapModePoint;->getWayPoint()Lcom/parrot/freeflight/tapmode/TapModePoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/tapmode/TapModePoint;->setLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 245
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->onWayPointMoved()V

    .line 246
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 248
    :cond_0
    return-void
.end method

.method private sendMoveToAction(DD)V
    .locals 11
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mDroneModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getRelativeAltitude()D

    move-result-wide v8

    .line 222
    .local v8, "moveToAltitude":D
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mDroneModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    .line 223
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getMaxAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v0

    .line 222
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->sendMoveToAction(DDD)V

    .line 224
    return-void
.end method

.method private sendMoveToAction(DDD)V
    .locals 11
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D

    .prologue
    .line 227
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mDroneModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v1 .. v9}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->moveTo(DDDIF)V

    .line 228
    return-void
.end method

.method private sendPilotedPOIAction(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 10
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 213
    .local v8, "now":J
    iget-wide v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mLastPilotedPOISentTime:J

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    cmp-long v0, v8, v0

    if-lez v0, :cond_0

    .line 214
    iput-wide v8, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mLastPilotedPOISentTime:J

    .line 215
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->calculatePOIAltitudeForDistance(Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    float-to-double v6, v0

    .line 216
    .local v6, "altitude":D
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mDroneModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v1 .. v7}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->startPilotedPOI(DDD)V

    .line 218
    .end local v6    # "altitude":D
    :cond_0
    return-void
.end method


# virtual methods
.method public changeAltitude(I)V
    .locals 8
    .param p1, "altitude"    # I

    .prologue
    .line 299
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mDroneModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->isInMoveToMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->updateWayPointAltitude(F)V

    .line 301
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mDroneModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getMoveToLocation()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v0

    .line 302
    .local v0, "position":Lcom/parrot/freeflight/core/model/DroneModel$Position;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLongitude()D

    move-result-wide v4

    int-to-double v6, p1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->sendMoveToAction(DDD)V

    .line 308
    .end local v0    # "position":Lcom/parrot/freeflight/core/model/DroneModel$Position;
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mDroneModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->isInPilotedPOIMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->updatePoiAltitude(F)V

    .line 305
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mDroneModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->getPilotedPOILocation()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v0

    .line 306
    .restart local v0    # "position":Lcom/parrot/freeflight/core/model/DroneModel$Position;
    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mDroneModel:Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLongitude()D

    move-result-wide v4

    int-to-double v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;->startPilotedPOI(DDD)V

    goto :goto_0
.end method

.method public setEditionEnabled(Z)V
    .locals 0
    .param p1, "editionEnabled"    # Z

    .prologue
    .line 311
    iput-boolean p1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mIsEditionEnabled:Z

    .line 312
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mOnMapClickListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/map/GLMapLayout;->addOnMapClickListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;I)V

    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mOnMapLongClickListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/map/GLMapLayout;->addOnMapLongClickListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;I)V

    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mOnMapScrollListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/map/GLMapLayout;->addOnMapScrollListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;I)V

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mOnMapTouchDownListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchDownListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/GLMapLayout;->setOnMapTouchDownListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchDownListener;)V

    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mOnMapTouchUpListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/GLMapLayout;->setOnMapTouchUpListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;)V

    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mOnMapSizeChangedListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/GLMapLayout;->addSizeChangedListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;)V

    .line 95
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mOnMapClickListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/GLMapLayout;->removeOnMapClickListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mOnMapLongClickListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/GLMapLayout;->removeOnMapLongClickListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mOnMapScrollListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/GLMapLayout;->removeOnMapScrollListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;)V

    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/map/GLMapLayout;->setOnMapTouchDownListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchDownListener;)V

    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/map/GLMapLayout;->setOnMapTouchUpListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;)V

    .line 103
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapLayout:Lcom/parrot/freeflight/map/GLMapLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mOnMapSizeChangedListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/GLMapLayout;->removeSizeChangedListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;)V

    .line 104
    return-void
.end method

.method public updateMapInteractionPadding(II)V
    .locals 0
    .param p1, "mapInteractionPadding"    # I
    .param p2, "mapInteractionBottomPadding"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapInteractionPadding:I

    .line 108
    iput p2, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->mMapInteractionBottomPadding:I

    .line 109
    return-void
.end method
