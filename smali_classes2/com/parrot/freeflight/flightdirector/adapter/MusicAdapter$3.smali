.class Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$3;
.super Ljava/lang/Object;
.source "MusicAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->onBindViewHolder(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

.field final synthetic val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;Lcom/parrot/freeflight/flightdirector/data/MusicItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$3;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    iput-object p2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$3;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$3;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$1300(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$OnMusicInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$3;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$1300(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$OnMusicInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$3;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$OnMusicInteractionListener;->onMusicSelected(Lcom/parrot/freeflight/flightdirector/data/MusicItem;)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$3;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$3;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->setSelectedMusic(Ljava/lang/String;)V

    .line 202
    return-void
.end method
