.class public Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;
.super Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;
.source "StyleFragment.java"


# instance fields
.field private mCinematicView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mStoryView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTrailerView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;
    .param p1, "x1"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;->selectStyle(I)V

    return-void
.end method

.method public static newInstance()Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;-><init>()V

    .line 35
    .local v0, "fragment":Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;
    return-object v0
.end method

.method private selectStyle(I)V
    .locals 4
    .param p1, "style"    # I
        .annotation build Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder$Style;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 97
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;->mStoryView:Landroid/view/View;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 98
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;->mTrailerView:Landroid/view/View;

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;->mCinematicView:Landroid/view/View;

    if-ne v1, p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->setStyle(I)V

    .line 102
    return-void

    :cond_0
    move v0, v2

    .line 97
    goto :goto_0

    :cond_1
    move v0, v2

    .line 98
    goto :goto_1

    :cond_2
    move v1, v2

    .line 99
    goto :goto_2
.end method


# virtual methods
.method public getTitleRes()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 88
    const v0, 0x7f110232

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
    .line 46
    const v1, 0x7f0c009d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a0120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;->mStoryView:Landroid/view/View;

    .line 50
    const v1, 0x7f0a0121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;->mTrailerView:Landroid/view/View;

    .line 51
    const v1, 0x7f0a011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;->mCinematicView:Landroid/view/View;

    .line 54
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;->mStoryView:Landroid/view/View;

    new-instance v2, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment$1;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;->mTrailerView:Landroid/view/View;

    new-instance v2, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment$2;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;->mCinematicView:Landroid/view/View;

    new-instance v2, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment$3;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getStyle()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;->selectStyle(I)V

    .line 77
    return-object v0
.end method
