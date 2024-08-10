.class Lcom/parrot/freeflight/map/google/GoogleMarker;
.super Ljava/lang/Object;
.source "GoogleMarker.java"

# interfaces
.implements Lcom/parrot/freeflight/map/IMarker;


# instance fields
.field private final mMarker:Lcom/google/android/gms/maps/model/Marker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/parrot/freeflight/map/google/GoogleMarker;->mMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 15
    return-void
.end method


# virtual methods
.method public getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMarker;->mMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMarker;->mMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 41
    return-void
.end method

.method public setAnchor(FF)V
    .locals 1
    .param p1, "anchorU"    # F
    .param p2, "anchorV"    # F

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMarker;->mMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/maps/model/Marker;->setAnchor(FF)V

    .line 31
    return-void
.end method

.method public setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "latlng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMarker;->mMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 20
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMarker;->mMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setRotation(F)V

    .line 36
    return-void
.end method
