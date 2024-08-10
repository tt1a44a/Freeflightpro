.class Lcom/parrot/freeflight/gallery/activity/GalleryActivity$3;
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
    .line 129
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$3;->this$0:Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$3;->this$0:Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->access$000(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)Lcom/parrot/freeflight/view/CheckableImageButton;

    move-result-object v2

    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$3;->this$0:Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->access$000(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)Lcom/parrot/freeflight/view/CheckableImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/view/CheckableImageButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/view/CheckableImageButton;->setChecked(Z)V

    .line 134
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$3;->this$0:Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->access$000(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)Lcom/parrot/freeflight/view/CheckableImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/view/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$3;->this$0:Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->access$100(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;->setSelectionMode(I)V

    .line 139
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 132
    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$3;->this$0:Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->access$100(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;->setSelectionMode(I)V

    goto :goto_1
.end method
