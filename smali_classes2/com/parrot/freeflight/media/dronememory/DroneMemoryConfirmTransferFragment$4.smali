.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$4;
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
    .line 163
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$4;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment$4;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 167
    return-void
.end method
