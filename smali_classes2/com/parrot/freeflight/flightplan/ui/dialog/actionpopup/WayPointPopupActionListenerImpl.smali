.class public Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/WayPointPopupActionListenerImpl;
.super Ljava/lang/Object;
.source "WayPointPopupActionListenerImpl.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;


# instance fields
.field protected final mFlightPlanMapControllerWeakReference:Ljava/lang/ref/WeakReference;
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

.field protected final mWayPointIndex:I


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;I)V
    .locals 1
    .param p1, "flightPlanMapController"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "wayPointIndex"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/WayPointPopupActionListenerImpl;->mFlightPlanMapControllerWeakReference:Ljava/lang/ref/WeakReference;

    .line 16
    iput p2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/WayPointPopupActionListenerImpl;->mWayPointIndex:I

    .line 17
    return-void
.end method


# virtual methods
.method public onDeleteClick(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;)V
    .locals 2
    .param p1, "popupWindow"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/WayPointPopupActionListenerImpl;->mFlightPlanMapControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .line 23
    .local v0, "flightPlanMapController":Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    if-eqz v0, :cond_0

    .line 24
    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/WayPointPopupActionListenerImpl;->mWayPointIndex:I

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->removeWayPoint(I)V

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;->dismiss()V

    .line 27
    return-void
.end method

.method public onEditClick(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;)V
    .locals 2
    .param p1, "popupWindow"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/WayPointPopupActionListenerImpl;->mFlightPlanMapControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .line 33
    .local v0, "flightPlanMapController":Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    if-eqz v0, :cond_0

    .line 34
    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/WayPointPopupActionListenerImpl;->mWayPointIndex:I

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->showWayPointEditBox(I)V

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;->dismiss()V

    .line 37
    return-void
.end method
