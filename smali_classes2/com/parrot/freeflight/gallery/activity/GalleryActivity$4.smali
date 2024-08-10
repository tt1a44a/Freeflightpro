.class Lcom/parrot/freeflight/gallery/activity/GalleryActivity$4;
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
    .line 142
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$4;->this$0:Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$4;->this$0:Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    sget-object v1, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;->BEST_OF:Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->access$200(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;)V

    .line 146
    return-void
.end method
