.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$1;
.super Ljava/lang/Object;
.source "DroneMemoryErrorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

.field final synthetic val$endAction:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

    iput p2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$1;->val$endAction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$1;->val$endAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

    .line 98
    invoke-virtual {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

    const/4 v3, 0x0

    .line 96
    invoke-static {v0, v1, v2, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->checkAndPerformEndTransferAction(ILandroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/FileItem;)V

    .line 102
    return-void

    .line 96
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$1;->val$endAction:I

    goto :goto_0
.end method
