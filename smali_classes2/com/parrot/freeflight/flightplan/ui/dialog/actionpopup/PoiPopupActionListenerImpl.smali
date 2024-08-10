.class public Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PoiPopupActionListenerImpl;
.super Ljava/lang/Object;
.source "PoiPopupActionListenerImpl.java"

# interfaces
.implements Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;


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

.field private final mPoiIndex:I


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;I)V
    .locals 1
    .param p1, "flightPlanMapController"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "poiIndex"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PoiPopupActionListenerImpl;->mFlightPlanMapControllerWeakReference:Ljava/lang/ref/WeakReference;

    .line 16
    iput p2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PoiPopupActionListenerImpl;->mPoiIndex:I

    .line 17
    return-void
.end method


# virtual methods
.method public onDeleteClick(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;)V
    .locals 3
    .param p1, "popupWindow"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PoiPopupActionListenerImpl;->mFlightPlanMapControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .line 23
    .local v0, "flightPlanMapController":Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    if-eqz v0, :cond_0

    .line 24
    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PoiPopupActionListenerImpl;->mPoiIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->removePoi(IZ)V

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
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PoiPopupActionListenerImpl;->mFlightPlanMapControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;

    .line 33
    .local v0, "flightPlanMapController":Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;
    if-eqz v0, :cond_0

    .line 34
    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PoiPopupActionListenerImpl;->mPoiIndex:I

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanMapActionController;->showPoiEditBox(I)V

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;->dismiss()V

    .line 37
    return-void
.end method
