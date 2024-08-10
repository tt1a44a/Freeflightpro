.class Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GalleryMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemViewHolder"
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field private final mBestOfView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDurationView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOnClickMediaListener:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPlayButton:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPreviewView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSizeView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 152
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 154
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mContext:Landroid/content/Context;

    .line 156
    iput-object p3, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mOnClickMediaListener:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;

    .line 159
    const v0, 0x7f0a02fa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mPreviewView:Landroid/widget/ImageView;

    .line 160
    const v0, 0x7f0a02f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    .line 161
    const v0, 0x7f0a02f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mPlayButton:Landroid/widget/ImageView;

    .line 162
    const v0, 0x7f0a02f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mBestOfView:Landroid/widget/ImageView;

    .line 163
    const v0, 0x7f0a02f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mDurationView:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f0a02fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mSizeView:Landroid/widget/TextView;

    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mDurationView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mSizeView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;)Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mOnClickMediaListener:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private setMode(I)V
    .locals 2
    .param p1, "mode"    # I
        .annotation build Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$SelectionMode;
        .end annotation
    .end param

    .prologue
    .line 206
    iget-object v1, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 207
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 210
    :cond_0
    return-void
.end method


# virtual methods
.method setView(Lcom/parrot/freeflight/gallery/data/GalleryMedia;I)V
    .locals 8
    .param p1, "media"    # Lcom/parrot/freeflight/gallery/data/GalleryMedia;
    .param p2, "mode"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mDurationView:Landroid/widget/TextView;

    sget-object v3, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->getDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mSizeView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->getSize()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Lcom/parrot/freeflight/media/MediaSizeUtils;->getSizeText(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 176
    invoke-virtual {p1}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mPreviewView:Landroid/widget/ImageView;

    .line 177
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 180
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mDurationView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mPlayButton:Landroid/widget/ImageView;

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mBestOfView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->isBestOfSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->setMode(I)V

    .line 185
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mOnClickMediaListener:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mOnClickMediaListener:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;->isMediaSelected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 187
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder$1;-><init>(Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;ILcom/parrot/freeflight/gallery/data/GalleryMedia;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    return-void

    :cond_2
    move v0, v2

    .line 180
    goto :goto_0

    :cond_3
    move v0, v2

    .line 181
    goto :goto_1
.end method
