.class public interface abstract Lcom/parrot/freeflight/map/IProjection;
.super Ljava/lang/Object;
.source "IProjection.java"


# virtual methods
.method public abstract fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;
    .param p1    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;
    .param p1    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
