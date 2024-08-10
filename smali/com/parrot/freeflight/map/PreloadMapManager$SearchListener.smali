.class public interface abstract Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;
.super Ljava/lang/Object;
.source "PreloadMapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/map/PreloadMapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchListener"
.end annotation


# virtual methods
.method public abstract isSearching()V
.end method

.method public abstract searchFinished(Lcom/google/android/gms/maps/model/LatLng;)V
    .param p1    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
