.class Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$5;
.super Ljava/lang/Object;
.source "CreateBestOfActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 194
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$5;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v1, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$5;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->access$000(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$5;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->access$000(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 199
    .local v0, "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$5;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    iget-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$5;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-static {v2, v0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->newIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->startActivity(Landroid/content/Intent;)V

    .line 201
    .end local v0    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
