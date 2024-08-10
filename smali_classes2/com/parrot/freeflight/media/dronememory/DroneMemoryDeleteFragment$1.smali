.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$1;
.super Ljava/lang/Object;
.source "DroneMemoryDeleteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V

    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-virtual {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-static {v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)[Lcom/parrot/freeflight/media/model/FileItem;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->checkAndPerformEndTransferAction(ILandroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/FileItem;)V

    .line 128
    return-void
.end method
