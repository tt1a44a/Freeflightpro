.class public abstract Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;
.super Landroid/widget/PopupWindow;
.source "FlightPlanActionPopupWindow.java"


# instance fields
.field private final mButtonHeight:I

.field private final mLeftIconSize:I

.field private mPopupPositionX:I

.field private mPopupPositionY:I

.field protected final mRootView:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "layout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060154

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mButtonHeight:I

    .line 39
    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mButtonHeight:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mLeftIconSize:I

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mRootView:Landroid/view/ViewGroup;

    .line 43
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->setContentView(Landroid/view/View;)V

    .line 44
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v1, v2

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method

.method private calculatePopupPosition(Landroid/view/View;II)V
    .locals 6
    .param p1, "parentView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "touchEventX"    # I
    .param p3, "touchEventY"    # I

    .prologue
    const/4 v5, 0x0

    .line 55
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->measure(II)V

    .line 56
    iget-object v3, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    .line 58
    .local v0, "popupWidth":I
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->setWidth(I)V

    .line 59
    iget v3, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mButtonHeight:I

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->setHeight(I)V

    .line 60
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->setFocusable(Z)V

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 63
    .local v2, "width":I
    div-int/lit8 v1, v0, 0x2

    .line 66
    .local v1, "popupWidth2":I
    add-int v3, p2, v1

    if-lt v3, v2, :cond_0

    .line 67
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x1

    sub-int v3, v2, v3

    add-int/2addr v3, p2

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mPopupPositionX:I

    .line 74
    :goto_0
    iget v3, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mButtonHeight:I

    if-ge p3, v3, :cond_2

    .line 75
    iget v3, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mButtonHeight:I

    add-int/2addr v3, p3

    iput v3, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mPopupPositionY:I

    .line 79
    :goto_1
    return-void

    .line 68
    :cond_0
    sub-int v3, p2, v1

    if-gez v3, :cond_1

    .line 69
    sub-int v3, p2, v1

    add-int/lit8 v3, v3, -0x1

    sub-int v3, p2, v3

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mPopupPositionX:I

    goto :goto_0

    .line 71
    :cond_1
    sub-int v3, p2, v1

    iput v3, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mPopupPositionX:I

    goto :goto_0

    .line 77
    :cond_2
    iget v3, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mButtonHeight:I

    sub-int v3, p3, v3

    iput v3, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mPopupPositionY:I

    goto :goto_1
.end method


# virtual methods
.method protected initButtonLayout(Landroid/content/Context;Landroid/view/ViewGroup;III)Landroid/widget/Button;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 84
    const v6, 0x7f050146

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->initButtonLayout(Landroid/content/Context;Landroid/view/ViewGroup;IIII)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected initButtonLayout(Landroid/content/Context;Landroid/view/ViewGroup;IIII)Landroid/widget/Button;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .param p6, "textColor"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 88
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .local v2, "button":Landroid/widget/Button;
    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, p6

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->initButtonLayout(Landroid/content/Context;Landroid/widget/Button;III)V

    .line 90
    return-object v2
.end method

.method protected initButtonLayout(Landroid/content/Context;Landroid/widget/Button;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "button"    # Landroid/widget/Button;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4, "leftIconId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 94
    const v5, 0x7f050146

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->initButtonLayout(Landroid/content/Context;Landroid/widget/Button;III)V

    .line 95
    return-void
.end method

.method protected initButtonLayout(Landroid/content/Context;Landroid/widget/Button;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "button"    # Landroid/widget/Button;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4, "leftIconId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p5, "textColor"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p4, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 99
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .local v2, "drawableWidth":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 102
    .local v1, "drawableHeight":I
    if-le v2, v1, :cond_1

    .line 103
    iget v3, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mLeftIconSize:I

    int-to-float v3, v3

    int-to-float v4, v1

    mul-float/2addr v3, v4

    int-to-float v4, v2

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 104
    iget v2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mLeftIconSize:I

    .line 109
    :goto_0
    invoke-virtual {v0, v6, v6, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 110
    invoke-virtual {p2, v0, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 112
    .end local v1    # "drawableHeight":I
    .end local v2    # "drawableWidth":I
    :cond_0
    invoke-static {p1, p5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 113
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    .line 114
    invoke-virtual {p2}, Landroid/widget/Button;->invalidate()V

    .line 115
    invoke-static {p1, p2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 116
    return-void

    .line 106
    .restart local v1    # "drawableHeight":I
    .restart local v2    # "drawableWidth":I
    :cond_1
    iget v3, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mLeftIconSize:I

    int-to-float v3, v3

    int-to-float v4, v2

    mul-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-int v2, v3

    .line 107
    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mLeftIconSize:I

    goto :goto_0
.end method

.method protected abstract initUi(Landroid/content/Context;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p3, p4}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->calculatePopupPosition(Landroid/view/View;II)V

    .line 51
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mPopupPositionX:I

    iget v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;->mPopupPositionY:I

    invoke-super {p0, p1, p2, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 52
    return-void
.end method
