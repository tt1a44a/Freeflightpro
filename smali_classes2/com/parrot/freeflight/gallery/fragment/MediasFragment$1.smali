.class Lcom/parrot/freeflight/gallery/fragment/MediasFragment$1;
.super Ljava/lang/Object;
.source "MediasFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/core/academy/MediaManager$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gallery/fragment/MediasFragment;
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
    .line 69
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$1;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public localMediaUpdated()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$1;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->updateMedias()V

    .line 73
    return-void
.end method
