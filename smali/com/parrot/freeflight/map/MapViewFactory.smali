.class public Lcom/parrot/freeflight/map/MapViewFactory;
.super Ljava/lang/Object;
.source "MapViewFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/view/ViewGroup;)Lcom/parrot/freeflight/map/IMapView;
    .locals 1
    .param p0, "mapViewLayout"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 14
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/parrot/freeflight/map/MapViewFactory;->create(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/map/IMapView;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/map/IMapView;
    .locals 5
    .param p0, "mapViewLayout"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 27
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 30
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    new-instance v2, Lcom/google/android/gms/maps/MapView;

    invoke-direct {v2, v0}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;)V

    .line 31
    .local v2, "mapView":Lcom/google/android/gms/maps/MapView;
    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/MapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    new-instance v3, Lcom/parrot/freeflight/map/google/GoogleMapView;

    invoke-direct {v3, v2}, Lcom/parrot/freeflight/map/google/GoogleMapView;-><init>(Lcom/google/android/gms/maps/MapView;)V

    .line 35
    .local v3, "retVal":Lcom/parrot/freeflight/map/IMapView;
    invoke-interface {v3}, Lcom/parrot/freeflight/map/IMapView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 36
    return-object v3
.end method
