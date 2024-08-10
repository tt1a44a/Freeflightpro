.class public Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LinePopupActionListenerImpl;
.super Ljava/lang/Object;
.source "LinePopupActionListenerImpl.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnLinePopupActionListener;


# instance fields
.field private final mFlightPlanMapControllerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;",
            ">;"
        }
    .end annotation
.end field

.field private final mLatLng:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLine:Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "flightPlanMapController"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "line"    # Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LinePopupActionListenerImpl;->mFlightPlanMapControllerWeakReference:Ljava/lang/ref/WeakReference;

    .line 23
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LinePopupActionListenerImpl;->mLine:Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    .line 24
    iput-object p3, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LinePopupActionListenerImpl;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 25
    return-void
.end method


# virtual methods
.method public onConstantCapClick(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;)V
    .locals 2
    .param p1, "popupWindow"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LinePopupActionListenerImpl;->mFlightPlanMapControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .line 51
    .local v0, "flightPlanMapController":Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LinePopupActionListenerImpl;->mLine:Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->setConstantCap(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;)V

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->dismiss()V

    .line 55
    return-void
.end method

.method public onEditClick(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;)V
    .locals 2
    .param p1, "popupWindow"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LinePopupActionListenerImpl;->mFlightPlanMapControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .line 41
    .local v0, "flightPlanMapController":Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LinePopupActionListenerImpl;->mLine:Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->showLineEditBox(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;)V

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->dismiss()V

    .line 45
    return-void
.end method

.method public onInsertClick(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;)V
    .locals 5
    .param p1, "popupWindow"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LinePopupActionListenerImpl;->mFlightPlanMapControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .line 31
    .local v0, "flightPlanMapController":Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    if-eqz v0, :cond_0

    .line 32
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LinePopupActionListenerImpl;->mLine:Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LinePopupActionListenerImpl;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->insertWayPoint(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;Lcom/google/android/gms/maps/model/LatLng;ZZ)V

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->dismiss()V

    .line 35
    return-void
.end method

.method public onProgressiveCapClick(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;)V
    .locals 2
    .param p1, "popupWindow"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LinePopupActionListenerImpl;->mFlightPlanMapControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .line 61
    .local v0, "flightPlanMapController":Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LinePopupActionListenerImpl;->mLine:Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->setProgressiveCap(Lcom/parrot/freeflight/flightplan/model/gl/GLWayPointsLine;)V

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->dismiss()V

    .line 65
    return-void
.end method
