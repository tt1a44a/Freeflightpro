.class public interface abstract Lcom/parrot/freeflight/flightplan/ui/MapUIController$UiLayerUpdater;
.super Ljava/lang/Object;
.source "MapUIController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/ui/MapUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UiLayerUpdater"
.end annotation


# virtual methods
.method public abstract checkGeofenceAlert(ILcom/google/android/gms/maps/model/LatLng;)Z
    .param p2    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract hideButtons()V
.end method

.method public abstract isEditionEnabled()Z
.end method

.method public abstract isRedoButtonEnabled()Z
.end method

.method public abstract isUndoButtonEnabled()Z
.end method

.method public abstract setAltitudeProgressBarValue(III)V
.end method

.method public abstract setAltitudeSeekBarEnabled(Z)V
.end method

.method public abstract setRedoButtonEnabled(Z)V
.end method

.method public abstract setSeekBarEnabled(ZZ)V
.end method

.method public abstract setSpeedProgressBarValue(II)V
.end method

.method public abstract setSpeedSeekBarEnabled(Z)V
.end method

.method public abstract setUndoButtonEnabled(Z)V
.end method

.method public abstract showButtons()V
.end method

.method public abstract showPoiEditionEnded()V
.end method

.method public abstract showPoiEditionStarted(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanPoi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract updateGeofenceAlert(IZ)V
.end method

.method public abstract updateLayerButtons(Z)V
.end method

.method public abstract updatePlayButton(Z)V
.end method
