.class Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment$3;
.super Ljava/lang/Object;
.source "MyBestOfFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$BestOfRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->updateMedias()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment$3;->this$0:Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gallery/data/GalleryMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gallery/data/GalleryMedia;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment$3;->this$0:Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment$3;->this$0:Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment$3;->this$0:Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->access$200(Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment$3;->this$0:Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->access$302(Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;Ljava/util/List;)Ljava/util/List;

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment$3;->this$0:Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->access$400(Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;)V

    .line 216
    :cond_0
    return-void
.end method
