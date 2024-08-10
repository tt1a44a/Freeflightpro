.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$5;
.super Ljava/lang/Object;
.source "DroneMemoryConfirmTransferFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$5;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$5;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;

    .line 173
    invoke-virtual {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$5;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;

    .line 174
    invoke-static {v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;)[Lcom/parrot/freeflight/media/model/FileItem;

    move-result-object v2

    const/4 v3, 0x2

    .line 172
    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->newInstance(Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/FileItem;I)Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    move-result-object v0

    .line 177
    .local v0, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$5;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;

    invoke-virtual {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->addFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)V

    .line 178
    return-void
.end method
