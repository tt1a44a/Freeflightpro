.class public abstract Lcom/parrot/freeflight/map/MapManager;
.super Ljava/lang/Object;
.source "MapManager.java"


# static fields
.field protected static final FIXED_ZOOM_LEVEL:I = 0x11


# instance fields
.field protected mControllerBitmap:Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mControllerLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mControllerMarker:Lcom/parrot/freeflight/map/IMarker;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mControllerRotation:F

.field protected mMap:Lcom/parrot/freeflight/map/IMap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mMapAngle:F

.field protected final mMapView:Lcom/parrot/freeflight/map/IMapView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mVisibleHeight:I


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/map/IMapView;)V
    .locals 0
    .param p1, "mapView"    # Lcom/parrot/freeflight/map/IMapView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/parrot/freeflight/map/MapManager;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    .line 42
    return-void
.end method


# virtual methods
.method public getMapView()Lcom/parrot/freeflight/map/IMapView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    return-object v0
.end method

.method protected init(Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;Z)V
    .locals 2
    .param p1, "relativePositionController"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "relativePositionListener"    # Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "enableGestures"    # Z

    .prologue
    .line 45
    iput-object p1, p0, Lcom/parrot/freeflight/map/MapManager;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    .line 46
    iput-object p2, p0, Lcom/parrot/freeflight/map/MapManager;->mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    iget-object v1, p0, Lcom/parrot/freeflight/map/MapManager;->mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->registerListener(Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;)V

    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onResume()V

    .line 52
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/MapManager;->initMap()V

    .line 83
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/MapManager;->initMapIcons()V

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onResume()V

    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    new-instance v1, Lcom/parrot/freeflight/map/MapManager$1;

    invoke-direct {v1, p0, p3}, Lcom/parrot/freeflight/map/MapManager$1;-><init>(Lcom/parrot/freeflight/map/MapManager;Z)V

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/map/IMapView;->getMapAsync(Lcom/parrot/freeflight/map/IOnMapReadyCallback;)V

    goto :goto_0
.end method

.method protected abstract initMap()V
.end method

.method protected abstract initMapIcons()V
.end method

.method protected abstract mapReady()V
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    iget-object v1, p0, Lcom/parrot/freeflight/map/MapManager;->mRelativePositionListener:Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->unregisterListener(Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;)V

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mRelativePositionController:Lcom/parrot/freeflight/piloting/RelativePositionController;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mMapView:Lcom/parrot/freeflight/map/IMapView;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMapView;->onPause()V

    .line 93
    return-void
.end method

.method protected updateControllerMarker(Lcom/google/android/gms/maps/model/LatLng;F)V
    .locals 3
    .param p1, "homeLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "rotation"    # F

    .prologue
    .line 105
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-nez v0, :cond_2

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mControllerMarker:Lcom/parrot/freeflight/map/IMarker;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mControllerMarker:Lcom/parrot/freeflight/map/IMarker;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/IMarker;->remove()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mControllerMarker:Lcom/parrot/freeflight/map/IMarker;

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mControllerMarker:Lcom/parrot/freeflight/map/IMarker;

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mControllerMarker:Lcom/parrot/freeflight/map/IMarker;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/map/IMarker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 113
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mControllerMarker:Lcom/parrot/freeflight/map/IMarker;

    invoke-interface {v0, p2}, Lcom/parrot/freeflight/map/IMarker;->setRotation(F)V

    goto :goto_0

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mControllerBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    iget-object v1, p0, Lcom/parrot/freeflight/map/MapManager;->mControllerBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/parrot/freeflight/map/IMap;->addMarker(Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Bitmap;F)Lcom/parrot/freeflight/map/IMarker;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/map/MapManager;->mControllerMarker:Lcom/parrot/freeflight/map/IMarker;

    goto :goto_0
.end method
