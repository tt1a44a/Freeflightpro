.class public interface abstract Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation$CameraChangedListener;
.super Ljava/lang/Object;
.source "MapCameraAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/ui/MapCameraAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraChangedListener"
.end annotation


# virtual methods
.method public abstract onMapCameraChanged(Lcom/parrot/freeflight/map/IProjection;Lcom/google/android/gms/maps/model/CameraPosition;)V
    .param p1    # Lcom/parrot/freeflight/map/IProjection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/maps/model/CameraPosition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
