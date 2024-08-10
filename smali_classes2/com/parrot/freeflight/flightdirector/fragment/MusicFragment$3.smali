.class Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$3;
.super Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;
.source "MusicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->updateMusicList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;
    .param p2, "ref"    # Ljava/lang/Object;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    invoke-direct {p0, p2}, Lcom/parrot/freeflight/flightdirector/util/SoundtrackManager$MediaRequestListener;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 237
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->access$400(Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;)V

    .line 239
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 225
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->access$100(Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->access$100(Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;)Ljava/util/List;

    move-result-object v0

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$3;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->access$200(Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;)V

    .line 233
    :cond_1
    return-void
.end method
