.class public Lcom/parrot/freeflight/map/google/GoogleMapView;
.super Ljava/lang/Object;
.source "GoogleMapView.java"

# interfaces
.implements Lcom/parrot/freeflight/map/IMapView;


# instance fields
.field private mMap:Lcom/parrot/freeflight/map/google/GoogleMapWrapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMapView:Lcom/google/android/gms/maps/MapView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/MapView;)V
    .locals 0
    .param p1, "mapView"    # Lcom/google/android/gms/maps/MapView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/parrot/freeflight/map/google/GoogleMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/map/google/GoogleMapView;)Lcom/parrot/freeflight/map/google/GoogleMapWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/map/google/GoogleMapView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapView;->mMap:Lcom/parrot/freeflight/map/google/GoogleMapWrapper;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/map/google/GoogleMapView;Lcom/parrot/freeflight/map/google/GoogleMapWrapper;)Lcom/parrot/freeflight/map/google/GoogleMapWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/map/google/GoogleMapView;
    .param p1, "x1"    # Lcom/parrot/freeflight/map/google/GoogleMapWrapper;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/parrot/freeflight/map/google/GoogleMapView;->mMap:Lcom/parrot/freeflight/map/google/GoogleMapWrapper;

    return-object p1
.end method


# virtual methods
.method public getLogoVerticalOffset()I
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f06024d

    return v0
.end method

.method public getMapAsync(Lcom/parrot/freeflight/map/IOnMapReadyCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/parrot/freeflight/map/IOnMapReadyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    new-instance v1, Lcom/parrot/freeflight/map/google/GoogleMapView$1;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/map/google/GoogleMapView$1;-><init>(Lcom/parrot/freeflight/map/google/GoogleMapView;Lcom/parrot/freeflight/map/IOnMapReadyCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 79
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 34
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapView;->mMap:Lcom/parrot/freeflight/map/google/GoogleMapWrapper;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapView;->mMap:Lcom/parrot/freeflight/map/google/GoogleMapWrapper;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->setMyLocationEnabled(Z)V

    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapView;->mMap:Lcom/parrot/freeflight/map/google/GoogleMapWrapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->clear()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapView;->mMap:Lcom/parrot/freeflight/map/google/GoogleMapWrapper;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    iget-object v1, p0, Lcom/parrot/freeflight/map/google/GoogleMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->removeView(Landroid/view/View;)V

    .line 58
    :cond_1
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onLowMemory()V

    .line 63
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    .line 44
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 39
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapView;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method
