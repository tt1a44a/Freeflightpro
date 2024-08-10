.class public interface abstract Lcom/parrot/freeflight/flightplan/timeline/IOnFlightPlanActionFoundListener;
.super Ljava/lang/Object;
.source "IOnFlightPlanActionFoundListener.java"


# virtual methods
.method public abstract onDelayActionFound(Lcom/parrot/freeflight/flightplan/model/action/DelayAction;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/action/DelayAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onLandingActionFound(Lcom/parrot/freeflight/flightplan/model/action/LandingAction;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/action/LandingAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onPanoramaActionFound(Lcom/parrot/freeflight/flightplan/model/action/PanoramaAction;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/action/PanoramaAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onStartImageActionFound(Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/action/StartImageCaptureAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onStartVideoActionFound(Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/action/StartVideoCaptureAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onStopImageActionFound(Lcom/parrot/freeflight/flightplan/model/action/StopImageCaptureAction;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/action/StopImageCaptureAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onStopVideoActionFound(Lcom/parrot/freeflight/flightplan/model/action/StopVideoCaptureAction;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/action/StopVideoCaptureAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onTakeOffActionFound(Lcom/parrot/freeflight/flightplan/model/action/TakeOffAction;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/action/TakeOffAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onTiltActionFound(Lcom/parrot/freeflight/flightplan/model/action/TiltAction;)V
    .param p1    # Lcom/parrot/freeflight/flightplan/model/action/TiltAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
