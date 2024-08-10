.class Lcom/parrot/freeflight/gallery/activity/GalleryActivity$2;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gallery/activity/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$2;->this$0:Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$2;->this$0:Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$2;->this$0:Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method
