.class public Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;
.super Landroid/app/Dialog;
.source "FlightPlanEditBox.java"


# instance fields
.field protected final mEditText:Landroid/widget/EditText;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mItemPropertyTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mOkButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mTitleTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mUnitLabel:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    const v0, 0x7f120009

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;->requestWindowFeature(I)Z

    .line 33
    const v0, 0x7f0c0080

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;->setContentView(I)V

    .line 35
    const v0, 0x7f0a04c8

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;->mTitleTextView:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f0a0481

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;->mItemPropertyTextView:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0a0136

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;->mEditText:Landroid/widget/EditText;

    .line 38
    const v0, 0x7f0a04d0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;->mUnitLabel:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0a00a1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;->mOkButton:Landroid/widget/Button;

    .line 41
    const v0, 0x7f0a02c0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 42
    return-void
.end method
