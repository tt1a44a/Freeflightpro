.class public Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;
.super Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;
.source "DurationFragment.java"


# instance fields
.field private mSeekbar:Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getTitleRes()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 63
    const v0, 0x7f110212

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 34
    const v1, 0x7f0c0095

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;

    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;->mSeekbar:Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;

    .line 37
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;->mSeekbar:Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;

    sget-object v2, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->DEFAULT_DURATION_ARRAY:[I

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->setValueArray([I)V

    .line 38
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;->mSeekbar:Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->getTotalVideoLength()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->setLimit(I)V

    .line 39
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;->mSeekbar:Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->setProgress(I)V

    .line 40
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;->mSeekbar:Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;

    new-instance v2, Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment$1;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->setDurationValueChangeListener(Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$DurationValueChangeListener;)V

    .line 48
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;->onResume()V

    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;->mSeekbar:Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->setProgress(I)V

    .line 55
    return-void
.end method
