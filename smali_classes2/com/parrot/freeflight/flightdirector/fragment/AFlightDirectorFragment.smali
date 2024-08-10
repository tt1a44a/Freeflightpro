.class public abstract Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;
.super Landroid/support/v4/app/Fragment;
.source "AFlightDirectorFragment.java"


# instance fields
.field protected mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getTitleRes()I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getFlightDirectorManager()Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    .line 32
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    .line 33
    return-void
.end method
