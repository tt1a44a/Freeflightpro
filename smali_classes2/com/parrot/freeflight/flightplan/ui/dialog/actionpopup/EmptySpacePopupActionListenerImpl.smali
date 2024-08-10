.class public Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpacePopupActionListenerImpl;
.super Ljava/lang/Object;
.source "EmptySpacePopupActionListenerImpl.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnEmptySpacePopupActionListener;


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


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;)V
    .locals 1
    .param p1, "flightPlanMapController"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpacePopupActionListenerImpl;->mFlightPlanMapControllerWeakReference:Ljava/lang/ref/WeakReference;

    .line 16
    return-void
.end method


# virtual methods
.method public onAddPoi(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2
    .param p1, "popupWindow"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpacePopupActionListenerImpl;->mFlightPlanMapControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .line 42
    .local v0, "flightPlanMapController":Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->addPoi(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->dismiss()V

    .line 46
    return-void
.end method

.method public onCloseClick(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;)V
    .locals 2
    .param p1, "popupWindow"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpacePopupActionListenerImpl;->mFlightPlanMapControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .line 32
    .local v0, "flightPlanMapController":Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    if-eqz v0, :cond_0

    .line 33
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->buckle(Z)V

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->dismiss()V

    .line 36
    return-void
.end method

.method public onOpenClick(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;)V
    .locals 2
    .param p1, "popupWindow"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 20
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpacePopupActionListenerImpl;->mFlightPlanMapControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .line 22
    .local v0, "flightPlanMapController":Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    if-eqz v0, :cond_0

    .line 23
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->unbuckle(Z)Z

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->dismiss()V

    .line 26
    return-void
.end method
