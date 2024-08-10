.class public interface abstract Lcom/parrot/freeflight/map/IMarker;
.super Ljava/lang/Object;
.source "IMarker.java"


# virtual methods
.method public abstract getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract remove()V
.end method

.method public abstract setAnchor(FF)V
.end method

.method public abstract setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
    .param p1    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setRotation(F)V
.end method
