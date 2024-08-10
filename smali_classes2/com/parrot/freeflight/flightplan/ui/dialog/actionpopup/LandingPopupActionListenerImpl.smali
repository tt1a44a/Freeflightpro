.class public Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingPopupActionListenerImpl;
.super Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/WayPointPopupActionListenerImpl;
.source "LandingPopupActionListenerImpl.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnLandingPopupActionListener;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;I)V
    .locals 0
    .param p1, "flightPlanMapController"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "wayPointIndex"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/WayPointPopupActionListenerImpl;-><init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;I)V

    .line 12
    return-void
.end method


# virtual methods
.method public onLandingModeClick(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;I)V
    .locals 2
    .param p1, "popupWindow"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newLandingMode"    # I

    .prologue
    .line 16
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingPopupActionListenerImpl;->mFlightPlanMapControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .line 18
    .local v0, "flightPlanMapController":Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    if-eqz v0, :cond_0

    .line 19
    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingPopupActionListenerImpl;->mWayPointIndex:I

    invoke-virtual {v0, v1, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->changePointLandingMode(II)V

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;->dismiss()V

    .line 22
    return-void
.end method
