.class public Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;
.super Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;
.source "EmptySpaceActionPopup.java"


# instance fields
.field private final mLatLng:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOnEmptySpaceActionPopupListener:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnEmptySpacePopupActionListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPlanBuckled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnEmptySpacePopupActionListener;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "onEmptySpaceActionPopupListener"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnEmptySpacePopupActionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "planBuckled"    # Z

    .prologue
    .line 20
    const v0, 0x7f0c0083

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;-><init>(Landroid/content/Context;I)V

    .line 21
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 22
    iput-object p3, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->mOnEmptySpaceActionPopupListener:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnEmptySpacePopupActionListener;

    .line 23
    iput-boolean p4, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->mPlanBuckled:Z

    .line 24
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->initUi(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->mPlanBuckled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;)Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnEmptySpacePopupActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->mOnEmptySpaceActionPopupListener:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnEmptySpacePopupActionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method


# virtual methods
.method protected initUi(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0a0055

    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->mPlanBuckled:Z

    if-eqz v0, :cond_0

    const v4, 0x7f1104da

    :goto_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->mPlanBuckled:Z

    if-eqz v0, :cond_1

    const v5, 0x7f0702bb

    :goto_1
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->initButtonLayout(Landroid/content/Context;Landroid/view/ViewGroup;III)Landroid/widget/Button;

    move-result-object v6

    .line 30
    .local v6, "buckleButton":Landroid/widget/Button;
    new-instance v0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup$1;-><init>(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0a00ad

    const v4, 0x7f1105b7

    const v5, 0x7f0702b8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->initButtonLayout(Landroid/content/Context;Landroid/view/ViewGroup;III)Landroid/widget/Button;

    move-result-object v7

    .line 42
    .local v7, "poiButton":Landroid/widget/Button;
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 43
    new-instance v0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup$2;-><init>(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void

    .line 29
    .end local v6    # "buckleButton":Landroid/widget/Button;
    .end local v7    # "poiButton":Landroid/widget/Button;
    :cond_0
    const v4, 0x7f110143

    goto :goto_0

    :cond_1
    const v5, 0x7f0702b5

    goto :goto_1
.end method
