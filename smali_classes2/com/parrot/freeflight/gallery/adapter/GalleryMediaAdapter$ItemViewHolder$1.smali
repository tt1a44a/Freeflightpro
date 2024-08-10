.class Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder$1;
.super Ljava/lang/Object;
.source "GalleryMediaAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->setView(Lcom/parrot/freeflight/gallery/data/GalleryMedia;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;

.field final synthetic val$media:Lcom/parrot/freeflight/gallery/data/GalleryMedia;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;ILcom/parrot/freeflight/gallery/data/GalleryMedia;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder$1;->this$0:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;

    iput p2, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder$1;->val$mode:I

    iput-object p3, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder$1;->val$media:Lcom/parrot/freeflight/gallery/data/GalleryMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder$1;->this$0:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->access$000(Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;)Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder$1;->val$mode:I

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder$1;->this$0:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->access$000(Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;)Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder$1;->val$media:Lcom/parrot/freeflight/gallery/data/GalleryMedia;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;->onMediaClicked(Lcom/parrot/freeflight/gallery/data/GalleryMedia;)V

    .line 200
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder$1;->this$0:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->access$100(Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder$1;->this$0:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->access$100(Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder$1;->this$0:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->access$100(Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder$1;->this$0:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->access$000(Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;)Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder$1;->val$media:Lcom/parrot/freeflight/gallery/data/GalleryMedia;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;->addSelection(Lcom/parrot/freeflight/gallery/data/GalleryMedia;)V

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder$1;->this$0:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->access$000(Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;)Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder$1;->val$media:Lcom/parrot/freeflight/gallery/data/GalleryMedia;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;->removeSelection(Ljava/lang/String;)V

    goto :goto_0
.end method
