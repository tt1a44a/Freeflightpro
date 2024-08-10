.class public Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;
.super Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;
.source "PointActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;",
        ">",
        "Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;"
    }
.end annotation


# instance fields
.field protected final mOnObjectActionPopupListener:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mShowEditButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;, "Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup<TT;>;"
    .local p2, "onObjectActionPopupListener":Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;, "TT;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;Z)V

    .line 20
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "layout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p4, "showEditButton"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;IZ)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;, "Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup<TT;>;"
    .local p2, "onObjectActionPopupListener":Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;, "TT;"
    invoke-direct {p0, p1, p3}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/FlightPlanActionPopupWindow;-><init>(Landroid/content/Context;I)V

    .line 32
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;->mOnObjectActionPopupListener:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;

    .line 33
    iput-boolean p4, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;->mShowEditButton:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "showEditButton"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;Z)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;, "Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup<TT;>;"
    .local p2, "onObjectActionPopupListener":Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;, "TT;"
    const v0, 0x7f0c0087

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;IZ)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;->initUi(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected initUi(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;, "Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup<TT;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0a0065

    const v4, 0x7f110145

    const v5, 0x7f0702b7

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;->initButtonLayout(Landroid/content/Context;Landroid/view/ViewGroup;III)Landroid/widget/Button;

    move-result-object v6

    .line 40
    .local v6, "deleteButton":Landroid/widget/Button;
    new-instance v0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup$1;-><init>(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a006b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 48
    .local v7, "editButton":Landroid/widget/Button;
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;->mShowEditButton:Z

    if-eqz v0, :cond_0

    .line 49
    const v0, 0x7f1101db

    const v1, 0x7f0702b4

    invoke-virtual {p0, p1, v7, v0, v1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;->initButtonLayout(Landroid/content/Context;Landroid/widget/Button;II)V

    .line 50
    new-instance v0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup$2;-><init>(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
