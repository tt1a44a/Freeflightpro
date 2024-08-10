.class public Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;
.super Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;
.source "SpeedEditBox.java"


# static fields
.field private static final INVALID_SPEED:I = -0x1


# instance fields
.field private final mSpeedEditListener:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnSpeedEditListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnSpeedEditListener;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onSpeedEditListener"    # Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnSpeedEditListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "currentSpeed"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;->mSpeedEditListener:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnSpeedEditListener;

    .line 18
    invoke-direct {p0, p3}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;->init(I)V

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;)Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnSpeedEditListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;->mSpeedEditListener:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnSpeedEditListener;

    return-object v0
.end method

.method private init(I)V
    .locals 3
    .param p1, "currentSpeed"    # I

    .prologue
    .line 22
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;->mTitleTextView:Landroid/widget/TextView;

    const v2, 0x7f1103a2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 24
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;->mItemPropertyTextView:Landroid/widget/TextView;

    const v2, 0x7f110254

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "speedText":Ljava/lang/String;
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 30
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;->mUnitLabel:Landroid/widget/TextView;

    const v2, 0x7f1103b4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 32
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;->mOkButton:Landroid/widget/Button;

    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox$1;-><init>(Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/SpeedEditBox;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method
