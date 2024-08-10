.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$5;
.super Ljava/lang/Object;
.source "DroneMemoryDeleteFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->onDeleteSucceeded()V
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
    .line 319
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$5;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 322
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$5;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$5;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$800(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$5;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$5;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-virtual {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$5;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$5;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    .line 324
    invoke-static {v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)[Lcom/parrot/freeflight/media/model/FileItem;

    move-result-object v3

    .line 323
    invoke-static {v0, v1, v2, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->checkAndPerformEndTransferAction(ILandroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/FileItem;)V

    .line 326
    :cond_0
    return-void
.end method
