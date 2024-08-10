.class Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder$2;
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

.field final synthetic val$sampleDuration:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;Lcom/parrot/freeflight/flightdirector/data/MusicItem;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder$2;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    iput-object p2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder$2;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    iput p3, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder$2;->val$sampleDuration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder$2;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder$2;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    iget v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder$2;->val$sampleDuration:I

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$1600(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;Lcom/parrot/freeflight/flightdirector/data/MusicItem;I)V

    .line 297
    return-void
.end method
