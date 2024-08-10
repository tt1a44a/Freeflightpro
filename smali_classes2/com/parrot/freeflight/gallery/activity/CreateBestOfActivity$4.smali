.class Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$4;
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
    .line 187
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$4;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$4;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->onBackPressed()V

    .line 191
    return-void
.end method
