.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$4;
.super Ljava/lang/Object;
.source "DroneMemoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$4;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 209
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$4;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$4;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-virtual {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "RETAINED_FRAGMENT_TAG"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$4;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    .line 211
    invoke-static {v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->getSelectedMediaItem()[Lcom/parrot/freeflight/media/model/MediaItem;

    move-result-object v2

    const/4 v3, 0x0

    .line 210
    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->newInstance(Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/MediaItem;I)Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    move-result-object v0

    .line 212
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$4;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->addFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)V

    .line 214
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    return-void
.end method
