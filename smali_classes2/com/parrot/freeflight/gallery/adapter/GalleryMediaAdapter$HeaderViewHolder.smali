.class Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$HeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GalleryMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCountView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTitleView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 223
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 224
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$HeaderViewHolder;->mContext:Landroid/content/Context;

    .line 227
    const v0, 0x7f0a02f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$HeaderViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 228
    const v0, 0x7f0a02fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$HeaderViewHolder;->mCountView:Landroid/widget/TextView;

    .line 231
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$HeaderViewHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$HeaderViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$HeaderViewHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$HeaderViewHolder;->mCountView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 233
    return-void
.end method


# virtual methods
.method public setView(Lcom/parrot/freeflight/gallery/data/GalleryHeader;)V
    .locals 6
    .param p1, "header"    # Lcom/parrot/freeflight/gallery/data/GalleryHeader;

    .prologue
    const/4 v3, 0x1

    .line 236
    iget-object v1, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$HeaderViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gallery/data/GalleryHeader;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {p1}, Lcom/parrot/freeflight/gallery/data/GalleryHeader;->getCount()I

    move-result v1

    if-le v1, v3, :cond_0

    const v0, 0x7f1103ff

    .line 238
    .local v0, "mediaRes":I
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$HeaderViewHolder;->mCountView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$HeaderViewHolder;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/parrot/freeflight/gallery/data/GalleryHeader;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    return-void

    .line 237
    .end local v0    # "mediaRes":I
    :cond_0
    const v0, 0x7f1103f5

    goto :goto_0
.end method
