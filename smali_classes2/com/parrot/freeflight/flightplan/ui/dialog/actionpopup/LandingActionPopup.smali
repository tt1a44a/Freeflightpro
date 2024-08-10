.class public Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;
.super Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;
.source "LandingActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup",
        "<",
        "Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnLandingPopupActionListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCurrentLandingMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnLandingPopupActionListener;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onObjectActionPopupListener"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnLandingPopupActionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "currentLandingMode"    # I

    .prologue
    .line 20
    const v1, 0x7f0c0084

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;IZ)V

    .line 21
    iput p3, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;->mCurrentLandingMode:I

    .line 22
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;->initUi(Landroid/content/Context;)V

    .line 23
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initLandingButton(Landroid/content/Context;IIII)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "wantedLandingMode"    # I
    .param p3, "buttonId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p4, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p5, "leftIconId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 34
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 35
    .local v0, "landingModeButton":Landroid/widget/Button;
    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;->mCurrentLandingMode:I

    if-eq v1, p2, :cond_0

    .line 36
    invoke-virtual {p0, p1, v0, p4, p5}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;->initButtonLayout(Landroid/content/Context;Landroid/widget/Button;II)V

    .line 37
    new-instance v1, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup$1;

    invoke-direct {v1, p0, p2}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup$1;-><init>(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected initUi(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;->initUi(Landroid/content/Context;)V

    .line 28
    const/4 v2, -0x1

    const v3, 0x7f0a00c6

    const v4, 0x7f1107af

    const v5, 0x7f0702c7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;->initLandingButton(Landroid/content/Context;IIII)V

    .line 29
    const/4 v2, 0x0

    const v3, 0x7f0a0084

    const v4, 0x7f1103a4

    const v5, 0x7f070456

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;->initLandingButton(Landroid/content/Context;IIII)V

    .line 30
    const/4 v2, 0x1

    const v3, 0x7f0a00bb

    const v4, 0x7f110141

    const v5, 0x7f070457

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;->initLandingButton(Landroid/content/Context;IIII)V

    .line 31
    return-void
.end method
