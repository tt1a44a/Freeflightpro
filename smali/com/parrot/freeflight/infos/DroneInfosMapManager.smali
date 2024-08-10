.class public Lcom/parrot/freeflight/infos/DroneInfosMapManager;
.super Lcom/parrot/freeflight/map/MapManager;
.source "DroneInfosMapManager.java"


# instance fields
.field private mDroneBitmap:Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDroneLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDroneMarker:Lcom/parrot/freeflight/map/IMarker;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/map/IMapView;)V
    .locals 1
    .param p1, "mapView"    # Lcom/parrot/freeflight/map/IMapView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/map/MapManager;-><init>(Lcom/parrot/freeflight/map/IMapView;)V

    .line 32
    new-instance v0, Lcom/parrot/freeflight/infos/DroneInfosMapManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/infos/DroneInfosMapManager$1;-><init>(Lcom/parrot/freeflight/infos/DroneInfosMapManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/infos/DroneInfosMapManager;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/infos/DroneInfosMapManager;)Lcom/parrot/freeflight/piloting/RelativePositionController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/infos/DroneInfosMapManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosMapManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mDroneLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/infos/DroneInfosMapManager;)Lcom/parrot/freeflight/piloting/RelativePositionController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/infos/DroneInfosMapManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosMapManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mControllerLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/infos/DroneInfosMapManager;)Lcom/parrot/freeflight/piloting/RelativePositionController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosMapManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/infos/DroneInfosMapManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosMapManager;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->updateMap(Z)V

    return-void
.end method

.method private getDroneIcon(IZ)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "connected"    # Z
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 83
    packed-switch p1, :pswitch_data_0

    .line 92
    if-eqz p2, :cond_3

    const v0, 0x7f070296

    :goto_0
    return v0

    .line 86
    :pswitch_0
    if-eqz p2, :cond_0

    const v0, 0x7f070294

    goto :goto_0

    :cond_0
    const v0, 0x7f070293

    goto :goto_0

    .line 88
    :pswitch_1
    if-eqz p2, :cond_1

    const v0, 0x7f070298

    goto :goto_0

    :cond_1
    const v0, 0x7f070297

    goto :goto_0

    .line 90
    :pswitch_2
    if-eqz p2, :cond_2

    const v0, 0x7f07029a

    goto :goto_0

    :cond_2
    const v0, 0x7f070299

    goto :goto_0

    .line 92
    :cond_3
    const v0, 0x7f070295

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateDroneMarker(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 3
    .param p1, "droneLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 130
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-nez v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    if-nez p1, :cond_2

    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mDroneMarker:Lcom/parrot/freeflight/map/IMarker;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mDroneMarker:Lcom/parrot/freeflight/map/IMarker;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMarker;->remove()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mDroneMarker:Lcom/parrot/freeflight/map/IMarker;

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mDroneMarker:Lcom/parrot/freeflight/map/IMarker;

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mDroneMarker:Lcom/parrot/freeflight/map/IMarker;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/map/IMarker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mDroneBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mDroneBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/parrot/freeflight/map/IMap;->addMarker(Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Bitmap;F)Lcom/parrot/freeflight/map/IMarker;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mDroneMarker:Lcom/parrot/freeflight/map/IMarker;

    goto :goto_0
.end method

.method private updateMap(Z)V
    .locals 8
    .param p1, "recomputeMapBounds"    # Z

    .prologue
    const/4 v7, 0x0

    .line 102
    iget-object v3, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-nez v3, :cond_0

    .line 127
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mControllerLocation:Landroid/location/Location;

    invoke-static {v3}, Lcom/parrot/freeflight/location/LocationUtils;->locationToLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 105
    .local v1, "controllerLatLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v3, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mDroneLocation:Landroid/location/Location;

    invoke-static {v3}, Lcom/parrot/freeflight/location/LocationUtils;->locationToLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 108
    .local v2, "droneLatLng":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz p1, :cond_2

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "centerLatLng":Lcom/google/android/gms/maps/model/LatLng;
    iput v7, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mMapAngle:F

    .line 112
    if-eqz v2, :cond_3

    .line 114
    move-object v0, v2

    .line 120
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 121
    iget-object v3, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    new-instance v4, Lcom/google/android/gms/maps/model/CameraPosition;

    const/high16 v5, 0x41880000    # 17.0f

    iget v6, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mMapAngle:F

    invoke-direct {v4, v0, v5, v7, v6}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/parrot/freeflight/map/IMap;->moveCamera(Lcom/google/android/gms/maps/model/CameraPosition;Z)V

    .line 125
    .end local v0    # "centerLatLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_2
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->updateDroneMarker(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 126
    iget v3, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mControllerRotation:F

    invoke-virtual {p0, v1, v3}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->updateControllerMarker(Lcom/google/android/gms/maps/model/LatLng;F)V

    goto :goto_0

    .line 115
    .restart local v0    # "centerLatLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_3
    if-eqz v1, :cond_1

    .line 117
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public init(Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 2
    .param p1, "relativePositionController"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    iput-object p2, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, Lcom/parrot/freeflight/map/MapManager;->init(Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;Z)V

    .line 58
    return-void
.end method

.method protected initMap()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 62
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 64
    .local v0, "location":Landroid/location/Location;
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->getDroneLocation()Landroid/location/Location;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mDroneLocation:Landroid/location/Location;

    .line 65
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->getControllerLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mControllerLocation:Landroid/location/Location;

    .line 66
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->updateMap(Z)V

    .line 68
    .end local v0    # "location":Landroid/location/Location;
    :cond_0
    return-void

    .line 64
    .restart local v0    # "location":Landroid/location/Location;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected initMapIcons()V
    .locals 4

    .prologue
    .line 72
    iget-object v2, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v2}, Lcom/parrot/freeflight/map/IMapView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 73
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0703f2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mControllerBitmap:Landroid/graphics/Bitmap;

    .line 75
    iget-object v2, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->getDroneIcon(IZ)I

    move-result v0

    .line 77
    .local v0, "resId":I
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/infos/DroneInfosMapManager;->mDroneBitmap:Landroid/graphics/Bitmap;

    .line 79
    .end local v0    # "resId":I
    :cond_0
    return-void
.end method

.method protected mapReady()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method
