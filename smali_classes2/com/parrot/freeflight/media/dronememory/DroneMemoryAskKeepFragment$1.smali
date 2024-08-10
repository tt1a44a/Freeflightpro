.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$1;
.super Ljava/lang/Object;
.source "DroneMemoryAskKeepFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

.field final synthetic val$endAction:I

.field final synthetic val$fileItems:[Lcom/parrot/freeflight/media/model/FileItem;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;I[Lcom/parrot/freeflight/media/model/FileItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

    iput p2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$1;->val$endAction:I

    iput-object p3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$1;->val$fileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$1;->val$endAction:I

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

    invoke-virtual {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$1;->val$fileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    invoke-static {v0, v1, v2, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->checkAndPerformEndTransferAction(ILandroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/FileItem;)V

    .line 75
    return-void
.end method
