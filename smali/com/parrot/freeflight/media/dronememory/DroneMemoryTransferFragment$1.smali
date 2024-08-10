.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$1;
.super Ljava/lang/Object;
.source "DroneMemoryTransferFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V

    .line 216
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .line 217
    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .line 218
    invoke-virtual {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .line 220
    invoke-static {v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->access$200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)[Lcom/parrot/freeflight/media/model/FileItem;

    move-result-object v3

    .line 216
    invoke-static {v0, v1, v2, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->checkAndPerformEndTransferAction(ILandroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/FileItem;)V

    .line 222
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)I

    move-result v0

    goto :goto_0
.end method
