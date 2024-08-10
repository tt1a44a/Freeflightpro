.class Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MomentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private final mHeartLeftView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mHeartRightView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLayerLeftEdge:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLayerRightEdge:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMomentView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 406
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 407
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->mView:Landroid/view/View;

    .line 408
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f0a0319

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->mMomentView:Landroid/widget/ImageView;

    .line 409
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f0a030b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->mHeartLeftView:Landroid/view/View;

    .line 410
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f0a030c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->mHeartRightView:Landroid/view/View;

    .line 411
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f0a030d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->mLayerLeftEdge:Landroid/view/View;

    .line 412
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f0a030e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->mLayerRightEdge:Landroid/view/View;

    .line 413
    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->mMomentView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->mLayerLeftEdge:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->mLayerRightEdge:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->mHeartLeftView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$ViewHolder;->mHeartRightView:Landroid/view/View;

    return-object v0
.end method
