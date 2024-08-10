.class public interface abstract Lcom/parrot/freeflight/map/IMapView;
.super Ljava/lang/Object;
.source "IMapView.java"


# virtual methods
.method public abstract getLogoVerticalOffset()I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end method

.method public abstract getMapAsync(Lcom/parrot/freeflight/map/IOnMapReadyCallback;)V
    .param p1    # Lcom/parrot/freeflight/map/IOnMapReadyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getView()Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onLowMemory()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
