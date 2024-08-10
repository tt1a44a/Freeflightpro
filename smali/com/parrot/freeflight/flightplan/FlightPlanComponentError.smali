.class public Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;
.super Ljava/lang/Object;
.source "FlightPlanComponentError.java"


# instance fields
.field private final mComponent:Lcom/parrot/freeflight/core/model/FlightPlanComponent;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMessage:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private final mNegativeActionButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mNegativeActionButtonText:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private final mPositiveActionButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPositiveActionButtonText:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/model/FlightPlanComponent;IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 7
    .param p1, "component"    # Lcom/parrot/freeflight/core/model/FlightPlanComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "message"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "positiveActionButtonText"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4, "positiveActionButtonOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;-><init>(Lcom/parrot/freeflight/core/model/FlightPlanComponent;IILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/parrot/freeflight/core/model/FlightPlanComponent;IILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "component"    # Lcom/parrot/freeflight/core/model/FlightPlanComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "message"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "positiveActionButtonText"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4, "positiveActionButtonOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "negativeActionButtonText"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p6, "negativeActionButtonOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->mComponent:Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    .line 40
    iput p2, p0, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->mMessage:I

    .line 41
    iput p3, p0, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->mPositiveActionButtonText:I

    .line 42
    iput-object p4, p0, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->mPositiveActionButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 43
    iput p5, p0, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->mNegativeActionButtonText:I

    .line 44
    iput-object p6, p0, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->mNegativeActionButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 45
    return-void
.end method


# virtual methods
.method public getComponent()Lcom/parrot/freeflight/core/model/FlightPlanComponent;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->mComponent:Lcom/parrot/freeflight/core/model/FlightPlanComponent;

    return-object v0
.end method

.method public getMessage()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 54
    iget v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->mMessage:I

    return v0
.end method

.method public getNegativeActionButtonOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->mNegativeActionButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public getNegativeActionButtonText()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 69
    iget v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->mNegativeActionButtonText:I

    return v0
.end method

.method public getPositiveActionButtonOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->mPositiveActionButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public getPositiveActionButtonText()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 59
    iget v0, p0, Lcom/parrot/freeflight/flightplan/FlightPlanComponentError;->mPositiveActionButtonText:I

    return v0
.end method
