.class public Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MusicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$OnMusicInteractionListener;,
        Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;,
        Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$RecyclerViewListener;,
        Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field private final mContext:Landroid/content/Context;
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
            "Lcom/parrot/freeflight/flightdirector/data/MusicItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$OnMusicInteractionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPlayer:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRecyclerViewListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSampleDuration:I

.field private mSelectedMusic:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "m:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mItems:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;-><init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mPlayer:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    .line 66
    new-instance v0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$RecyclerViewListener;

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$RecyclerViewListener;-><init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mRecyclerViewListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 67
    return-void
.end method

.method static synthetic access$1000(IID)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # D

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->calculateDurationStr(IID)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    .prologue
    .line 37
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mSampleDuration:I

    return v0
.end method

.method static synthetic access$1200(DI)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # I

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->calculateDurationStrRight(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$OnMusicInteractionListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mListener:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$OnMusicInteractionListener;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$1700(DID)D
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # I
    .param p3, "x2"    # D

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->millisecondsToPixels(DID)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mPlayer:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$600(DID)D
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # I
    .param p3, "x2"    # D

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->pixelsToMilliseconds(DID)D

    move-result-wide v0

    return-wide v0
.end method

.method private static calculateDurationStr(IID)Ljava/lang/String;
    .locals 4
    .param p0, "pixels"    # I
    .param p1, "totalWidth"    # I
    .param p2, "totalMs"    # D

    .prologue
    .line 112
    int-to-double v2, p0

    invoke-static {v2, v3, p1, p2, p3}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->pixelsToMilliseconds(DID)D

    move-result-wide v0

    .line 113
    .local v0, "totalSecs":D
    sget-object v2, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static calculateDurationStrRight(DI)Ljava/lang/String;
    .locals 4
    .param p0, "startTime"    # D
    .param p2, "sampleDuration"    # I

    .prologue
    .line 117
    sget-object v0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    int-to-double v2, p2

    add-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static millisecondsToPixels(DID)D
    .locals 4
    .param p0, "seconds"    # D
    .param p2, "totalWidth"    # I
    .param p3, "totalMs"    # D

    .prologue
    .line 108
    div-double v0, p0, p3

    int-to-double v2, p2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static pixelsToMilliseconds(DID)D
    .locals 2
    .param p0, "pixels"    # D
    .param p2, "totalWidth"    # I
    .param p3, "totalMs"    # D

    .prologue
    .line 104
    int-to-double v0, p2

    div-double v0, p0, v0

    mul-double/2addr v0, p3

    return-wide v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 214
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mRecyclerViewListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 216
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->onBindViewHolder(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 131
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->getAdapterPosition()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    .line 133
    .local v2, "item":Lcom/parrot/freeflight/flightdirector/data/MusicItem;
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mPlayer:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->getItemPosition()I

    move-result v5

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->getAdapterPosition()I

    move-result v6

    if-ne v5, v6, :cond_1

    move v0, v3

    .line 135
    .local v0, "isPlayable":Z
    :goto_0
    iget v6, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mSampleDuration:I

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mPlayer:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-virtual {v5}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    :goto_1
    invoke-virtual {p1, v2, v6, v5}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->setView(Lcom/parrot/freeflight/flightdirector/data/MusicItem;IZ)V

    .line 137
    if-eqz v0, :cond_0

    .line 138
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mPlayer:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-static {p1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$200(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->setLayout(Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;)V

    .line 141
    :cond_0
    rem-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_3

    .line 142
    invoke-static {p1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$300(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f050129

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 147
    :goto_2
    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mSelectedMusic:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mSelectedMusic:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v3

    .line 148
    .local v1, "isSelected":Z
    :goto_3
    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->setSelected(Z)V

    .line 150
    invoke-static {p1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$200(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    move-result-object v3

    new-instance v4, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;

    invoke-direct {v4, p0, p1, v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;-><init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;Lcom/parrot/freeflight/flightdirector/data/MusicItem;)V

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->setOnPlayButtonClickListener(Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnPlayButtonClickListener;)V

    .line 172
    invoke-static {p1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$200(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    move-result-object v3

    new-instance v4, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;

    invoke-direct {v4, p0, v2, p1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;-><init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;Lcom/parrot/freeflight/flightdirector/data/MusicItem;Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)V

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->setOnProgressChangeListener(Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnProgressChangeListener;)V

    .line 195
    new-instance v3, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$3;

    invoke-direct {v3, p0, v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$3;-><init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;Lcom/parrot/freeflight/flightdirector/data/MusicItem;)V

    invoke-virtual {p1, v3}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    return-void

    .end local v0    # "isPlayable":Z
    .end local v1    # "isSelected":Z
    :cond_1
    move v0, v4

    .line 133
    goto :goto_0

    .restart local v0    # "isPlayable":Z
    :cond_2
    move v5, v4

    .line 135
    goto :goto_1

    .line 144
    :cond_3
    invoke-static {p1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$300(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    move v1, v4

    .line 147
    goto :goto_3
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00a8

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mPlayer:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->recycle()V

    .line 90
    return-void
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
            "Lcom/parrot/freeflight/flightdirector/data/MusicItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/flightdirector/data/MusicItem;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$OnMusicInteractionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$OnMusicInteractionListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mListener:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$OnMusicInteractionListener;

    .line 98
    return-void
.end method

.method public setSampleDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mSampleDuration:I

    .line 85
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->notifyDataSetChanged()V

    .line 86
    return-void
.end method

.method public setSelectedMusic(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 79
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mSelectedMusic:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->notifyDataSetChanged()V

    .line 81
    return-void
.end method

.method public stopPlayer()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->mPlayer:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->stop()V

    .line 94
    return-void
.end method
