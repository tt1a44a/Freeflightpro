.class public interface abstract Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnEmptySpacePopupActionListener;
.super Ljava/lang/Object;
.source "OnEmptySpacePopupActionListener.java"


# virtual methods
.method public abstract onAddPoi(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;Lcom/google/android/gms/maps/model/LatLng;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onCloseClick(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onOpenClick(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
