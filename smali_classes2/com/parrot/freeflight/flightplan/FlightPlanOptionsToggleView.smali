.class public Lcom/parrot/freeflight/flightplan/FlightPlanOptionsToggleView;
.super Landroid/widget/RadioGroup;
.source "FlightPlanOptionsToggleView.java"


# instance fields
.field private mLeftRadioButton:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRightRadioButton:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/RadioGroup;->onFinishInflate()V

    .line 33
    const v0, 0x7f0a0394

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/FlightPlanOptionsToggleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanOptionsToggleView;->mLeftRadioButton:Landroid/widget/RadioButton;

    .line 34
    const v0, 0x7f0a0397

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/FlightPlanOptionsToggleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanOptionsToggleView;->mRightRadioButton:Landroid/widget/RadioButton;

    .line 35
    return-void
.end method
