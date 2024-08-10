.class Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FlightDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlightDataViewHolder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$OnThemeSelectedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mNameView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRootView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$OnThemeSelectedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$OnThemeSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 88
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->mContext:Landroid/content/Context;

    .line 89
    const v0, 0x7f0a0163

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->mRootView:Landroid/view/View;

    .line 90
    const v0, 0x7f0a015c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 91
    const v0, 0x7f0a0160

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->mNameView:Landroid/widget/TextView;

    .line 93
    iput-object p3, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->mListener:Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$OnThemeSelectedListener;

    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;)Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$OnThemeSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->mListener:Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$OnThemeSelectedListener;

    return-object v0
.end method


# virtual methods
.method setView(Lcom/parrot/freeflight/flightdirector/data/FlightData;I)V
    .locals 5
    .param p1, "flightData"    # Lcom/parrot/freeflight/flightdirector/data/FlightData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "selectedTheme"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 99
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/FlightData;->getTheme()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 101
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/FlightData;->getImageRes()I

    move-result v0

    if-lez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/FlightData;->getImageRes()I

    move-result v3

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :goto_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder$1;-><init>(Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;Lcom/parrot/freeflight/flightdirector/data/FlightData;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void

    :cond_0
    move v0, v1

    .line 99
    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/FlightData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/FlightDataAdapter$FlightDataViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
