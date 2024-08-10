.class public Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;
.super Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;
.source "FlightDataFragment.java"


# instance fields
.field private mCheckboxLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlightDataAdapter:Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFlightDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightdirector/data/FlightData;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsMapBox:Landroid/widget/CheckBox;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLocationBox:Landroid/widget/CheckBox;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLogoBox:Landroid/widget/CheckBox;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTelemetryBox:Landroid/widget/CheckBox;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;-><init>()V

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/parrot/freeflight/flightdirector/data/FlightData;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/data/FlightData;

    const/4 v2, -0x1

    const-string v3, "none"

    invoke-direct {v1, v2, v3}, Lcom/parrot/freeflight/flightdirector/data/FlightData;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/parrot/freeflight/flightdirector/data/FlightData;

    const v2, 0x7f0700b5

    invoke-direct {v1, v4, v2}, Lcom/parrot/freeflight/flightdirector/data/FlightData;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/parrot/freeflight/flightdirector/data/FlightData;

    const v2, 0x7f0700b4

    invoke-direct {v1, v5, v2}, Lcom/parrot/freeflight/flightdirector/data/FlightData;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/parrot/freeflight/flightdirector/data/FlightData;

    const v2, 0x7f0700b1

    invoke-direct {v1, v6, v2}, Lcom/parrot/freeflight/flightdirector/data/FlightData;-><init>(II)V

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-instance v2, Lcom/parrot/freeflight/flightdirector/data/FlightData;

    const v3, 0x7f0700b3

    invoke-direct {v2, v7, v3}, Lcom/parrot/freeflight/flightdirector/data/FlightData;-><init>(II)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/parrot/freeflight/flightdirector/data/FlightData;

    const v2, 0x7f0700b2

    invoke-direct {v1, v8, v2}, Lcom/parrot/freeflight/flightdirector/data/FlightData;-><init>(II)V

    aput-object v1, v0, v8

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mFlightDatas:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->updateView()V

    return-void
.end method

.method public static newInstance()Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;

    invoke-direct {v0}, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;-><init>()V

    .line 61
    .local v0, "fragment":Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;
    return-object v0
.end method

.method private resetParameters()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 154
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->hasManyVideos()Z

    move-result v0

    .line 155
    .local v0, "hasManyVideos":Z
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->setDisplayLocation(Z)V

    .line 156
    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    if-nez v0, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->setDisplayGpsMap(Z)V

    .line 157
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    if-nez v0, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v1, v3}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->setDisplayTelemetry(Z)V

    .line 158
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->setDisplayLogo(Z)V

    .line 160
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->updateView()V

    .line 161
    return-void

    :cond_1
    move v1, v3

    .line 155
    goto :goto_0

    :cond_2
    move v1, v3

    .line 156
    goto :goto_1
.end method

.method private updateView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 164
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getTheme()I

    move-result v0

    .line 165
    .local v0, "theme":I
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mFlightDataAdapter:Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getTheme()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;->setSelectedTheme(I)V

    .line 167
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->hasManyVideos()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mLocationBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mGpsMapBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mTelemetryBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mLocationBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->isDisplayLocation()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 178
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mGpsMapBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->isDisplayGpsMap()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 179
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mTelemetryBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->isDisplayTelemetry()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 180
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mLogoBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->isDisplayLogo()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 181
    return-void

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mLocationBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 173
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mGpsMapBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 174
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mTelemetryBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getTitleRes()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 150
    const v0, 0x7f110210

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
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
    const/4 v6, 0x0

    .line 72
    const v3, 0x7f0c0096

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 75
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0a0161

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 76
    const v3, 0x7f0a015b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mCheckboxLayout:Landroid/view/View;

    .line 77
    const v3, 0x7f0a015d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mLocationBox:Landroid/widget/CheckBox;

    .line 78
    const v3, 0x7f0a015f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mGpsMapBox:Landroid/widget/CheckBox;

    .line 79
    const v3, 0x7f0a0162

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mTelemetryBox:Landroid/widget/CheckBox;

    .line 80
    const v3, 0x7f0a015e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mLogoBox:Landroid/widget/CheckBox;

    .line 83
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mLocationBox:Landroid/widget/CheckBox;

    invoke-static {v3, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 84
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mGpsMapBox:Landroid/widget/CheckBox;

    invoke-static {v3, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 85
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mTelemetryBox:Landroid/widget/CheckBox;

    invoke-static {v3, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 86
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mLogoBox:Landroid/widget/CheckBox;

    invoke-static {v3, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 89
    new-instance v3, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment$1;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment$1;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;)V

    invoke-direct {v3, v4, v5}, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$OnThemeSelectedListener;)V

    iput-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mFlightDataAdapter:Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;

    .line 97
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 98
    .local v1, "manager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v1, v6}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 100
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 101
    new-instance v0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0600de

    sget-object v5, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->HORIZONTAL:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    invoke-direct {v0, v3, v4, v5}, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;-><init>(Landroid/content/Context;ILcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;)V

    .line 103
    .local v0, "itemOffsetDecoration":Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 104
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mFlightDataAdapter:Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 105
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mFlightDataAdapter:Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;

    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mFlightDatas:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;->setItems(Ljava/util/List;)V

    .line 108
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mLocationBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment$2;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment$2;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mGpsMapBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment$3;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment$3;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mTelemetryBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment$4;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment$4;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->mLogoBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment$5;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment$5;-><init>(Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    invoke-direct {p0}, Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;->updateView()V

    .line 139
    return-object v2
.end method
