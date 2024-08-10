.class Lcom/parrot/freeflight/gallery/fragment/MediasFragment$3;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "MediasFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$3;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$3;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->access$100(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 150
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 146
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 148
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
