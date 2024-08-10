.class public Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;
.super Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;
.source "LineActionPopup.java"


# instance fields
.field private final mAssociatedToPoi:Z

.field private final mOnLineActionPopupListener:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnLinePopupActionListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mProgressiveCap:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnLinePopupActionListener;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onLineActionPopupListener"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnLinePopupActionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "planProduct"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "associatedToPoi"    # Z
    .param p5, "progressiveCap"    # Z

    .prologue
    .line 27
    const v0, 0x7f0c0085

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->mOnLineActionPopupListener:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnLinePopupActionListener;

    .line 29
    iput-object p3, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 30
    iput-boolean p4, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->mAssociatedToPoi:Z

    .line 31
    iput-boolean p5, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->mProgressiveCap:Z

    .line 32
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->initUi(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;)Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnLinePopupActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->mOnLineActionPopupListener:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnLinePopupActionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->mProgressiveCap:Z

    return v0
.end method


# virtual methods
.method protected initUi(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v13, 0x7f0a00b0

    const v12, 0x7f0a006b

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 37
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0a007f

    const v4, 0x7f11035e

    const v5, 0x7f0702b3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->initButtonLayout(Landroid/content/Context;Landroid/view/ViewGroup;III)Landroid/widget/Button;

    move-result-object v8

    .line 38
    .local v8, "insertButton":Landroid/widget/Button;
    new-instance v0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup$1;-><init>(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->mPlanProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/utils/ProductSpecificBehaviour;->isPlanForFixedWing(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 47
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f1101db

    const v5, 0x7f0702ba

    move-object v0, p0

    move-object v1, p1

    move v3, v12

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->initButtonLayout(Landroid/content/Context;Landroid/view/ViewGroup;III)Landroid/widget/Button;

    move-result-object v7

    .line 48
    .local v7, "editButton":Landroid/widget/Button;
    new-instance v0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup$2;-><init>(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->mAssociatedToPoi:Z

    if-nez v0, :cond_0

    .line 57
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->mProgressiveCap:Z

    if-eqz v0, :cond_1

    const v4, 0x7f110252

    .line 58
    .local v4, "stringRes":I
    :goto_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->mProgressiveCap:Z

    if-eqz v0, :cond_2

    const v5, 0x7f0702b9

    .line 59
    .local v5, "drawableRes":I
    :goto_1
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->mProgressiveCap:Z

    if-eqz v0, :cond_3

    const v6, 0x7f050146

    .line 60
    .local v6, "textColorRes":I
    :goto_2
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->mRootView:Landroid/view/ViewGroup;

    move-object v0, p0

    move-object v1, p1

    move v3, v13

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->initButtonLayout(Landroid/content/Context;Landroid/view/ViewGroup;IIII)Landroid/widget/Button;

    move-result-object v9

    .line 61
    .local v9, "progressiveCapButton":Landroid/widget/Button;
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 62
    new-instance v0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup$3;-><init>(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .end local v4    # "stringRes":I
    .end local v5    # "drawableRes":I
    .end local v6    # "textColorRes":I
    .end local v7    # "editButton":Landroid/widget/Button;
    .end local v9    # "progressiveCapButton":Landroid/widget/Button;
    :cond_0
    :goto_3
    return-void

    .line 57
    .restart local v7    # "editButton":Landroid/widget/Button;
    :cond_1
    const v4, 0x7f11025a

    goto :goto_0

    .line 58
    .restart local v4    # "stringRes":I
    :cond_2
    const v5, 0x7f0702b6

    goto :goto_1

    .line 59
    .restart local v5    # "drawableRes":I
    :cond_3
    const v6, 0x7f0500a3

    goto :goto_2

    .line 74
    .end local v4    # "stringRes":I
    .end local v5    # "drawableRes":I
    .end local v7    # "editButton":Landroid/widget/Button;
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method
