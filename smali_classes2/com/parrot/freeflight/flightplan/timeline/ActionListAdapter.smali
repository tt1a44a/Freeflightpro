.class public Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ActionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActions:[Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mListener:Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;)V
    .locals 5
    .param p1, "actions"    # [Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;->mListener:Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;

    .line 25
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;->mActions:[Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    .line 27
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;->mActions:[Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 28
    .local v0, "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    invoke-interface {p2}, Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;->getProductCharacteristics()Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->initDefaultValues(Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;)Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;->mListener:Lcom/parrot/freeflight/flightplan/timeline/ITimelineActionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;)[Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;->mActions:[Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    return-object v0
.end method


# virtual methods
.method public getActionIndex(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)I
    .locals 7
    .param p1, "timelineAction"    # Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "index":I
    iget-object v4, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;->mActions:[Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 54
    .local v0, "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 57
    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .end local v1    # "index":I
    :goto_1
    return v1

    .line 55
    .restart local v0    # "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    :cond_1
    move v1, v2

    .line 57
    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;->mActions:[Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;->onBindViewHolder(Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 41
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;->mActions:[Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;->refresh(Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;)V

    .line 44
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00f6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter$ActionViewHolder;-><init>(Lcom/parrot/freeflight/flightplan/timeline/ActionListAdapter;Landroid/view/View;)V

    return-object v1
.end method
