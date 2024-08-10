.class public Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;
.super Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;
.source "AltitudeEditBox.java"


# static fields
.field private static final INVALID_ALTITUDE:F = -1.0f


# instance fields
.field private final mAltitudeChangedListener:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnPointAltitudeChanged;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPointIndex:I

.field private final mPointType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnPointAltitudeChanged;IIF)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "onAltitudeChangedListener"    # Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnPointAltitudeChanged;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "pointType"    # I
    .param p4, "pointIndex"    # I
    .param p5, "altitude"    # F

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/FlightPlanEditBox;-><init>(Landroid/content/Context;)V

    .line 26
    iput p3, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;->mPointType:I

    .line 27
    iput p4, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;->mPointIndex:I

    .line 28
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;->mAltitudeChangedListener:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnPointAltitudeChanged;

    .line 29
    invoke-direct {p0, p3, p5}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;->init(IF)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;

    .prologue
    .line 12
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;->mPointType:I

    return v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;

    .prologue
    .line 12
    iget v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;->mPointIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;)Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnPointAltitudeChanged;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;->mAltitudeChangedListener:Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/OnPointAltitudeChanged;

    return-object v0
.end method

.method private init(IF)V
    .locals 8
    .param p1, "pointType"    # I
    .param p2, "altitude"    # F

    .prologue
    .line 33
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;->mTitleTextView:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const v1, 0x7f1107af

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 35
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;->mItemPropertyTextView:Landroid/widget/TextView;

    const v2, 0x7f110253

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 38
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    float-to-double v4, p2

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_1

    const-string v1, "%.1f"

    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "altitudeText":Ljava/lang/String;
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 42
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;->mUnitLabel:Landroid/widget/TextView;

    const v2, 0x7f110421

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 44
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;->mOkButton:Landroid/widget/Button;

    new-instance v2, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox$1;-><init>(Lcom/parrot/freeflight/flightplan/ui/dialog/editbox/AltitudeEditBox;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void

    .line 33
    .end local v0    # "altitudeText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f1105b7

    goto :goto_0

    .line 38
    :cond_1
    const-string v1, "%.0f"

    goto :goto_1
.end method
