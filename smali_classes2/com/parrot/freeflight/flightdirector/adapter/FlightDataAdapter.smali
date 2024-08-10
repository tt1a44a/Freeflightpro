.class public Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FlightDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$OnThemeSelectedListener;,
        Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mItems:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightdirector/data/FlightData;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$OnThemeSelectedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSelectedTheme:I
    .annotation build Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder$Theme;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$OnThemeSelectedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$OnThemeSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;->mItems:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;->mListener:Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$OnThemeSelectedListener;

    .line 38
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 59
    check-cast p1, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightdirector/data/FlightData;

    iget v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;->mSelectedTheme:I

    invoke-virtual {p1, v0, v1}, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->setView(Lcom/parrot/freeflight/flightdirector/data/FlightData;I)V

    .line 60
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00a7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;->mListener:Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$OnThemeSelectedListener;

    invoke-direct {v1, v2, v0, v3}, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$OnThemeSelectedListener;)V

    return-object v1
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/flightdirector/data/FlightData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightdirector/data/FlightData;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;->notifyDataSetChanged()V

    .line 44
    return-void
.end method

.method public setSelectedTheme(I)V
    .locals 0
    .param p1, "theme"    # I
        .annotation build Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder$Theme;
        .end annotation
    .end param

    .prologue
    .line 47
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;->mSelectedTheme:I

    .line 48
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;->notifyDataSetChanged()V

    .line 49
    return-void
.end method
