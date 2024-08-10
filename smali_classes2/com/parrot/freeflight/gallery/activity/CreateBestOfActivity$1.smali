.class Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$1;
.super Ljava/lang/Object;
.source "CreateBestOfActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/academy/MediaManager$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$1;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public localMediaUpdated()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$1;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->updateMedias()V

    .line 88
    return-void
.end method
