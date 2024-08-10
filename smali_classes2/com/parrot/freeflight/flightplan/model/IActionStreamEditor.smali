.class public interface abstract Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
.super Ljava/lang/Object;
.source "IActionStreamEditor.java"


# virtual methods
.method public abstract addNavigatorAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .param p1    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract addStartMediaAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .param p1    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract addStopMediaAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .param p1    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract addTiltAction(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .param p1    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract from(Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .param p1    # Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract from(Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;)Lcom/parrot/freeflight/flightplan/model/IActionStreamEditor;
    .param p1    # Lcom/parrot/freeflight/flightplan/model/plan/FlightPlanWayPoint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getStartMediaAction()Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getTiltAction()Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract removeNavigatorAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract removeStartMediaAction()Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract removeStopMediaAction()Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract removeTiltAction()Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method
