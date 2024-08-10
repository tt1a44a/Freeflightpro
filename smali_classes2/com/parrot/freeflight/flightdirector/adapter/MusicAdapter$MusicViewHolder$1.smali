.class Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder$1;
.super Ljava/lang/Object;
.source "MusicAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->setView(Lcom/parrot/freeflight/flightdirector/data/MusicItem;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

.field final synthetic val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;Lcom/parrot/freeflight/flightdirector/data/MusicItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder$1;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    iput-object p2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder$1;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 285
    const-class v0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder$1;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Post Width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder$1;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$300(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder$1;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder$1;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$1500(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;Lcom/parrot/freeflight/flightdirector/data/MusicItem;)V

    .line 287
    return-void
.end method
